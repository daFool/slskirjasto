<?php
/**
 * Javascript-palvelut 
 * 
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 * */
class JsonBase {
    protected $a; /** @var array $a taulun sarakkeiden nimet **/
    protected $l; /** @var object $l luokka, joka tekee tietokantatyöt **/
    
    /** Konstruktori
     * @param array $sarakkeet Taulun sarakkeet
     * @param object $malli Tietokantaolio
     * */
    public function __construct($sarakkeet, $malli) {
        $this->a = $sarakkeet;
        $this->l = $malli;
    }
    
    /**
     * Table-fetch alla olevaan luokkaan
     *
     * Jos käyttäjätiedot ovat tiedossa, käytetään niitä.
     * 
     * @param int $start Mistä rivistä aloitetaan
     * @param int $length Kuinka monta riviä haetaan
     * @param string $od Järjestysehto
     * @param string $search Globaali hakuehto
     * 
     * @return mixed False, jos mitään ei löytynyt ja array rivejä, jos löytyi.
     * */
    protected function fetch($start,  $length, $od, $search) {
        if(isset($_SESSION["user"])) {
            $rivit=$this->l->tableFetch($start, $length, $od, $search, $_SESSION['user']['tunniste'], $_SESSION['user']['tila']);
        }
        else
            $rivit = $this->l->tableFetch($start, $length, $od, $search);
        return $rivit;
    }
    
    /**
     * Haku taulusta json-tablefetchiä varten
     *
     * Pureskellaan json-vastauksen tarvitsemat lähtöparametrit valmiiksi.
     * @return array json_encodea vaille valmis vastaus
     * 
     * @uses \JsonBase::tableRow() \JsonBase::tableRow() Yhden saadun rivin käsittely
     * */
    public function tableFetch() {
        global $db;
       
        $draw = isset($_REQUEST["draw"]) ? $_REQUEST["draw"] : false;
        $start = isset($_REQUEST["start"]) ? $_REQUEST["start"] : 0;
        $length = isset($_REQUEST["length"]) ? $_REQUEST["length"] : 10;
        $search = isset($_REQUEST["search"]) ? $_REQUEST["search"] : false;
        $order = isset($_REQUEST["order"]) ? $_REQUEST["order"] : false;
        $columns = isset($_REQUEST["columns"]) ? $_REQUEST["columns"] : false;

        $req = serialize($order)." ".serialize($search);
        // $db->log($req, __FILE__,__CLASS__."/".__METHOD__, __LINE__, "DEBUG");
        
        $od=false;
        if($order) {
            $od = "";
            $first=true;
            foreach($order as $o) {
                if(isset($this->a[$o["column"]])) {
                    $od.= $first ? "" : ", ";
                    $od.=$this->a[$o["column"]]." ".$o["dir"];
                    $first=false;
                }
            }
            // $db->log($od, __FILE__, __CLASS__."/".__METHOD__,__LINE__, "DEBUG");
        }
            
        $data=array();
        $i=0;
        $rivit=$this->fetch($start, $length, $od, $search);
        foreach($rivit["rivit"] as $rivi) {
            $j=0;
            foreach($this->a as $aa) {
                $v= $this->tableRow($aa, $rivi[$aa]);
                $data[$i][$j++]=$v;
            }
            $i++;
        }
        $jason = array("draw"=>$draw, "recordsTotal"=>$rivit["lkm"], "recordsFiltered"=>$rivit["filtered"]);
   
        $jason["data"]=$data;
        return $jason;
    }
    
    /**
     * Mahdollisen lisäkäsittelyt arvoille
     * @param string $key Kentän nimi
     * @param mixed $value Kentän oletusarvo
     * @return mixed Uusi arvo
     * */
    public function tableRow($key, $value) {
        return $value;
    }
}
?>