<?php
/**
 * Pelit
 *
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 * @uses globals.php
 * @uses users.php
 * @uses common.php
 * @uses collections.php
 *
 * */

 /**
  * Pelien rajapinta
  *
  * Pelien tallettaminen, etsiminen, muuttaminen ja poistaminen.
  * */
class SLSGAMES {
  /** @var handle Database handle **/
    private $db;
    /** @var object SLS Database **/
    private $dbc;
    /** @var object Current game(s)
     * */
    private $games;
    /**
     * Constructor
     * @param object $db Database-handle
     * */
    public function __construct($db) {
        $this->db = $db->getHandle();
        $this->dbc = $db;
        
    }
    
    /**
     * Find game with name
     * @param string/regex $Name of the game to be searched
     * @return mixed|boolean False if not found and an array containing game data
     * */
    public function findWithRex($Rex, $Field) {
        try {
            $fields = array("Nimi", "Suunnittelija", "Julkaisija", "Tunniste", "GTIN", "Lisatty", "Kesto", "Pelaajia", "BGGLinkki");
            if(array_search($Field, $fields)===false) {
                print_r($fields);
                die("Tuntematon kentt: $Field");
                return false;
            }
            $s = "select * from peli where {$Field} ilike :rex;";
            $st = $this->db->prepare($s);
         
            $res = $st->execute(array("rex"=>$Rex));
            if(!$res || $st->rowCount()==0) {
                return false;
            }
            $this->games = $st->fetchAll();
            return $this->games;
        }
        catch(PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
    /**
     * Paginate games with gusto
     * */
    public function tableFetch($start, $length, $order, $search) {
        try {
            $ds = false;
            $tulos = array("lkm"=>0, "pelit"=>array(), "riveja"=>0, "filtered"=>0);
            $so="";
            $v="";
            if(isset($search["value"])) {
                $v = $search["value"];
                $so = "where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v)";
                $ds = true;
            }
            if($order !== false) {
                $s = "select * from peli $so order by $order limit :length offset :start;";
                $d = array("length"=>$length, "start"=>$start);
            } else {
                $s = "select * from peli $so limit :length offset :start;";
                $d = array("length"=>$length, "start"=>$start);
            }
            if($ds) 
                $d["v"]=$v;
            
            $m = "$s ($v)";
            $this->dbc->log($m, __FILE__, __CLASS__,__LINE__,"DEBUG");
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
            if(!$res || $st->rowCount()==0) {
                return $tulos;
            }
            $pelit = $st->fetchAll();
            $s = "select count(*) as lkm from peli;";
            $st = $this->db->prepare($s);
            $res = $st->execute();
            if(!$res || $st->rowCount()==0) {
                return $tulos;
            }
            $row = $st->fetch();
            $tulos["lkm"]=$row["lkm"];
            $tulos["pelit"]=$pelit;
            $tulos["riveja"]=count($pelit);
            $tulos["filtered"]=$row["lkm"];
            if($ds) {
                $s = "select count(*) as lkm from peli $so;";
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
     * Add game
     * @param array of game data
     * @return boolean|array False if failed and "tunniste" of inserted row in an array if succeeded
     * */
    public function addGame($game) {
        try {
            $s = "insert into Peli(nimi";
            $sv = "values(:nimi";
            $v = array("nimi"=>$game["nimi"]);
            if(isset($game["suunnittelija"])) {
                $v["suunnittelija"]=$game["suunnittelija"];
                $s.=",suunnittelija";
                $sv.=",:suunnittelija";
            }
            if(isset($game["julkaisija"])) {
                $v["julkaisija"]=$game["julkaisija"];
                $s.=",julkaisija";
                $sv.=",:julkaisija";
            }
            if(isset($game['bgglinkki'])) {
                $v["bgglinkki"]=$game["bgglinkki"];
                $s.=",bgglinkki";
                $sv.=",:bgglinkki";
            }
            if(isset($game['kesto'])) {
                $v["kesto"]=$game["kesto"];
                $s.=",kesto";
                $sv.=",:kesto";
            }
            if(isset($game['pelaajia'])) {
                $v["pelaajia"]=$game["pelaajia"];
                $s.=",pelaajia";
                $sv.=",:pelaajia";
            }
            if(isset($game['gtin'])) {
                $v["gtin"]=$game["gtin"];
                $s.=",gtin";
                $sv.=",:gtin";
            }
            if(isset($game['vuosi'])) {
                $v["vuosi"]=$game["vuosi"];
                $s.=",vuosi";
                $sv.=",:vuosi";
            }
            $s.=") $sv) returning tunniste;";
            $st = $this->db->prepare($s);
            $res = $st->execute($v);
            if(!$res) {
                return false;
            }
            $r = $st->fetch();            
            return $r;
        }
        catch(PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
   
    /**
     * Update a game
     * @param array of game data
     * @return boolean|array False if failed and "tunniste" of inserted row in an array if succeeded
     * */
    public function updateGame($game) {
        try {
            $s = "update Peli set nimi=:nimi, suunnittelija=:suunnittelija, julkaisija=:julkaisija, bgglinkki=:bgglinkki,
            kesto=:kesto, pelaajia=:pelaajia, gtin=:gtin, vuosi=:vuosi where tunniste=:tunniste;";
            
            $st = $this->db->prepare($s);
            $res = $st->execute($game);
            if(!$res) {
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
