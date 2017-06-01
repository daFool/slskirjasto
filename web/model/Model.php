<?php
/**
 * Tietomallien pohjaluokka
 *
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 *
 * */
/**
 * Yhteiset perusoperaatiot tauluille
 *
 * Useampi luokka perii tämän luokan toiminnallisuuden
 * */
 class Model {
    /** @var object Tietokantaolio mallia PDO **/
    protected $db;
    
    /** @var object Tietokantaolio mallia SLS Database **/
    protected $dbc;
    
    /** @var string Mitä taulua tämä instanssi operoi **/
    protected $perustaulu;
    
    /** @var array  Viimeksi taulusta luettu rivi **/
    protected $cache;
    
    /** @var boolean Onko cachessa tavaraa? **/
    protected $empty;
    
    /** @var array  DataTables haun sarakkeet **/
    protected $hakukentat;
    
    /** @var array $avain Taulun avain **/
    protected $avain;
    
    /** @var array $uniikit Taulun uniikit **/
    protected $uniikit;
    
     /**
     * Käsittelee pdo-virheen
     * @param object $o joko PDO-objekti tai PDOStatement objekti
     * @param string $s virheen aiheuttanut sql-kysely
     * @throws Exception 
     * */
    protected function pdoError($o, $s) {        
        $error = $o->errorInfo();
        $msg = sprintf("Start failed (%s, %s, %s) to parse: '$s'!\n",
                        $error[0], $error[1], $error[2]);
        throw new \Exception($msg);
    }
    
    
    /**
     * SQL-lauseen prepare virheenkäsittelyllä
     * @param string $s SQL-lause, joka preparoidaan
     * @return object PDO::Statement-objekti
     * @uses pdoError()
     * @throws Exception tai oikeammin pdoError heittää poikkeuksen
     * */
    protected function pdoPrepare($s) {                
        $st = $this->db->prepare($s);
        if($st===False) {
            $this->pdoError($db, $s);
        }
        return $st;
    }
    
    /**
     * Tyhjätään cache
     * @return void
     * */
    protected function clear() {
        $this->cache = array();
        $this->empty=true;
    }
    
     /**
     * "Avaimen" purkaminen sarake-datasta
     * @param array $data Sarake-data, mistä avainta etsitään,
     * @return mixed Boolean=false, mikäli ei löytynyt avainta ja array, jossa on where-ehto, positio ja avainsarakkeet arvoineen
     * */
    protected function getKey($data) {
        $i=0;
        $nullrex="/\w*NULL\w*/";
        foreach($this->avaimet as $avain=>$sarakkeet) {
            $w = "";
            $d = array();
            $i++;
     
            $found=False;
            $all=True;
            if(is_array($sarakkeet)) {
                foreach($sarakkeet as $sarake) {
                    if(isset($data[$sarake]) && $data[$sarake]!="" && !preg_match($nullrex, $data[$sarake])) {
                        $d[$sarake]=$data[$sarake];
                        if($w=="") {
                            $w="where {$sarake}:={$sarake}";
                        } else {
                            $w.=" and {$sarake}:={$sarake}";
                        }
                        $found=True;
                    }
                    else {
                        $all=False;
                        break;
                    }
                }
                if($all && $found) {
                    $r = array("d"=>$d, "w"=>$w);
                    return $r;
                }
            }
            else {
                if(isset($data[$sarakkeet]) && $data[$sarakkeet]!="" && !preg_match($nullrex, $data[$sarakkeet])) {
                    $d[$sarakkeet]=$data[$sarakkeet];
                    $w="where {$sarakkeet}:={$sarakkeet}";
                    $r = array("d"=>$d, "w"=>$w);
                    return $r;
                }
            }
        }
        return False;        
    }
   
    
    /**
     * Konstruktori
     * 
     * @param object $db            Tietokantaolio mallia SLS Database
     * @param string $perustaulu    Otuksen perustaulu
     * @param array $avain          Avainkenttien nimet, tai avaimet
     * @param array $uniikit        Uniikkien kenttien nimet
     * @param array $hakukentat     Mitä sarakkeita voi käyttää tauluhaussa?
     * 
     * */
    public function __construct($db, $perustaulu, $avain, $uniikit, $hakukentat) {
        $this->db =$db->getHandle();
        $this->dbc = $db;
        $this->perustaulu=$perustaulu;
        $this->avain = $avain;
        $this->uniikit=$uniikit;
        $this->hakukentat=$hakukentat;
    }
    
    /**
     * Tarkistetaan onko entuudestaan olemassa
     *
     * Käydään lävitse $avaimet siinä järjestyksessä kuin ne on objektia alustettaessa luotu,
     * joille $datassa on arvo. Heti kun löytyy yksi osuma, lopetetaan löytymiseen, jos löytyy useampia kerralla, todetaan
     * että taulun eheys on rikki, mutta palautetaan silti true. Jos taas cols on olemassa, niin etsitään sen määrittelemillä sarakkeilla.
     * @param array $data Tarkistettavat tiedot
     * @param array $cols Vaihtoehtoisesti tarkistettavat sarakkeet
     * @return boolean  False, jos on olemassa, True jos ei ole olemassa
     **/ 
    public function exists($data, $cols=false) {
        try {
      
            $found=false;
            $this->clear();
          
            if($cols !==false) {
                $avaimet = $cols;
            }
            else {
                if($this->uniikki!==false)
                    $avaimet=array_merge($this->avain, $this->uniikki);
                else
                    $avaimet=$this->avain;
            }
            foreach($avaimet as $avain) {
                if(isset($data[$avain])) {
                    $s = "select * from {$this->perustaulu} where ";
                    $d = array();
                    $s.="$avain=:$avain;";
                    $d[$avain]=$data[$avain];
                    $st = $this->db->prepare($s);
                    $st->execute($d);            
                    $rows = $st->fetchAll(PDO::FETCH_ASSOC);
                    if(count($rows)>1) {
                        $m="Eheys on rikki? {$this->perustaulu} ($s):".count($rows);
                        $this->dbc->log($m, __FILE__, __METHOD__,__LINE__,"ERROR");
                        return true;
                    }
                    if(count($rows)==0)
                        continue;
                    $this->cache = $rows[0];
                    $this->empty = false;
                    return true;
              }
            }
            return false;                    
        }
        catch(PDOException $e) {
            die("Kantavirhe {$e->getMessage()}");
        }
    }

    
    
    /**
     * Löytyykö puskurista?
     * @return boolean true jos jotakin löytyy
     * */
    public function has() {
        return !$this->empty;
    }
    
    /**
     * Data puskurista
     * @return array Puskurin sisältö
     * */
    public function give() {
        return $this->cache;
    }

    /**
     * Onko taululle merkitty tämä kenttä avaimeksi
     * @param string $avain Oletetun avainkentän nimi.
     * */
    private function hasKey($avain) {
        foreach($this->avain as $arvo) {
            if($avain==$arvo)
                return true;
        }
        
        return false;
    }
     /**
     * Lisätään tai päivitetään rivi
     * @param array $data rivi
     * @return mixed false jos epäonnistui ja lisätty tai päivitetty rivi, jos onnistui
     * @uses SLSDB::log()
     * @uses Model::hasKey()
     * @uses Model::exists()
     * 
     * */
    public function upsert($data) {
        try {
            global $db;
            $d=array();
            
            if($this->exists($data)) {
                $s = "update {$this->perustaulu} set muokattu=now()";
                foreach($data as $key=>$value) {
                    if($this->hasKey($key))
                        continue;
                    $s.=",$key=:$key";
                    $d[$key]=$value;
                }
                $s.=" where ";
                foreach($this->avain as $key) {
                    $s.="$key=:$key";
                    $d[$key]=$data[$key];
                }
            } else {
                $s1="insert into {$this->perustaulu} (lisatty ";
                $s2=" values (now()";
                foreach($data as $key=>$value) {
                    if($key=="lisatty" || $key=="muokattu")
                        continue;
                    $s1.=", $key";
                    $s2.=", :$key";
                    $d[$key]=$data[$key];
                }
                $s = $s1.")".$s2.");";
            }
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
            if($res===false) {
                $m = "$s ".serialize($d)." failed?";
                $this->dbc->log($m, __FILE__,__METHOD__,__LINE__,"ERROR");
                return false;
            }
            return $this->exists($data);
        }
        catch(PDOException $e) {
            die("Tietokantavirhe {$e->getMessage()}");
        }
    }
    
    /**
     * Rivin poistaminen taulusta
     * @param array $data Avainten arvot
     * @return boolean True jos poistui, false jos meni kätöseen
     * @uses SLSDB::log()
     * */
    public function delete($data) {
        try {
            $s = "delete from {$this->perustaulu} where ";
            $d=array();
            $f=false;
            foreach($data as $avain=>$arvo) {
                foreach($this->avain as $v) {
                    if($v==$avain) {
                        $s.="$avain = :$avain";
                        $d[$avain]=$arvo;
                        $f=true;
                    }
                }
            }
            if($f===false) {
                $this->dbc->log("Rivin poistaminen ilman avainta ei ole viisasta: $s",__FILE__,__METHOD__,__LINE__,"ERROR");
                return false;
            }
            $st = $this->db->prepare($s);
            return $st->execute($d);
        }
        catch(PDOException $e) {
            die("Tietokantavirhe");
        }
    }
    
    /**
     * Tauluhaku Datatablesia silmällä pitäen
     * @param int $start Mistä rivistä aloitetaan
     * @param int $length Montako riviä haetaan
     * @param string $order Hakukenttä ja suunta
     * @param string $search Haettava merkkijono
     * @param string $sw Lisähakuehto
     * @return mixed False jos mitään ei löytynyt tai taulu tuloksia
     * */
    public function tableFetch($start, $length, $order, $search, $w=false) {
        global $db;
        $log=$this->dbc;
        
        if($w!==false && $w["w"]!="") {
            $so=$w["w"];
            if(isset($search["value"]) && $search["value"]!="")
                $so.=" and (";
            $gb=$w["gb"];
        }
        else {
            if(isset($search["value"]) && $search["value"]!="")
                $so =" where (";
            else
                $so ="";
            $gb="";
        }
        $d=array();
        $kuka = isset($_SESSION["user"]) ? $_SESSION["user"] : "system";
        try {
            $ds = false;
            $d = array();     
            $tulos = array("lkm"=>0, "rivit"=>array(), "riveja"=>0, "filtered"=>0);
            
            $s = "select count(*) as lkm from ".$this->perustaulu;
            $st = $this->db->prepare($s);
            $res = $st->execute();
            if(!$res || $st->rowCount()==0)
                return $tulos;
            
            $rivi = $st->fetch(PDO::FETCH_ASSOC);
            $tulos["lkm"]=$rivi["lkm"];
            $tulos["filtered"]=$rivi["lkm"];
            
            $o="";
            $v="";
            
            if(isset($search["value"]) && $search["value"]!="") {
               $v=$search["value"];
               $f=true;
               foreach($this->hakukentat as $kentta) {
                    if(!$f)
                        $so.=" or ";
                    $f=false;
                    switch($kentta["tyyppi"]) {
                        case "string":
                            $so.=$kentta["nimi"]." ~* ".$this->db->quote($v, PDO::PARAM_STR);
                            break;
                        case "int":
                            $so.=$kentta["nimi"]." = ".$this->db->quote($v, PDO::PARAM_INT);
                            break;
                       case "date":
                            $so.=$kentta["nimi"]." = ".$this->db->quote($v, PDO::PARAM_STR);
                            break;                        
                    }
               }
               $so.=") ";
               $ds = true;
               $d["v"]=$v;
            }
            $s1= "select * from ".$this->perustaulu;
            // $s2 = " limit :length offset :start;";
            $s2 = " limit $length offset $start;";
            $o="";
            if($order!==false) {
                $o = " order by $order ";                
            }
            $s = "$s1$so$o$s2";
            $m = "$s";
            $st = $this->db->prepare($s);
            $res = $st->execute();
            if($res===false || $st->rowCount()==0)
            {
                $log->log($m, __FILE__,__METHOD__,__LINE__,"ERROR");
                $tulos["filtered"]=0;
                return $tulos;
            }
            $rivit = $st->fetchAll(PDO::FETCH_ASSOC);
                              
            $tulos["rivit"]=$rivit;
            $tulos["riveja"]=count($rivit);
            
            if($ds) {
                $s1 = "select count(*) as lkm from ".$this->perustaulu;
                $s = "$s1$so$gb";
                $st=$this->db->prepare($s);
                $res = $st->execute();
                if($res==false || $st->rowCount()==0)
                {
                    $m="$s";
                    $log->log($m, __FILE__,__METHOD__,__LINE__,"ERROR");
                    return $tulos;
                }
            
                $rivi = $st->fetch(PDO::FETCH_ASSOC);
                $tulos["filtered"]=$rivi["lkm"];        
            }    
            return $tulos;
        }
        catch(PDOException $e) {
            die("Ohjelmointivirhe {$e->getMessage()}");
        }
    }
    
    /**
     * Hakee yhden rivin avaimella
     * @param string $avain-kenttä
     * @param mixed $value Avaimen arvo
     * @return mixed False jos ei löytynyt, muutoin rivin tiedot
     * */
    public function one($avain, $value) {
        try {
            $found = false;
            foreach($this->avain as $a) {
                if($avain==$a)
                    $found=true;
            }
            if(!$found)
                return false;
            $s = "select * from {$this->perustaulu} where $avain=:value;";
            $d = array("value"=>$value);
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
            if($res===false || $st->rowCount()!=1)
                return false;
            $r = $st->fetch(PDO::FETCH_ASSOC);
            return $r;
        }
        catch(PDOException $e) {
            $this->dbc->log($e->getMessage(),__FILE__,__METHOD__,__LINE__,"ERROR");
            return false;
        }
    }
 }
 
?>