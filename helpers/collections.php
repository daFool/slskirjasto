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
     * Add collection with/without event
     * @param mixed $collection Array of collection / event data
     * @return boolean True if addition was successfull or false if it failed
     * */
    public function addCOllection($collection) {
        try {
            $tapahtuma=false;
            $c = array("nimi"=>$collection['nimi'], "laji"=>$collection['laji'],
                       "omistaja"=>$collection['omistaja']);
            $sc = "insert into kokoelma (nimi, laji, omistaja";
            if($collection["laji"]==0) {
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
                $sc.=", tapahtuma) values (:nimi, :laji, :omistaja, :tapahtuma);";
                $this->dbc->log("Tapahtuma {$collection['tapahtuma']['nimi']} lisätty.", __FILE__,__CLASS__, __LINE__, "INFO");                    
            } else
                $sc.=") values (:nimi, :laji, :omistaja);";
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
     * */
    public function tableFetch($start, $length, $order, $search) {
        try {
            $ds = false;
            $tulos = array("lkm"=>0, "collections"=>array(), "riveja"=>0, "filtered"=>0);
            $so="";
            if(isset($search["value"])) {
                $v = $search["value"];
                $so = "where (nimi ~* :v or omistaja ~* :v or tapahtuma ~* :v)";
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
            $tulos["collections"]=$kokoelmat;
            $tulos["riveja"]=count($kokoelmat);
            $tulos["filtered"]=$row["lkm"];
            if($ds) {
                $s = "select count(*) as lkm from kokoelma $so;";
                $st = $this->db->prepare($s);
                $res = $st->execute(array("v"=>$v));
                if($res && $st->rowCount()>0) {
                    $tulos["filtered"]=$st->fetch()["lkm"];
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
            $s = "select nimi from kokoelma where laji=1";
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
}

?>