<?php
/**
 * Pelikokoelmat
 *
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 *
 * */
/**
 * Pelikokoelma
 *
 * Kokoelman tietokantarajapinta
 * */
class SLSCOLLECTIONS {
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
     * Kokoelmatunnisteen kelvollisuuden tarkistus
     * @param string $id Kokoelman viivakooditunniste
     * @return boolean False jos tunniste on huono tai olemassa
     * */
    public function checkId($id) {
        try {
            if(!preg_match(BARCODE, $id))
                return false;
            $s = "select count(*) as lkm from kokoelma where id=:id;";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("id"=>$id));
            if(!$res)
                return true;
            $r = $st->fetch(PDO::FETCH_ASSOC);
            if($r["lkm"]>0)
                return false;
            return true;
        }
        catch(PDOException $e) {
            die(sprintf(_("Ohjelmointivirhe: %s"),$e->getMessage()));
        }
    }
    /**
     * Add collection with/without event
     * @param mixed $collection Array of collection / event data
     * @return boolean True if addition was successfull or false if it failed
     * */
    public function addCOllection($collection) {
        try {
            $tapahtuma=false;
            $c = array("nimi"=>$collection['nimi'], "laji"=>$collection['laji'],
                       "omistaja"=>$collection['omistaja'], "id"=>$collection['tunnus'],
                       "julkisuus"=>$collection['julkisuus']);
            if($this->checkId($c["id"])===false)
                return false;
            
            $sc = "insert into kokoelma (nimi, laji, omistaja, id, julkisuus ";
            
            /* Tapahtuma-kokoelma? */
            if($collection["laji"]==0) {
                /* Kyllä, käsitellään tapahtuman tiedot. */
                
                $t = array("nimi"=>$collection['tapahtuma']['nimi'],
                           "sijainti"=>$collection['tapahtuma']['sijainti'],
                           "alkaa"=>$collection['tapahtuma']['alkaa'],
                           "loppuu"=>$collection['tapahtuma']['loppuu']);
                $s = "insert into Tapahtuma (nimi, sijainti, alkaa, loppuu) values (:nimi, :sijainti, :alkaa, :loppuu);";
                $st = $this->db->prepare($s);
                $res = $st->execute($t);
                if($res===false || $st->rowCount()!=1) {
                    $this->dbc->log("Tapahtuman {$collection['tapahtuma']['nimi']} lisäys mätti", __FILE__,__CLASS__, __LINE__, "INFO");
                    return false;
                }
                $tapahtuma=true;
                $c['tapahtuma']=$collection['tapahtuma']['nimi'];
                $sc.=", tapahtuma) values (:nimi, :laji, :omistaja, :id, :julkisuus, :tapahtuma);";
                $this->dbc->log("Tapahtuma {$collection['tapahtuma']['nimi']} lisätty.", __FILE__,__CLASS__, __LINE__, "INFO");                    
            } else
                /* Ei, talletetaan pelkkä kokoelma */
                $sc.=") values (:nimi, :laji, :omistaja, :id, :julkisuus);";
            
            $st = $this->db->prepare($sc);
            $res = $st->execute($c);
            if($res===false || $st->rowCount()!=1) {
                if($tapahtuma) {
                    $s = "delete from tapahtuma where nimi=:nimi;";
                    $st = $this->db->prepare($s);
                    $res= $st->execite($s);
                    if(!$res || $st->rowCount())
                        $this->dbc->log("Tapahtuman {$collection['tapahtuma']['nimi']} poistaminen mätti.", __FILE__,__CLASS__, __LINE__, "INFO");
                    
                }
                $this->dbc->log("Kokoelman {$collection['nimi']} lisääminen mätti.", __FILE__,__CLASS__, __LINE__, "INFO");
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
     * */
    public function checkCollection($nimi) {
        try {
            $s = "select * from kokoelma where nimi=:nimi;";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("nimi"=>$nimi));
            if(!$res || $st->rowCount()<>1) {
                return false;
            }
            $row = $st->fetch();
            return $row;
        }
        catch(PDOException $e) {
            die("Programming error {$e->getMessage()}");
        }
    }
    
    /**
     * Check existence of an event
     * @param string $nimi Name of the event
     * @return mixed False if not exists, array of event data if it does
     * */
    public function checkEvent($nimi) {
        try {
            $s = "select * from tapahtuma where nimi=:nimi;";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("nimi"=>$nimi));
            if(!$res || $st->rowCount()<>1) {
                return false;
            }
            $row = $st->fetch();
            return $row;
        }
        catch(PDOException $e) {
            die("Programming error {$e->getMessage()}");
        }
    }
    
    /**
     * Paginate collections
     * @param int $start Miltä riviltä aloitetaan
     * @param int $length Montako kokoelmaa listataan
     * @param string $order Aakkostusjärjestys
     * @param string $search Hakuehto
     * @return mixed False jos mitään ei löytynyt
     * */
    public function tableFetch($start, $length, $order, $search) {
        try {
            $ds = false;
            $tulos = array("lkm"=>0, "collections"=>array(), "riveja"=>0, "filtered"=>0);
            $so="where julkisuus='avoin'";
            if(isset($search["value"])) {
                $v = $search["value"];
                $so .= " and (nimi ~* :v or omistaja ~* :v or tapahtuma ~* :v)";
                $ds = true;
            }
            if($order !== false) {
                $s = "select * from kokoelma $so order by $order limit :length offset :start;";
                $d = array("length"=>$length, "start"=>$start);
            } else {
                $s = "select * from kokoelma $so limit :length offset :start;";
                $d = array("length"=>$length, "start"=>$start);
            }
            if($ds)
                $d["v"]=$v;
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
            if(!$res || $st->rowCount()==0) {
                return $tulos;
            }
            $kokoelmat = $st->fetchAll();
            $s = "select count(*) as lkm from kokoelma;";
            $st = $this->db->prepare($s);
            $res = $st->execute();
            if(!$res || $st->rowCount()==0) {
                return $tulos;
            }
            $row = $st->fetch();
            $tulos["lkm"]=$row["lkm"];
            $tulos["rivit"]=$kokoelmat;
            $tulos["riveja"]=count($kokoelmat);
            $tulos["filtered"]=$row["lkm"];
            if($ds) {
                $s = "select count(*) as lkm from kokoelma $so;";
                $st = $this->db->prepare($s);
                $res = $st->execute(array("v"=>$v));
                if($res && $st->rowCount()>0) {
                    $a=$st->fetch();
                    $tulos["filtered"]=$a["lkm"];
                }
            }
            return $tulos;
        }
        catch(PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }  
    }
    
    /**
     * Kokoelmalista json-notaatiossa
     *
     * Palauttaa kokoelmien nimet json-notaatiossa.
     * */
    public function getCollectionNames_json() {
        try {
            $s = "select nimi from kokoelma where laji=1 and julkisuus='avoin'";
            $st = $this->db->prepare($s);
            $res = $st->execute();
            $base = array();
            array_push($base, array("id"=>0, "text"=>"-", "value"=>"-"));
            if($res && $st->rowCount()>0) {
            
                $rows = $st->fetch(PDO::FETCH_ASSOC);
                $i=1;
                foreach($rows as $key=>$row) {
                    array_push($base,array("id"=>$i,"text"=>$row, "value"=>$row));
                }
            }
            return json_encode($base);
        }
        catch(PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
    /**
     * Julkiset kokoelmat joista löytyy peli
     *
     * select vk.*, k.julkisuus from vkokoelma as vk join kokoelma as k on vk.kokoelma=k.nimi where k.julkisuus='avoin' and vk.nimi='Catan';
     * @param string $game Pelin nimi
     * @return mixed False, jos ei löytynyt ja kasan kokoelma rivejä, jos löytyi
     * */
    public function getGameCollectionsForGame_json($game) {
        try {
            $s="select vk.*, k.julkisuus from vkokoelma as vk join kokoelma as k on vk.kokoelma=k.nimi where k.julkisuus='avoin' and vk.nimi=:game;";
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
}

?>
