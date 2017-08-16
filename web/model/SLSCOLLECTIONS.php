<?php
/**
 * Pelikokoelmat
 *
 * @package SLS-Kirjasto
 * @subpackage Pelikokoelma
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 *
 * */
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
 * | lisatty   | timestamp nz  | Koska kokoelmarivi on lisätty kantaan                     |
 * | julkisuus | varchar(255)  | Onko kokoelma yksityinen vai avoin                        |
 * | muokattu  | timestamp wz  | Koska kokoelmariviä on viimeksi muokattu                  |
 * | id        | varchar       | Kokoelmatunniste, käytetään tarroissa ja pelitunnisteissa |
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
 *   @uses Model
 *
 *  Kokoelmien ylläpito: view/collectionyp.php
 *  
 **/
class SLSCOLLECTIONS extends mosBase\malli {

    /**
     * Konstruktori
     * @param object $db Tietokantaolio
     **/
    public function __construct(&$db, &$log) {
        $hakukentat=array();
        $hakukentat[0]["nimi"]="nimi";
        $hakukentat[0]["tyyppi"]="string";
        $hakukentat[1]["nimi"]="omistaja";
        $hakukentat[1]["tyyppi"]="string";
        $hakukentat[2]["nimi"]="tapahtuma";
        $hakukentat[2]["tyyppi"]="string";
        
        parent::__construct($db, $log, "kokoelma", array("primary"=>array("nimi"), "id"=>array("id")), "kokoelma", $hakukentat);
    }
    /**
     * Kokoelmatunnisteen kelvollisuuden tarkistus
     * @param string $id Kokoelman viivakooditunniste
     * @return boolean False jos tunniste on huono tai olemassa
     * @uses Model::exists() Model::exists() Onko tunniste käytössä.
     * */
    public function checkId($id) {
        if(!preg_match(BARCODE, $id))
                return false;
        return !parent::exists(array("id"=>$id));
    }
    /**
     * Add collection with/without event
     * @param mixed $collection Array of collection / event data
     * @return boolean True if addition was successfull or false if it failed
     * @uses Tapahtuma::upsert() Tapahtuma::upsert() Tapahtuman lisääminen kantaan
     * @uses SLSDATABASE::log() SLSDATABASE::log() Logaus
     * @uses Model::upsert() Model::upsert() Rivin lisääminen
     * @uses Tapahtuma::delete() Tapahtuma::delete() Tapahtuman poistaminen kannasta
     * */
    public function addCOllection($collection) {
        try {
            $tapahtuma=false;
            $c = array("nimi"=>$collection['nimi'], "laji"=>$collection['laji'],
                       "omistaja"=>$collection['omistaja'], "id"=>$collection['tunnus'],
                       "julkisuus"=>$collection['julkisuus']);
            
            /* Tapahtuma-kokoelma? */
            if($collection["laji"]==0) {
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
     * @uses Model::exists() Model::exists() Onko tällä nimellä kokoelma
     * @uses SLSCOLLECTIONS::give() SLSCOLLECTIONS::give() Löytyneen rivin palauttaminen
     * */
    public function checkCollection($nimi) {
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
     * */
    public function checkEvent($nimi) {
        $t = new Tapahtuma($this->dbc);
        if($t->exists(array("nimi"=>$nimi)))
            return $t->give();
        return false;
    }
        
    /**
     * Paginate collections
     *
     * Ero perusversioon on, että näytetään vain "sallitut" kokoelmat
     * @param int $start Miltä riviltä aloitetaan
     * @param int $length Montako kokoelmaa listataan
     * @param string $order Aakkostusjärjestys
     * @param string $search Hakuehto
     * @param string $kuka Käyttäjän tunniste
     * @param string $taso Käyttäjän taso
     * @return mixed False jos mitään ei löytynyt
     * @uses SLSCOLLECTIONS::buildWhere() SLSCOLLECTIONS::buildWhere() Hakuehdon rakentaminen
     * @uses Model::tableFetch() Model::tableFetch() Varsinainen tietojen hakeminen
     * */
    public function tableFetch($start, $length, $order, $search, $kuka="", $taso="") {
        try {
            
            $w = $this->buildWhere($kuka, $taso, "nimi");
            return parent::tableFetch($start, $length, $order, $search, $w["w"]);
        }
        catch(PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }  
    }
    
    /**
     * Rakentaa where-ehdon pohjat
     * @param string $kuka Käyttäjän tunniste
     * @param string $taso Käyttäjän taso
     * @param string $mihin Mihin etsitään oikeuksia?
     * @param boolean $quote Parametri, joka ei tee mitään!?
     * @return array ("w"=>string where-ehdon pohjat ja "gb"=> group by ehdon pohjat. 
     * */
    private function buildWhere($kuka, $taso, $mihin, $quote=false) {
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
     * 
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
