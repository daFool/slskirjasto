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

 class Model {
    /** @var object $db Tietokantaolio mallia PDO **/
    protected $db;
    /** @var object $dbc Tietokantaolio mallia SLS Database **/
    protected $dbc;
    
    /** @var string $perustaulu Mitä taulua tämä instanssi operoi **/
    protected $perustaulu;
    
    /** @var array $cache   Viimeksi taulusta luettu rivi **/
    protected $cache;
    
    /** @var boolean $empty Onko cachessa tavaraa? **/
    protected $empty;
    
    /** @var array $hakukentat DataTables haun sarakkeet **/
    protected $hakukentat;
    
    /**
     * Konstruktori
     * 
     * @param object $db            Tietokantaolio mallia SLS Database
     * @param string $perustaulu    Otuksen perustaulu
     * @param array $avain          Avainkenttien nimet
     * @param array $uniikki        Uniikkien kenttien nimet
     * @param array $hakukentat     Mitä sarakkeita voi käyttää tauluhaussa?
     * 
     * */
    public function __construct($db, $perustaulu, $avain, $uniikki, $hakukentat) {
        $this->db =$db->getHandle();
        $this->dbc = $db;
        $this->perustaulu=$perustaulu;
        $this->avain = $avain;
        $this->uniikki=$uniikki;
        $this->hakukentat=$hakukentat;
    }
    
    /*
     * Tarkistetaan onko entuudestaan olemassa
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
            print_r($s);
            print_r($d);
            die("Kantavirhe {$e->getMessage()}");
        }
    }

      /**
     * Tyhjätään cache
     * */
    protected function clear() {
        $this->cache = array();
        $this->empty=true;
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
     * @return mixed false jos epäonnistui true, jos onnistui
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
                $this->dbc->log("Tapahtuman poistaminen ilman avainta ei ole viisasta: $s",__FILE__,__METHOD__,__LINE__,"ERROR");
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
    
 }
 
?>