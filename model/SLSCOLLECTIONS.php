<?php
/**
 * Pelikokoelma
 *
 * PHP Version 7.1
 * 
 * @category  Controller
 * @package   SLS
 * @author    Mauri "mos" Sahlberg <mauri.sahlberg@gmail.com>
 * @copyright 2018 Mauri Sahlberg Helsinki
 * @license   Apache License, Version 2.0 https://opensource.org/licenses/Apache-2.0
 * @link      www.iki.fi/mos
 * */

 namespace SLS;
 
/**
 * Pelikokoelma
 *
 * Kokoelman tietokantarajapinta
 *
 * Kokoelmia on kahdenlaisia:
 * 1) Pysyviä kokoelmia, jotka ovat jonkin organisaation "varasto"-kokoelmia.
 * 2) Tapahtumakokoelmia, jotka yleensä koostuvat usean eri organisaation peleistä ja ovat hetkellisesti olemassa.
 *
 * Taulu: kokoelma
 * <pre>
 * +
 * | Sarake    | Tyyppi        | Tarkoitus                                                 |
 * +-----------+---------------+-----------------------------------------------------------+
 * | nimi      | varchar(255)  | Kokoelman nimi, pääavain                                  |
 * | laji      | int2          | Onko kokoelma tapahtuma=0 vai varasto=1                   |
 * | omistaja  | varchar(255)  | Kokoelman omistajan tunniste, viiteavain kayttaja-tauluun |
 * | tapahtuma | varchar(255)  | Tapahtuman nimi, viiteavain tapahtuma-tauluun             |
 * | julkisuus | varchar(255)  | Onko kokoelma yksityinen vai avoin                        |
 * | muokattu  | timestamp wz  | Koska kokoelmariviä on viimeksi muokattu                  |
 * | id        | varchar(6)    | Kokoelmatunniste, käytetään tarroissa ja pelitunnisteissa |
 * | muokkaaja | varchar(255)  | Kuka riviä on muokannut                                   |
 * | luotu     | timestamp wz  | Koska kokoelmarivi on luotu                               |
 * | luoja     | varchar(255)  | Kuka / mikä kokoelmarivin on luonut                       |
 *
 * Käyttöoikeudet:
 * - Yksityisen kokoelman saa nähdä vain omistaja
 * - Julkisen kokoelman saa katsella kuka tahansa
 * - Omistaja saa muokata omia kokoelmiaan ja antaa sille oikeuksia
 * - Superadmin saa tehdä mitä lystää
 * - Kokoelman roolipohjaiset oikeudet:
 *   - Admin, saa muokata kokoelmaa ja antaa pelejä lainaan
 *   - User, saa katsella kokoelman pelejä ja tietoja
 *
 *   @uses mosBase\Malli
 *
 *  
 **/
class SLSCOLLECTIONS extends \mosBase\Malli {

    /**
     * Konstruktori
     * 
     * @param mosBase\Database  $db Tietokantaolio
     * @param \mosBase\Log      $log Logi
     **/
    public function __construct(\mosBase\Database $db, \mosBase\Log $log) {
        $hakukentat=array();
        $hakukentat[]=array(\mosBase\Malli::NIMI=>"nimi", \mosBase\Malli::TYYPPI=>\mosBase\Malli::STRINGI);
        $hakukentat[]=array(\mosBase\Malli::NIMI=>"omistaja", \mosBase\Malli::TYYPPI=>\mosBase\Malli::STRINGI);
        $hakukentat[]=array(\mosBase\Malli::NIMI=>"tapahtuma", \mosBase\Malli::TYYPPI=>\mosBase\Malli::STRINGI);
        $hakukentat[]=array(\mosBase\Malli::NIMI=>"luotu", \mosBase\Malli::TYYPPI=>\mosBase\Malli::DATETIME);
        
        parent::__construct($db, $log, "kokoelma", array("primary"=>array("nimi"), "id"=>array("id")), "kokoelma", $hakukentat);
    }
    
    /**
     * Kokoelmatunnisteen kelvollisuuden tarkistus
     *
     * @param string $id Kokoelman viivakooditunniste
     * 
     * @return boolean False jos tunniste on huono tai olemassa
     * 
     * @uses Model::exists() Model::exists() Onko tunniste käytössä.
     * **/
    public function checkId(string $id) : bool
    {
        if (!preg_match(BARCODE, $id)) {
                return false;
        }
        return !parent::exists(array("id"=>$id));
    }
    
    /**
     * Add collection 
     * 
     * @param mixed $collection Array of collection / event data
     * 
     * @return bool true if addition was successfull or false if it failed
     * 
     * @uses Tapahtuma::upsert() Tapahtuma::upsert() Tapahtuman lisääminen kantaan
     * @uses SLSDATABASE::log() SLSDATABASE::log() Logaus
     * @uses Model::upsert() Model::upsert() Rivin lisääminen
     * @uses Tapahtuma::delete() Tapahtuma::delete() Tapahtuman poistaminen kannasta
     * @todo Hajoitettava tapahtuman ja kokoelman luominen erikseen!
     * @todo WARNING! Todennäköisimmin ei toimi mihinkään suuntaan!
     * */
    public function addCOllection(array $collection) : bool
    {
        try {
            $tapahtuma=false;
            $c = array("nimi"=>$collection['nimi'], "laji"=>$collection['laji'],
                       "omistaja"=>$collection['omistaja'], "id"=>$collection['tunnus'],
                       "julkisuus"=>$collection['julkisuus']);
            
            /* Tapahtuma-kokoelma? */
            if ($collection["laji"]==0) {
                /* Kyllä, käsitellään tapahtuman tiedot. */
                
                $t = array("nimi"=>$collection['tapahtuma']['nimi'],
                           "sijainti"=>$collection['tapahtuma']['sijainti'],
                           "alkaa"=>$collection['tapahtuma']['alkaa'],
                           "loppuu"=>$collection['tapahtuma']['loppuu']);
              
                $tapahtuma = new Tapahtuma($this->dbc);
                $res = $tapahtuma->upsert($t);
                if($res===false) {
                    $this->dbc->log("Tapahtuman {$collection['tapahtuma']['nimi']} lisäys mätti", __FILE__,__METHOD__, __LINE__, "ERROR");
                    return false;
                }
                $c["tapahtuma"]=$t["nimi"];
            }
            
            if(!parent::upsert($c)) {
                $tapahtuma->delete($t);
                return false;
            }
            return true;
        } catch(PDOException $e) {
            die("Programming error {$e->getMessage()}");
        }
    }
    
    /**
     * Check existenz of a colleciton
     * @param string $nimi Name of the collection
     * @return mixed False if not exists array of collection data if it does
     * @uses \mosBase\malli::exists() Onko tällä nimellä kokoelma
     * @uses SLSCOLLECTIONS::give() Löytyneen rivin palauttaminen
     * */
    public function checkCollection(string $nimi) {
        if(parent::exists(array("nimi"=>$nimi)))
           return $this->give();
        return false;
    }
    
    /**
     * Check existence of an event
     * @param string $nimi Name of the event
     * @return mixed False if not exists, array of event data if it does
     * @uses Tapahtuma::exists() Tapahtuma::exists() Onko tapahtuma olemassa
     * @uses Tapahtuma::give() Tapahtuma::give() Tapahtuman tiedot
     * @todo Ei kuulu tänne vaan tapahtumaan
     * @todo WARNING! Tuskin edes toimii
     * */
    public function checkEvent($nimi) {
        $t = new Tapahtuma($this->dbc);
        if($t->exists(array("nimi"=>$nimi)))
            return $t->give();
        return false;
    }
        

    /**
     * Rakentaa where-ehdon pohjat
     * @param string $kuka Käyttäjän tunniste
     * @param string $taso Käyttäjän taso
     * @param string $mihin Mihin etsitään oikeuksia?
     * @param boolean $quote Parametri, joka ei tee mitään!?
     * @return array ("w"=>string where-ehdon pohjat ja "gb"=> group by ehdon pohjat.
     * @todo Lisää huttua! Uusiksi
     * */
    private function buildWhere(string $kuka, string $taso, string $mihin, $quote=false) {
        $w="";
        $gb="";
        if($kuka!="") {
            if($taso=='superadmin') {
                $w="";
                $gb="";
            }
            else {
                if($quote) {
                    $w1="hasRoleS('kokoelma','user','$mihin','kuka')";
                    $w2="hasRoleS('kokoelma','admin','$mihin','kuka')";
                }
                else {
                    $w1="hasRoleS('kokoelma','user',$mihin,'kuka')";
                    $w2="hasRoleS('kokoelma','admin',$mihin,'kuka')";
                }
                $w = " (omistaja='$kuka' or $w1 or $w2 or julkisuus='avoin')";
                $gb = " group by $mihin";
           }
        } else {
            $w=" julkisuus='avoin'";
        }
        $tulos = array("w"=>$w, "gb"=>$gb);
        return $tulos;
    }
    /**
     * Kokoelmalista json-notaatiossa
     *
     * Palauttaa kokoelmien nimet json-notaatiossa.
     * @param string $kuka Käyttäjän tunniste
     * @param string $taso Käyttäjän taso
     * @param string $filter Kokoelma, jota ei "lasketa"
     * @return array json_tauluna kokoelmat
     * @uses SLSCOLLECTIONS::buildWhere() SLSCOLLECTIONS::buildWhere() Hakuehto
     * @todo Puhdasta tuubaa, uusiksi
     * */
    public function getCollectionNames_json($kuka="", $taso="", $filter="") {
        try {
            $w = $this->buildWhere($kuka, $taso, "nimi");
            if($w!==false and $w["w"]!="")
                $w=$w["w"]." and laji=1";
            else
                $w="where laji=1";
            $s = "select nimi from kokoelma $w";
            $st = $this->db->prepare($s);
            $res = $st->execute();
            $base = array();
            array_push($base, array("id"=>0, "text"=>"-", "value"=>"-"));
            if($res && $st->rowCount()>0) {
            
                $rows = $st->fetchAll(PDO::FETCH_ASSOC);
                $i=1;
                foreach($rows as $key=>$row) {
                    if($row == $filter)
                        continue;
                    array_push($base,array("id"=>$i++,"text"=>$row, "value"=>$row));
                }
            }
            return json_encode($base);
        }
        catch(PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
    /**
     * Kokoelmat joista löytyy peli
     *
     * select vk.*, k.julkisuus from vkokoelma as vk join kokoelma as k on vk.kokoelma=k.nimi where k.julkisuus='avoin' and vk.nimi='Catan';
     * @param string $game Pelin nimi
     * @return mixed False, jos ei löytynyt ja kasan kokoelma rivejä, jos löytyi
     * @uses SLSCOLLECTIONS::buildWhere() SLSCOLLECTIONS::buildWhere() Hakuehdon rakentaminen
     * @todo Tuskin toimii, uusiksi
     * */
    public function getGameCollectionsForGame_json($game, $kuka, $taso) {
        try {
            $w = $this->buildWhere($kuka, $taso, 'nimi');
            if($w!==false && $w["w"]!="") {
                $w = $w["w"];
            } else {
                $w ="";
            }
            $s="select vk.*, k.julkisuus from vkokoelma as vk join (select * from kokoelma $w) as k on vk.kokoelma=k.nimi and vk.nimi=:game;";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("game"=>$game));
            $a=array("lkm"=>0);
            if($res && $st->rowCount()>0) {            
                $a["lkm"]=$st->rowCount();
                $a["rows"] = $st->fetchAll(PDO::FETCH_ASSOC);                
            }
            return json_encode($a);
        }
        catch(PDOException $e) {
            die("Programmin error: {$e->getMessage()}");
        }
    }
    /** Viivakooditunnisteen haku
     *
     * @param string $kokoelma Kokoelman nimi
     * @return mixed False, jos ei löytynyt ja tunnisteen jos löytyi
     * @todo Siivottava, ehkä muutakin
     * */
    public function getBarcode($kokoelma) {
        try {
            $s = "select id from kokoelma where nimi=:kokoelma;";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("kokoelma"=>$kokoelma));
            if($res===false)
                return false;
            $row = $st->fetch(PDO::FETCH_ASSOC);
            return $row["id"];
        }
        catch(PDOException $e) {
            die(sprintf(_("Ohjelmointivirhe: %s"), $e->getMessage()));
        }
    }
    
    /**
     * Hakee jsonina annetun kokoelman tiedot
     * @param string $kokoelma Mitä kokoelmaa haetaan
     * @uses SLSCOLLECTIONS::buildWhere() SLSCOLLECTIONS::buildWhere() Hakuehdon rakentaminen
     * @todo Huttua!
     * */
    public function get($kokoelma, $kuka, $tila) {
        try {            
            $w = $this->buildWhere($kuka, $tila, $kokoelma, true);
            $s = "select * from kokoelma";
            if($w["w"]!==false and $w["w"]!="") {
                $s.=$w["w"]." and ";
            }
            else
                $s.=" where ";
            $s.="nimi=:nimi;";
            $d = array("nimi"=>$kokoelma);
            $st = $this->db->prepare($s);
            $st->execute($d);
            if($st->rowCount()) {
                $rivi = $st->fetch(PDO::FETCH_ASSOC);
                $tulos = array("virhe"=>"OK", "rivi"=>$rivi);
                return json_encode($tulos);
            }
            $tulos = array("virhe"=>_("Ei lyötynyt."));
            return json_encode($tulos);
        }
        catch(PDOException $e) {
            die(_("Ohjelmointivirhe {$e->getMessage()}"));
        }
    }
    
    public function permissionWhere($kuka, $taso) {
        if($taso=='superadmin')
            return False;
        return $w="julkisuus='avoin' or omistaja='$kuka'";
    }
}

?>
