<?php
/**
 * Pelikokoelma
 *
 * Lainaus, lisäys, poisto jnpsp
 *
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 * */
/**
 * Pelikokoelman pelit
 *
 * Kokoelmapelien käsittely
 * */
class SLSCOLLECTIONGAMES {
    /** @var handle Database handle **/
    private $db;
    /** @var object SLS Database **/
    private $dbc;
    /** @var array Kokoelman pelit **/
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
     * Lahjoittajatiedot
     * @param string $lahjoittaja Lahjoittajan nimike
     * @param string $lahjoittajanurl Lahjoittan www-osoite
     * */
    private function lahjoittaja($lahjoittaja, $lahjoittajanurl) {
            $l = new SLSLahjoittajat($this->dbc);
            return $l->lisaaLahjoittaja($lahjoittaja, $lahjoittajanurl);
    }
    
    /**
     * Add collection game
     * @param array $cg Collection game data
     * @return boolean False if failed
     * */
    public function add($cg) {
        try {
            $s = "insert into kokoelmapeli (kokoelma, peli, omistaja, lisaaja, tunniste";
            $sv = "values(:kokoelma, :peli, :omistaja, :lisaaja, :tunniste";
            $d = array("kokoelma"=>$cg["Kokoelma"], "peli"=>$cg["Peli"], "omistaja"=>$cg["Omistaja"], "lisaaja"=>$cg["Lisaaja"], "tunniste"=>$cg["Tunniste"]);
            $optionals = array("Lahjoittaja", "Hylly", "Paikka", "Varasto", "Laatikko", "Kunto", "Huomautus");
            
            if(isset($cg["lahjoittaja"])) {
                $t = $this->lahjoittaja($cg["Lahjoittaja"], isset($cg["LahjoittajanUrl"]) ? $cg["LahjoittajanUrl"] : "");
                if($t===false)
                  return;
            }
            foreach($optionals as $i) {
                if(isset($cg[$i]) && $cg[$i]!="") {
                    $s.=",$i";
                    $sv.=",:$i";
                    $d[$i]=$cg[$i];
                }                
            }
            $s.=") $sv);";
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
            if(!$res || $st->rowCount()!=1)
                return false;
            return true;
        }
        catch(PDOException $e) {
            die("Programming error {$e->getMessage()}");
        }
    }
    
    
    /**
     * Find game with regex
     * @param string/regex $Rex regexp jolla haetaan
     * @param string $field sarake josta haetaan
     * @param string $Kokoelma kokoelma, josta haetaan
     * 
     * @return mixed|boolean False if not found and an array containing game data
     * */
    public function findWithRex($Rex, $Field, $Kokoelma) {
        try {
            $fields = array("Nimi", "Suunnittelija", "Julkaisija", "Tunniste", "GTIN", "Lisatty", "Kesto", "Pelaajia", "omistaja","lisaaja",
                       "Lahjoittaja");
            $match=false;
            foreach($fields as $f) {
                if($f==$Field) {
                    $match=true;
                }
            }
            if($match===false) {
                $this->dbc->log("Huono hakukenttä $Rex, $Field, $Kokoelma.", __FILE__,__CLASS__,__LINE__,"DEBUG");
                return false;
            }
            switch($Field) {
                case "Kesto":
                case "Pelaajia":
                case "Tunniste":
                    $op = "=";
                    break;
                default:
                    $op="~*";
                    break;
            }
            $s = "select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.$Field $op :rex and kokoelma=:kokoelma;";
            $this->dbc->log("$s $Rex $Kokoelma", __FILE__,__CLASS__,__LINE__,"DEBUG");
            $st = $this->db->prepare($s);
            $res = $st->execute(array("rex"=>$Rex, "kokoelma"=>$Kokoelma));
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
     * List games in collection with state
     * @param string $Kokoelma Kokoelma, jota listataan
     * @param int $start Aloitusrivi
     * @param int $length Montako peliä sivulle
     * @param string $order Järjestysehto
     * @param string $search Filtteri
     * @return mixed|booelan False if not found and array containing collection game data
     * */
    public function collectionTableFetch($Kokoelma, $start, $length, $order, $search) {
        try {
            $ds = false;
            $tulos = array("lkm"=>0, "pelit"=>array(), "riveja"=>0, "filtered"=>0);
            $so="";
            $v="";
            if(isset($search["value"]) and $search["value"]!="") {
                $v = $search["value"];
                $so = "and (nimi ~* :v or tila ~*:v or gtin ~* :v or tunniste ~* :v)";
                $ds = true;
            }
            if($order !== false) {
                $s = "select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k $so order by $order limit :length offset :start;";
                $d = array("length"=>$length, "start"=>$start, "k"=>$Kokoelma);
            } else {
                $s = "select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k $so limit :length offset :start;";
                $d = array("length"=>$length, "start"=>$start, "k"=>$Kokoelma);
            }
            if($ds)
                $d["v"]=$v;
            $m = "$s (v=$v, k=$Kokoelma, start=$start, length=$length)";
            $this->dbc->log($m, __FILE__, __CLASS__,__LINE__,"DEBUG");
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
            if(!$res || $st->rowCount()==0) {
                return $tulos;
            }
            //die("Found {$st->rowCount()} games");
            $pelit = $st->fetchAll();
            $s = "select count(*) as lkm from vKokoelma where kokoelma=:k;";
            $st = $this->db->prepare($s);
            $d=array("k"=>$Kokoelma);
            $res = $st->execute($d);
            if(!$res || $st->rowCount()==0) {
                return $tulos;
            }
            $row = $st->fetch();
            $tulos["lkm"]=$row["lkm"];
            $tulos["pelit"]=$pelit;
            $tulos["riveja"]=count($pelit);
            $tulos["filtered"]=$row["lkm"];
            if($ds) {
                $s = "select count(*) as lkm from vKokoelma where kokoelma=:k $so;";
                $st = $this->db->prepare($s);
                $res = $st->execute(array("v"=>$v, "k"=>$Kokoelma));
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
     * Toisesta kokoelmasta tuonti
     *
     * Tarkoitettu pääsääntöisesti Tapahtuma-kokoelman luomiseen.
     * @param string $mista Sen kokoelman tunniste, josta tuodaan
     * @param string $mihin Sen kokoelman tunniste, johon tuodaan
     * @param string $kuka Kuka tuo pelejä.
     * return mixed False, jos tuonti epäonnistui
     * */
    public function tuoKokoelmasta($mista, $mihin, $kuka) {
        try {
            /* insert into kokoelmapeli
            (select :mihin, peli, omistaja, lahjoittaja, hylly, paikka, varasto, laatikko, kunto, huomautus, :mihin||tunniste,
            now(), :kuka, now(), :kuka from kokoelmapeli where kokoelma=:mista) */
            
            $s = "insert into kokoelmapeli (kokoelma, peli, omistaja, lahjoittaja, kunto, huomautus, tunniste, lisatty, lisaaja) (select :mihin,
            peli, omistaja, lahjoittaja, kunto, huomautus, cast(:mihin as varchar(255))||'.'||tunniste, now(), :kuka from kokoelmapeli where kokoelma=:mista) ;";
            $d = array("mihin"=>$mihin, "kuka"=>$kuka, "mista"=>$mista);
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
            if(!$res)
                return false;
            else
                return $st->rowCount();
        }
        catch(PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
    /**
     * Pelin deaktivointi
     *
     * Ajatus on, että kun joku vie kokoelmasta sille lainaamansa pelin, se deaktivoidaan, jotta peliin kohdistuneet
     * lainaukset jäävät eloon.
     * @param string $tunniste Deaktivoitavan pelin tunniste
     * @return boolean true jos onnistui, false jos meni kätöseen.
     * */
    public function deaktivoi($tunniste) {
        try {
            $s = "update kokoelmapeli set huomautus='poistettu' where tunniste = :tunniste;";
            $d = array("tunniste"=>$tunniste);
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
            return $res;
        }
        catch(PDOExeception $e) {
            die("Ohjelmointivirhe {$e->getMessage()}");
        }
    }
    
    /**
     * Pelin nouto muokkausta varten
     * @param string $tunniste Pelin kokoelmatunniste
     * @return array Joko pelin tiedot tai array, jossa on yksi ainut kenttä: kilroy
     * */
    public function haePeli($tunniste) {
        try {
            $s = "select k.*, p.*, p.tunniste as ptunniste, k.tunniste as ktunniste, coalesce(l.nimi,'') as la, coalesce(l.verkkoosoite,'') as lv from kokoelmapeli as k join peli as p on (p.tunniste=k.peli and k.tunniste=:tunniste)
                left outer join lahjoittaja l on (k.lahjoittaja=l.nimi);";
            $d = array("tunniste"=>$tunniste);
            $r = array();
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
            if($res===false) {
                $r["kilroy"]=_("Jotain meni piäleen.");
                return $r;
            }
            $rows = $st->fetchAll(PDO::FETCH_ASSOC);
            if(count($rows)>1 || count($rows)==0) {
                $r["kilroy"]=_("Joko liikaa tai liian vähän.");
                return $r;
            }
            $targets = array("nimi"=>"nimi", "suunnittelija"=>"suunnittelija", "julkaisija"=>"julkaisija",
                             "bgglinkki"=>"bgglinkki", "kesto"=>"kesto", "pelaajia"=>"pelaajia", "gtin"=>"gtin", "vuosi"=>"vuosi",
                             "omistaja"=>"omistaja", "la"=>"lahjoittaja", "hylly"=>"hylly", "paikka"=>"paikka", "laatikko"=>"laatikko",
                             "kunto"=>"kunto", "lv"=>"lahjoittajawww", "ptunniste"=>"peliid", "ktunniste"=>"kokoelmapeliid");
            foreach($rows[0] as $key=>$value) {
                if(isset($targets[$key]))
                    $r[$targets[$key]]=$value;
            }
            $r["kilroy"]="";
            return $r;
        } catch(PDOException $e) {
            die("Ohjelmointivihre {$e->getMessage()}");
        }
    }
    
    /**
     * Pelitietojen päivittäminen kantaan
     * @param array $cg Päivittävät tidot
     * @return boolean True jos onistui, false jos epäonnistui
     * */
    public function update($cg) {
        try {
            $s = "update kokoelmapeli set omistaja=:Omistaja, lahjoittaja=:Lahjoittaja, hylly=:Hylly, paikka=:Paikka,
            laatikko=:Laatikko, kunto=:Kunto, huomautus=:Huomautus, muokattu=now(), muokkaaja=:Muokkaaja where tunniste=:Tunniste and
            kokoelma=:Kokoelma;";
            $st = $this->db->prepare($s);
            if(isset($cg["Lahjoittaja"]) && $cg["Lahjoittaja"]!="")
               if($this->lahjoittaja($cg["Lahjoittaja"], $cg["LahjoittajanUrl"]))
                return false;
            if(isset($cg["LahjoittajanUrl"]))
                unset($cg["LahjoittajanUrl"]);
            if($cg["Lahjoittaja"]=="")
                $cg["Lahjoittaja"]=null;
            $res = $st->execute($cg);
            return $res;
        
        }
        catch(PDOException $e) {
            die("Ohjelmointivihre {$e->getMessage()}");
        }
    }
}
?>
