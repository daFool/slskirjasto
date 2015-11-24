<?php
/**
 * Javascript-palvelut 
 * 
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 * */
class JsonBase {
    private $a; /** @var array $a taulun sarakkeiden nimet **/
    private $l; /** @var object $l luokka, joka tekee tietokantatyöt **/
    
    /** Konstruktori
     * @param array $sarakkeet Taulun sarakkeet
     * @param object $malli Tietokantaolio
     * */
    public function __construct($sarakkeet, $malli) {
        $this->a = $sarakkeet;
        $this->l = $malli;
    }
    
    public function tableFetch() {
        global $db;
       
        $draw = isset($_REQUEST["draw"]) ? $_REQUEST["draw"] : false;
        $start = isset($_REQUEST["start"]) ? $_REQUEST["start"] : 0;
        $length = isset($_REQUEST["length"]) ? $_REQUEST["length"] : 10;
        $search = isset($_REQUEST["search"]) ? $_REQUEST["search"] : false;
        $order = isset($_REQUEST["order"]) ? $_REQUEST["order"] : false;
        $columns = isset($_REQUEST["columns"]) ? $_REQUEST["columns"] : false;

        $req = serialize($order)." ".serialize($search);
        $db->log($req, __FILE__,__CLASS__."/".__METHOD__, __LINE__, "DEBUG");
        
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
            $db->log($od, __FILE__, __CLASS__."/".__METHOD__,__LINE__, "DEBUG");
        }
        $rivit = $this->l->tableFetch($start, $length, $od, $search);
        $jason = array("draw"=>$draw, "recordsTotal"=>$rivit["lkm"], "recordsFiltered"=>$rivit["filtered"]);
        
        $data=array();
        $i=0;

        foreach($rivit["rivit"] as $rivi) {
            $j=0;
            foreach($this->a as $aa) {
                $v= $this->tableRow($aa, $rivi[$aa]);
                $data[$i][$j++]=$v;
            }
            $i++;
        }
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