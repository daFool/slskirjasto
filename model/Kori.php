<?php
/**
 * Pelikori
 * 
 * @package SLS-Kirjasto
 * @subpackage Kori
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 **/

 /**
  * Pelikori
  *
  * Sisältää käyttäjän koriin valitsemat pelit, mahdollisesti jopa eri kokoelmista.
  *
  * Korilla on nimi ja omistaja. Koria jäljitetään $_SESSION['kori'] ja $_COOKIE[KORIPIPARI] muuttujilla,
  * session.php:ssa asetetaan pipariin sen korin id, joka on kulloinkin asetettuna session koriksi. Session.php
  * ladataan lähes jokaisen sivunlatauksen yhteydessä.
  * 
  * Koriin kuuluu kaksi relaatiota, toisessa on korin perustiedot ja toisessa korin pelit.
  * 
  * _*Kori*_
  * <pre>
  * | Sarake     | Tyyppi     | Selitys                                    |
  * +------------+------------+--------------------------------------------+
  * | id         | int        | Korin avain                                |
  * | omistaja   | varchar    | Vierasavain kayttajaan, korin omistaja     |
  * | paivitetty | timestamp  | Koska kori on viimeksi päivitetty          |
  * | lisatty    | timestamp  | Koska kori on lisätty                      |
  * | nimi       | varchar    | Korin nimi                                 |
  * </pre>
  * _*Korinpelit*_
  * <pre>
  * | Sarake | Tyyppi  | Selitys                                    |
  * +--------+---------+--------------------------------------------+
  * | id     | int     | Vierasavain koriin, kori johon peli kuuluu |
  * | peli   | varchar | Vierasavain peliin, peli korissa           |
  * </pre>
  * @uses Model
  * */
class Kori extends Model {
    /**
     * @var array Kori-relaation rivi
     * */
    private $kori;
    /**
     * Konstruktori
     * 
     * @param object $db database handle
     * **/
    public function __construct($db) {
        parent::__construct($db, "kori", array("id", "nimi"), false, array("id"=>"int", "omistaja"=>"string", "peli"=>"string", "paivitetty"=>"date", "nimi"=>"string"));
        $this->kori=false;
    }
    
    /**
     * Luo uuden korin
     *
     * Sekä lisää pelin uuteen koriin. Jos samalla nimellä on olemassa kori, kasvattaa numeroa nimen perässä
     * kunnes korin nimi on uniikki.
     * 
     * @param string $omistaja Korin omistaja
     * @param string $peli Koriin lisättävä peli
     * @return boolean
     * @uses RandomWordID::RandomWordID() RandomWordID::RandomWordID() Luokka korin nimeämiseen
     * @uses \RandomWordID::give() RandomWordID::give() Satunnainen korin nimi
     * @uses \Model::give() Model::give() Lisätyn koririvin noutaminen
     * @uses \Model::exists() Model::exists() Onko tällä nimellä jo kori olemassa
     * **/
     public function luoKori($omistaja, $peli) {
        try {
            global $_SESSION;
            
            $rd = new RandomWordID(WORDLIST);
            $nimi = $rd->give($rd->give());
            $data = array();
            $data["nimi"]=$nimi;
            $i=1;
            while($this->exists($data)) {
                $data["nimi"]=sprintf("%s%02d", $nimi, $i);
                $i++;
                if($i>99) {
                    $i=1;
                    $nimi = $rd->give($nimi);
                }
            }
            if($omistaja != "")
                $data["omistaja"]=$omistaja;
            if($this->upsert($data)===false) {
                return false;
            }
            $kori = $this->give();
            $s = "insert into KorinPelit (id, peli) values (:id, :peli);";
            $st = $this->db->prepare($s);
            $d = array("id"=>$kori["id"], "peli"=>$peli);
            $res = $st->execute($d);
            $_SESSION["kori"]=$kori["id"];
            return $res;
        }
        catch(PDOException $pe) {
            die("Kantavirhe {$pe->getMessage()}");
        }
     }
    
    /**
     * Vaihtaa käsittelyssä olevaa koria
     * @param string $id Uuden korin tunniste
     * @return void
     * */
    public function asetaKori($id) {
        $this->kori=$id;
        if(isset($_SESSION["kori"]))
            $_SESSION["kori"]=$id;
    }
    /**
     * Korin aikalaiman päivittäminen
     * @param int $ID korin tunniste
     * */
    protected function paivataKori($ID) {
        try {
            $s = "update Kori set paivitetty=now() where id=:id;";
            $st = $this->db->prepare($s);
            $st->execute(array("id"=>$ID));
            return;
        }
        catch(PDOException $pe) {
            die("Kantavirhe {$pe->getMessage()}");            
        }
    }
    /**
     * Pelin lisääminen koriin
     * @param int $ID Korin tunniste
     * @param string $peli Lisättävä peli
     * @return boolean Onnistuiko
     * @uses \SLSDB::log()
     * */
    public function lisaaPeli($ID, $peli) {
        try {            
            $s = "insert into KorinPelit(id, peli) values(:id, :peli);";
            $d = array("id"=>$ID, "peli"=>$peli);
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
            $this->paivataKori($ID);
            $this->dbc->log("$peli lisättiin koriin $ID",__FILE__,__METHOD__,__LINE__,"Audit");
            return $res;
        }
        catch(PDOException $pe) {
            die("Kantavirhe {$pe->getMessage()}");
        }
    }
    
    /**
     * Pelin poistaminen korista
     * @param int $ID Korin tunniste
     * @param string $peli Lisättävä peli
     * @param boolean $kaikki, poistetaanko kaikki?
     * @return boolean Onnistuiko poisto?
     * @uses \SLSDB::log()
     * */
    public function poistaPeli($ID, $peli, $kaikki) {
        try {
            if($kaikki) {
                $s = "delete from KorinPelit where id=:id;";
                $d = array("id"=>$ID);
            } else {
                $s = "delete from KorinPelit where id=:id and peli=:peli;";
                $d = array("id"=>$ID, "peli"=>$peli);
            }
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
            $this->paivataKori($ID);
            if($kaikki)
                $this->dbc->log("Kaikki pelit poistettiin korista $ID",__FILE__,__METHOD__,__LINE__,"Audit");
            else
                $this->dbc->log("$peli poistettiin korista $ID",__FILE__,__METHOD__,__LINE__,"Audit");
            return $res;
        }
        catch(PDOException $pe) {
            die("Kantavirhe {$pe->getMessage()}");
        }
    }
    
    /**
     * Hae korin pelit
     * @param int $ID korin tunniste
     * @return array korin pelit
     * */
    public function haeKorinPelit($ID) {
        try {
            $s = "select k.kokoelma, pt.* from
                    KorinPelit as kp
                join
                    vPelinTila as pt
                on (kp.id=:id and kp.peli=pt.pt_tunniste)
                join
                    kokoelmapeli as k
                on (pt.pt_tunniste=k.tunniste);";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("id"=>$ID));
            $rows = $st->fetchAll(PDO::FETCH_ASSOC);
            if(is_array($rows)) {
                return $rows;
            }
            $rows[0]=$rows;
            return $rows;
        }
        catch(PDOException $pe) {
            die("Kantavirhe {$pe->getMessage()}");
        }
    }
    
      /**
     * Korin pelien haku datatables
     * @param int $start Mistä rivistä aloitetaan
     * @param int $length Montako riviä haetaan
     * @param string $order Hakukenttä ja suunta
     * @param string $search Haettava merkkijono
     * @return mixed False jos mitään ei löytynyt tai taulu tuloksia
     * */
    public function tableFetchGames($start, $length, $order, $search) {
        global $db;
        $log=$this->dbc;
        
        $tulos = array("lkm"=>0, "rivit"=>array(), "riveja"=>0, "filtered"=>0);
        
        if($this->kori===false)
            return $tulos;
        
        $so = " where koriID=:id";
        if(isset($search["value"]) && $search["value"]!="")
            $so =" and (";
        
        $d=array();
        $kuka = isset($_SESSION["user"]) ? $_SESSION["user"] : "system";
        try {
            $ds = false;
            $d = array();     
            
            
            $s = "select count(*) as lkm from vkorinpelit where koriID=:id;";
            
            $d["id"]=$this->kori;
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
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
               $hakukentat=array("nimi"=>"string", "tunniste"=>"string");
               foreach($hakukentat as $kentta) {
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
            $s1= "select tunniste, nimi, hylly, paikka, omistaja, tila, kokoelma from vkorinpelit";
            $s2 = " limit $length offset $start;";
            $o="";
            if($order!==false) {
                $o = " order by $order ";                
            }
            $s = "$s1$so$o$s2";
            $m = "$s";
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
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
                $s1 = "select * from vKorinpelit";
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
     * Etsitään koria
     *
     * Jos parametreistä jompi kumpi tai molemmat on annettu, etsitään ensin
     * niillä. Jos kumpaakaan ei olle annettu katsotaan ensin istunnosta ja sitten
     * evästeestä, josko jommassa kummassa olisi annettu korin tunniste.
     * 
     * @param string $omistaja Kirjautunut käyttäjä tahi false
     * @param string $nimi Korin nimi tahi false
     * @return mixed Korin tunniste, jos löytyi ja false jos ei. **/
    public function koriPallo($omistaja=false, $nimi=false) {
        global $_SESSION;
        global $_COOKIE;
               
        if($omistaja!==false || $nimi!==false) {
            $d = array();
            if($omistaja!==false) {
                $d["omistaja"]=$omistaja;
            }
            if($nimi!==false) {
                $d["nimi"]=$nimi;
            }
            if($this->exists($d)) {
                $kori = $this->give();
                $_SESSION["kori"]=$kori["id"];
                return $_SESSION["kori"];
            }
        }
        
        $d = array();
        if(isset($_SESSION["kori"])) {
            $d["id"] = $_SESSION["kori"];            
        }
        else 
            if(isset($_COOKIE[KORIPIPARI])) {
                $d = array();
                $d["id"]=$_COOKIE[KORIPIPARI];
            
            }
        if($this->exists($d)) {
            $kori = $this->give();
            $_SESSION["kori"]=$kori["id"];
            return $kori["id"];
        }
        return false;
    }
    
    /**
     * Korin haku nimen alkuosalla
     *
     * Hakee aakkosissa viisi ensimmäistä nimen alkuosaan sopivaa riviä 
     * @param string $nimi Nimen osa
     * @return mixed False, jos ei löydy. Array korien nimiä, jotka sopivat
     * */
    public function haeNimenOsalla($nimi) {
        try {
            $s = "select * from kori where nimi ilike :osa order by nimi limit 5;";
            $osa = $nimi."%";
            $st = $this->db->prepare($s);
            $res=$st->execute(array("osa"=>$osa));
            if($res===false)
                return $res;
            $rivit = $st->fetchAll();
            if(count($rivit)==0)
                return false;
            if(!is_array($rivit)) {
                $rivit = array($rivit);
            }
            return $rivit;
        }
        catch(PDOExecption $pe) {
            die("Tietokantavirhe {$pe->getMessge()}");
        }
    }
}

?>