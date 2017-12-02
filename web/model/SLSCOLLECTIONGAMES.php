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
class SLSCOLLECTIONGAMES extends mosBase\malli {
   /** @var array Kokoelman pelit **/
   private $games;
    
   /**
   * @var string $kokoelma Oletuskokoelma
   * */
   private $kokoelma;
    
   /**
   * Constructor
   * @param object $db Database-handle
   * @param object $log Login-handle
   * */
   public function __construct(&$db, &$log) {
      $hakukentat=array();
      $hakukentat[0]["nimi"]="nimi";
      $hakukentat[0]["tyyppi"]="string";
      $hakukentat[1]["nimi"]="omistaja";
      $hakukentat[1]["tyyppi"]="string";
      $hakukentat[2]["nimi"]="tunniste";
      $hakukentat[2]["tyyppi"]="string";
      $hakukentat[3]["nimi"]="nimet";
      $hakukentat[3]["tyyppi"]="stringA";
        
      parent::__construct($db, $log, "kokoelmapeli", array("primary"=>array("tunniste")), "vKokoelma", $hakukentat);
      $this->kokoelma=False;
   }
    
   /**
    * Asettaa käytettävän kokoelman
    * @param string $kokoelma Käytettävä kokoelma
    * */
   public function setKokoelma($kokoelma) {
      $this->kokoelma=$kokoelma;
   }
  
   public function pelinTila($tunniste) {
      $s = "select * from vPelinTila where pt_tunniste=:tunniste;";
      $st = $this->pdoPrepare($s, $this->db);
      $this->pdoExecute($st, array("tunniste"=>$tunniste));
      $rivi = $st->fetch(PDO::FETCH_ASSOC);
      return $rivi;
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
            $optionals = array("Lahjoittaja", "Hylly", "Paikka", "Varasto", "Laatikko", "Kunto", "Huomautus", "tuotukokoelmasta", "alkuperainentunniste");
            
            if(isset($cg["lahjoittaja"])) {
                $t = $this->lahjoittaja($cg["Lahjoittaja"], isset($cg["LahjoittajanUrl"]) ? $cg["LahjoittajanUrl"] : "");
                if($t===false)
                  return;
            }
            if(isset($cg["tuotukokoelmasta"]) && $cg["tuotukokoelmasta"]!="") {
                $s.=",tuotu";
                $sv.=",now()";
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
     * Pelin tai pelien tuominen toisesta kokoelmasta
     *
     * Tarkoitettu pääsääntöisesti Tapahtuma-kokoelman luomiseen.
     * @param string $mista Sen kokoelman tunniste, josta tuodaan
     * @param string $mihin Sen kokoelman tunniste, johon tuodaan
     * @param string $kuka Kuka tuo pelejä.
     * @param string $peli Tuodaanko vain yksi peli.
     * 
     * return mixed False, jos tuonti epäonnistui
     * */
    public function tuoKokoelmasta($mista, $mihin, $kuka, $peli=False) {
        try {
            /* insert into kokoelmapeli
            (select :mihin, peli, omistaja, lahjoittaja, hylly, paikka, varasto, laatikko, kunto, huomautus, :mihin||tunniste,
            now(), :kuka, now(), :kuka from kokoelmapeli where kokoelma=:mista) */
            $d = array("mihin"=>$mihin, "kuka"=>$kuka, "mista"=>$mista);
            
            $s = "insert into kokoelmapeli (kokoelma, peli, omistaja, lahjoittaja, kunto, huomautus, tunniste, lisatty, lisaaja, tuotu, tuotukokoelmasta, alkuperainentunniste, hylly, paikka) (select :mihin,
            peli, omistaja, lahjoittaja, kunto, huomautus, cast(:mihin as varchar(255))||'.'||tunniste, now(), :kuka, now(), kokoelma, tunniste, hylly, paikka from kokoelmapeli where kokoelma=:mista";
            if($peli != false) {
                $s.=" and tunniste=:peli";
                $d["peli"]=$peli;
            }
            $s.=") ;";
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
    
    public function kokoelmaPeli($tunniste) {
         $s = "select kp.*, p.nimet, p.julkaisijat, p.nimi, p.julkaisija, l.verkkoosoite from 
                        (select * from kokoelmapeli where tunniste=:tunniste) as kp
                join
                        (select nimet, julkaisijat, tunniste, nimi, julkaisija from peli) as p 
                on (kp.peli=p.tunniste)
                left outer join
                        lahjoittaja as l
                on (kp.lahjoittaja=l.nimi);";
         $st = $this->pdoPrepare($s, $this->db);
         $this->pdoExecute($st, array("tunniste"=>$tunniste));
         return $st->fetch(\PDO::FETCH_ASSOC);
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
                             "kunto"=>"kunto", "lv"=>"lahjoittajawww", "ptunniste"=>"peliid", "ktunniste"=>"kokoelmapeliid", "age"=>"age", "score"=>"score", "bggrank"=>"bggrank",
                             "tuotukokoelmasta"=>"tuotukokoelmasta", "alkuperainentunniste"=>"alkuperainentunniste", "huomautus"=>"huomautus");
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
            $kentat = array("Omistaja", "Hylly", "Lahjoittaja", "Paikka", "Laatikko", "Laatikko", "Kunto", "Huomautus", "Muokkaaja", "Tunniste", "Kokoelma");
            $s = "update kokoelmapeli set omistaja=:Omistaja, lahjoittaja=:Lahjoittaja, hylly=:Hylly, paikka=:Paikka,
            laatikko=:Laatikko, kunto=:Kunto, huomautus=:Huomautus, muokattu=now(), muokkaaja=:Muokkaaja where tunniste=:Tunniste and
            kokoelma=:Kokoelma;";
            $d=array();
            foreach($kentat as $kentta) {
                $d[$kentta]=$cg[$kentta];
            }
            if(isset($cg["Lahjoittaja"]) && $cg["Lahjoittaja"]!="") {
                if(!$this->lahjoittaja($cg["Lahjoittaja"], $cg["LahjoittajanUrl"])) {
                    return false;
                }                
            }
            if($d["Lahjoittaja"]=="")
                $d["Lahjoittaja"]=null;
            $st = $this->db->prepare($s);            
            $res = $st->execute($d);
            return $res;
        
        }
        catch(PDOException $e) {
            die("Ohjelmointivihre {$e->getMessage()}");
        }
    }
    
    public function tableFetch($start, $length, $order, $search, $where=False) {
      if($this->kokoelma!="") {
         $w = "kid=".$this->db->quote($this->kokoelma, PDO::PARAM_STR);
         $where = $where===False ? $w : $where.=" and ".$w;
      }
      return parent::tableFetch($start, $length, $order, $search, $where);
    }
    
    public function permissionWhere($kuka, $tila) {
         if($tila=="superadmin")
            return False;
         if($this->kokoelma=="")
            return False;
         // hasRoleS('kokoelma','user',$mihin,'kuka')";
         $w=sprintf("komistaja=%s or julkisuus='avoin' or hasRoleS('kokoelma','user',%s, 'kuka') or hasRoleS('kokoelma','admin', %s, 'kuka')",
                    $this->db->quote($kuka, PDO::PARAM_STR),
                    $this->db->quote($this->kokoelma, PDO::PARAM_STR),
                    $this->db->quote($this->kokoelma, PDO::PARAM_STR));
         return $w;
    }
}
?>
