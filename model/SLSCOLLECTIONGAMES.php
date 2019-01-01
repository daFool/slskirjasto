<?php
/**
 * Kokoelmien pelit
 *
 * @category  Model
 * @package   SLS-Kirjasto
 * @author    Mauri "daFool" Sahlberg <mauri.sahlberg@lautapeliseura.fi>
 * @copyright 2018 Mauri Sahlberg, Helsinki
 * @license   GPL-2.0 http://opensource.org/licenses/GPL-2.0
 * @link      http://www.github.com/daFool/slskirjasto
 **/

namespace SLS;
 
/**
 * Pelikokoelman pelit
 *
 * Kokoelmapelien käsittely
 *
 ** <pre>
 * +----------------------+-------------+----------------------------------+
 * | Sarake               | Tyyppi      | Selitys                          |
 * +----------------------+-------------+----------------------------------+
 * | kokoelma             | varchar     | Viiteavain kokoealmtauluun       |
 * | peli                 | int         | Viiteavain pelitauluun           |
 * | omistaja             | varchar     | Pelin omistaja                   |
 * | lahjoittaja          | int         | Viiteavain lahjoittajatauluun    |
 * | hylly                | varchar     | Missä hyllussä peli on           |
 * | paikka               | varchar     | Millä paikkalla peli hyllyssä on |
 * | varasto              | int         | Viiteavain varastotauluun        |
 * | laatikko             | varchar     | Missä laatikossa peli on?        |
 * | kunto                | varchar     | Missä kunnossa peli on?          |
 * | huomautus            | varchar     | Yleinen kommentti                |
 * | tunniste             | varchar     | Pelin avain                      |
 * | tuotu                | timestamp tz| Koska peli on tuotu kokoelmasta? |
 * | tuotukokoelmasta     | varchar     | Viiteavain lähtökokokelmaan      |
 * | alkuperainentunniste | varchar     | Lähtökokoelman tunniste          |
 * | nimiid               | int         | Pelikappaleen nimiindeksi        |
 * | julkaisijaid         | int         | Pelikkappleen julkaisijaindeksi  |
 * | tila                 | varchar     | Pelin tila                       |
 * | muokattu             | timestamp tz| Rivin muokkaushetki              |
 * | muokkaaja            | varchar     | Riviä muokannut tunnus           |
 * | luotu                | timestamp tz| Rivin luontihetki                |
 * | luoja                | varchar     | Rivin luonut tunnus              |
 * </pre>
 * 
 * @category  Model
 * @package   SLS-Kirjasto
 * @author    Mauri "daFool" Sahlberg <mauri.sahlberg@lautapeliseura.fi>
 * @copyright 2018 Mauri Sahlberg, Helsinki
 * @license   GPL-2.0 http://opensource.org/licenses/GPL-2.0
 * @link      http://www.github.com/daFool/slskirjasto
 **/
class SLSCOLLECTIONGAMES extends \mosBase\Malli
{
/**    
* @var string $kokoelma Käsittelyssä olevan kokoelman tunniste
**/
    private $kokoelma;
   
    public const KOKOELMAPELI="kokoelmapeli";
    public const NIMI="nimi";
    public const OMISTAJA="omistaja";
    public const KOKOELMAPELI_PELIID="kid";
    public const KOKOELMAPELI_AVAIN="tunniste";
    public const PELINIMET="nimet";
    public const KOKOELMA="kokoelma";
    public const PELIAVAIN="peli";
    public const LAHJOITTAJAAVAIN="lahjoittaja";
    public const HYLLY="hylly";
    public const PAIKKA="paikka";
    public const VARASTOAVAIN="varasto";
    public const LAATIKKO="laatikko";
    public const KUNTO="kunto";
    public const HUOMAUTUS="huomautus";
    public const AVAIN="tunniste";
    public const TUOTULÄHDEKOKOELMASTA="tuotu";
    public const LÄHDEKOKOELMA="tuotukokoelmasta";
    public const LÄHTEENAVAIN="alkuperainentunniste";
    public const NIMIINDEKSI="nimiid";
    public const JULKAISIJAINDEKSI="julkaisijaid";
    public const TILA="tila";
   
    static public $sarakkeet = [ KOKOELMA, PELIAVAIN, OMISTAJAVAIN, LAHJOITTAJAAVAIN, HYLLY, PAIKKA, VARASTOAVAIN, LAATIKKO, KUNTO, HUOMAUTUS,
                               AVAIN, TUOTULÄHDEKOKOELMASTA, LÄHDEKOKOELMA, LÄHTEENAVAIN, NIMIINDEKSI, JULKAISIJAINDEKSI, TILA ];
    /**
    * Constructor
    * @param mosBase\database $db Database-handle
    * @param mosBase\log $log Login-handle
    * */
    public function __construct(\mosBase\Database $db, \mosBase\Log $log)
    {
        $hakukentat=array();
        $hakukentat[0]=array(\mosBase\Malli::NIMI=>SLSCOLLECTIONGAMES::NIMI, \mosBase\Malli::TYYPPI=>\mosBase\Malli::STRINGI);
        $hakukentat[1]=array(\mosBase\Malli::NIMI=>SLSCOLLECTIONGAMES::OMISTAJA, \mosBase\Malli::TYYPPI=>\mosBase\Malli::STRINGI);
        $hakukentat[2]=array(\mosBase\Malli::NIMI=>SLSCOLLECTIONGAMES::KOKOELMAPELI, \mosBase\Malli::TYYPPI=>\mosBase\Malli::STRINGI);
        $hakukentat[3]=array(\mosBase\Malli::NIMI=>SLSCOLLECTIONGAMES::PELINIMET, \mosBase\Malli::TYYPPI=>\mosBase\Malli::STRINGA);
        $hakukentat[4]=array(\mosBase\Malli::NIMI=>SLSCOLLECTIONGAMES::KOKOELMAPELI_PELIID, \mosBase\Malli::TYYPPI=>\mosBase\Malli::INTTI);      
        
        parent::__construct($db, $log, SLSCOLLECTIONGAMES::KOKOELMAPELI, array("primary"=>array(SLSCOLLECTIONGAMES::KOKOELMAPELI_AVAIN)), "vKokoelma", $hakukentat);
    }        
    
    public function kokoelmaPeli($tunniste) {
         $s = "select kp.*, p.nimet, p.julkaisijat, p.nimi, p.julkaisija, l.verkkoosoite from 
                        (select * from kokoelmapeli where tunniste=:tunniste) as kp
                join
                        (select nimet, julkaisijat, tunniste, nimi, julkaisija from peli) as p 
                on (kp.peli=p.tunniste)
                left outer join
                        lahjoittaja as l
                on (kp.lahjoittaja=l.id);";
         $st = $this->pdoPrepare($s, $this->db);
         $this->pdoExecute($st, array("tunniste"=>$tunniste));
         return $st->fetch(\PDO::FETCH_ASSOC);
    }
    
    
    public function tableFetch(int $start, int $length, string $order, array $search, $where=False) {
      if($this->kokoelma!="") {
         $w = "kid=".$this->db->quote($this->kokoelma, \PDO::PARAM_STR);
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

   public function lainaTiedot($pelitunniste) {
      $s="select k.nimi as kokoelma, k.id as kokoelmaid, kp.tunniste as id, case when nimiid is null then p.nimi else p.nimet[nimiid] end as peli from 
            (select kokoelma, peli, nimiid, tunniste from kokoelmapeli where tunniste=:tunniste) as kp
         join
            (select nimi, id from kokoelma) as k
         on (kp.kokoelma=k.id)
         join
            (select nimi, tunniste, nimet from peli) as p
         on (kp.peli=p.tunniste);";
      $d = array("tunniste"=>$pelitunniste);
      $st=$this->pdoPrepare($s, $this->db);
      $res = $this->pdoExecute($st, $d);
      $rivi = $st->fetch(\PDO::FETCH_ASSOC);
      return $rivi;
   }
   
   public function setKokoelma(string $kokoelmaid) {
      $this->kokoelma = $kokoelmaid;
   }
}

