<?php
/**
 * Lahjoittajat
 *
 * Lainaus, lisäys, poisto jnpsp
 *
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 * */

 /**
  * Lahjoittajien käsittely
  * */
class SLSLahjoittajat {
    /** @var handle Database handle **/
    private $db;
    /** @var object SLS Database **/
    private $dbc;
    
    /**
     * Constructor
     * @param object $db Database-handle
     *
     * */
    public function __construct($db) {
        $this->db = $db->getHandle();
        $this->dbc = $db;
    }
    
    /**
     * Etsi lahjoittajan tiedot
     * @param string $lahjoittaja Lahjoittajan nimi tai sen osa
     * @param boolean $osahaku, true jos haetaan nimen osalla
     * @return mixed, False jos ei löydy, muutoin taulu, jossa nimi ja www-osoite
     * */
    public function EtsiLahjoittaja($lahjoittaja, $osahaku=false) {
        try {
            if($osahaku==true) {
                $s = "select * from lahjoittaja where nimi ilike :nimi;";
            } else {
                $s = "select * from lahjoittaja where nimi=:nimi;";
            }
            $d = array("nimi"=>$lahjoittaja);
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
            if($res === false) {
                return false;
            }
            $rows = $st->fetchALL(PDO::FETCH_ASSOC);
            if(!is_array($rows)) {
                $r = array();
                $r[0]=$rows;
                return $r;
            }
            return $rows;
        }
        catch(PDOException $€) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
    /**
     * lisää / päivitä lahjoittaja
     *
     * @param string $lahjoittaja - Lahjoittajan nimi
     * @param string $webosoite   - Lahjoittajan web-osoite
     * @return boolean true jos onnistui
     * */
     public function lisaaLahjoittaja($lahjoittaja, $webosoite) {
        try {
            $d = array("lahjoittaja"=>$lahjoittaja,
                       "webosoite"=>$webosoite);
            $res = $this->EtsiLahjoittaja($lahjoittaja);
            if($res===false) {
                $s = "insert into lahjoittaja (nimi, verkkoosoite) values (:lahjoittaja, :webosoite);";                
            }
            else {
                $s = "update lahjoittaja set verkkoosoite=:webosoite where nimi=:lahjoittaja;";
            }
            $st =  $this->db->prepare($s);
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
}
?>