<?php
class Kori extends Model {
    var $kori;
    /**
     * @param object $db database handle
     * **/
    public function __construct($db) {
        parent::__construct($db, "kori", array("id", "nimi"), false, array("id"=>"int", "omistaja"=>"string", "peli"=>"string", "paivitetty"=>"date", "nimi"=>"string"));
        $this->kori=false;
    }
    
    /**
     * Luo uuden korin
     * @param string $omistaja Korin omistaja
     * @param string $peli Koriin lisättävä peli
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
            print_r($s);
            print_r($d);
            die("Kantavirhe {$pe->getMessage()}");
        }
     }
    
    public function asetaKori($id) {
        $this->kori=$id;
    }
    /**
     * Korin päivittäminen
     * @param int $ID korin tunniste
     * */
    protected function paivataKori($ID) {
        try {
            $s = "updata Kori set paivitetty=now() where id=:id;";
            $st = $this->db->prepare($s);
            $st->execute(array("id"=>$ID));
            return;
        }
        catch(PDOException $pe) {
            print_r($s);
            print_r($d);
            die("Kantavirhe {$pe->getMessage()}");            
        }
    }
    /**
     * Pelin lisääminen koriin
     * @param int $ID Korin tunniste
     * @param string $peli Lisättävä peli
     * @return boolean Onnistuiko
     * */
    public function lisaaPeli($ID, $peli) {
        try {
            $s = "insert into KorinPelit(id, peli) values(:id, :peli);";
            $d = array("id"=>$ID, "peli"=>$peli);
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
            return $res;
        }
        catch(PDOException $pe) {
            print_r($s);
            print_r($d);
            die("Kantavirhe {$pe->getMessage()}");
        }
    }
    
    /**
     * Pelin poistaminen korista
     * @param int $ID Korin tunniste
     * @param string $peli Lisättävä peli
     * @param boolean $kaikki, poistetaanko kaikki?
     * @return boolean Onnistuiko poisto?
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
            return $res;
        }
        catch(PDOException $pe) {
            print_r($s);
            print_r($d);
            die("Kantavirhe {$pe->getMessage()}");
        }
    }
    
    /**
     * Hae korin pelit
     * @param int $ID korin tunniste
     * @return array korin pelit
     * */
    public function haePelienlkm($ID) {
        try {
            $s = "select k.kokoelma, pt.* from
                    KorinPelit as kp
                join
                    vPelinTila as pt
                on (kp.id=:id and kp.peli=pt.pt_tunniste)
                join
                    kokoelmapeli as k
                on (kp.id=k.tunniste);";
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
            print_r($s);
            print_r($d);
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
}

?>