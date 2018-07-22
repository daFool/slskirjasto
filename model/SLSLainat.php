<?php
/**
 * Lainaukset
 *
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 * */

/**
 * Kokoelmalainojen käsittely
 * */
class SLSLainat extends mosBase\malli {    
    /**
     * Constructor
     * @param object $db Database-handle
     * */
    public function __construct(mosBase\database $db, mosBase\log $log) {
        $h = array();
        parent::__construct($db, $log, "laina", array("primary"=>array("id")), "laina", $h);
    }
    
    /**
     * Pelin lainaaminen
     * @param string $peli Kokoelmapelin tunniste
     * @param string $kokoelma Kokoelman tunniste
     * @param string $lainaaja Lainaajan tunniste
     * @param string $pantti Pantti
     * @return boolean False jos lainaus meni käteen, true jos lainaus onnistui
     * */
    public function Lainaa(string $peli, string $kokoelma, string $lainaaja, string $pantti, int $numero) {
        $d = array("kokoelmapeli"=>$peli, "pantti"=>$pantti);
        if($lainaaja=="undefined") {
            $d["kortti"]=$numero;
        } else {
            $d["lainaaja"]=$lainaaja;
        }
        $s = "select tapahtuma from kokoelma where nimi=:nimi";            
        $ds = array("nimi"=>$kokoelma);
        $st=$this->pdoPrepare($s, $this->db);
        $this->pdoExecute($st, $ds);
        $row = $st->fetch(PDO::FETCH_ASSOC);
        $tapahtuma=$row["tapahtuma"]??null;
        $d["tapahtuma"]=$tapahtuma;
        
        $s =  "select case when nimiid is null then nimi else nimet[nimiid] end as peli, tunniste from
                (select peli, nimiid from kokoelmapeli where tunniste=:peli) as kp
            join 
                (select nimi, nimet, tunniste from peli) as p
            on (kp.peli=p.tunniste)
        ";
        $st = $this->pdoPrepare($s, $this->db);
        $this->pdoExecute($st, array("peli"=>$peli));
        $row = $st->fetch(PDO::FETCH_ASSOC);
        $d["peli"]=$row["peli"]??null;
        $d["peliid"]=$row["tunniste"]??null;
        $nyt = new DateTime();
        $d["lainattu"]=$nyt->format("%c");
        $res=$this->upsert($d);
        if($res) {
            $kp = new SLSCOLLECTIONGAMES($this->db, $this->log);
            $d=array("tunniste"=>$peli, "tila"=>"Lainassa");
            $kp->upsert($d);
        }
        return $res;
    }
    
    /**
     * Pelin palauttaminen
     * @param string $peli Kokoelmapelin tunniste
     * @return boolean|mixed False jos palautus meni käteen, lainan tiedot, jos onnistui
     * */
    public function Palauta($lainaid) {
        $r = array("Tulos"=>"Virhe");
        
        $d = array("id"=>$lainaid);
        $res = $this->exists($d);
        if($res===False) {
            $r["Viesti"]="EiLainaa";
            return $r;
        }
        $l = $this->give();
        $r["peli"]=$l["peli"];
        $r["pantti"]=$l["pantti"];
        if($l["lainaaja"]===null) {
            $r["kortilla"]=True;            
        } else {
            $r["kortilla"]=False;
            $kd = array("tunniste"=>$l["lainaaja"]);
            $k = new SLSUSERS($this->db, $this->log);
            if($k->exists($kd)) {
                $r["lainaaja"]=$k->give()["nimi"];
            } else {
                $r["viesti"]="EiLainaajaa";
                return $r;
            }
        }
        if($l["palautettu"]!=null) {
            $r["Viesti"]="EiLainassa";
            return $r;
        }
        $nyt = new DateTime();
        $d["palautettu"]=$nyt->format("%c");
        if($this->upsert($d)) {
            $kp = new SLSCOLLECTIONGAMES($this->db, $this->log);
            $d = array("tunniste"=>$l["kokoelmapeli"], "tila"=>"OK");
            $kp->upsert($d);
            $k = $kp->give();
        }
        $r["Tulos"]="OK";
        return $r;
    }
}
?>