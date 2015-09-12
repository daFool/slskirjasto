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
class SLSLainat {
    /** @var handle Database handle **/
    private $db;
    /** @var object SLS Database **/
    private $dbc;
    
    /**
     * Constructor
     * @param object $db Database-handle
     * */
    public function __construct($db) {
        $this->db = $db->getHandle();
        $this->dbc = $db;
    }
    
    /**
     * Pelin lainaaminen
     * @param string $peli Kokoelmapelin tunniste
     * @param string $kokoelma Kokoelman tunniste
     * @param string $lainaaja Lainaajan tunniste
     * @param string $pantti Pantti
     * @return boolean False jos lainaus meni käteen, true jos lainaus onnistui
     * */
    public function Lainaa($peli, $kokoelma, $lainaaja, $pantti) {
        try {
            $si = "insert into Laina (lainaaja, lainattu, kokoelmapeli, pantti, tapahtuma) values (:lainaaja, now(), :peli, :pantti, :tapahtuma);";
            $sq = "select tapahtuma from kokoelma where nimi=:nimi";
            $st = $this->db->prepare($sq);
            $d = array("nimi"=>$kokoelma);
            $res = $st->execute($d);
            if($res===false) {
                return false;
            }
            $row = $st->fetch(PDO::FETCH_ASSOC);
            $d = array("lainaaja"=>$lainaaja, "peli"=>$peli, "pantti"=>$pantti, "tapahtuma"=>$row["tapahtuma"]);
            $st = $this->db->prepare($si);
            $res = $st->execute($d);
            if($res===false) {
                return false;
            }
            return true;
        }
        catch(PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
    /**
     * Pelin palauttaminen
     * @param string $peli Kokoelmapelin tunniste
     * @return boolean|mixed False jos palautus meni käteen, lainan tiedot, jos onnistui
     * */
    public function Palauta($peli) {
        try {
            $sq = "select nimi, pantti from laina as l join kayttaja as k on (l.lainaaja=k.tunniste) where kokoelmapeli=:peli and palautettu is null for update;";
            $su = "update laina set palautettu=now(), modified=now() where kokoelmapeli=:peli and palautettu is null;";
            $st = $this->db->prepare($sq);
            $d = array("peli"=>$peli);
            $res = $st->execute($d);
            if($res===false) {
                return false;
            }
            $row = $st->fetch(PDO::FETCH_ASSOC);
            $st = $this->db->prepare($su);
            $res = $st->execute($d);
            if($res===false) {
                return false;
            }
            return $row;
        }
        catch(PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
}
?>