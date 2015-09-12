<?php
/**
 * Javascript-palvelu, joka tuottaa listauksen kokoelman peleistä
 * 
 * Lainaajan tietoja etsitään joko nimellä, käyttäjätunnuksella tai Lautapeliseuran jäsennumerolla.
 * Tiedostoa käyttää lainaus.php:ssä kolme javascript-täydennyksellä varustettua kenttää.
 *
 * @uses globals.php
 * @uses database.php
 * @uses games.php
 * @uses collectionGames.php
 * @package SLS-Kirjasto
 * @subpackage Javascript-palvelut
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 **/
require_once("../globals.php");
require_once("$basepath/helpers/common.php");

/** @var int $draw Datatables sisäistä säätöä, palautetaan sellaisena kuin saatiin */
$draw = isset($_REQUEST["draw"]) ? $_REQUEST["draw"] : false;
/** @var int $start Sivu miltä aloitetaan palauttaminen */
$start = isset($_REQUEST["start"]) ? $_REQUEST["start"] : 0;
$length = isset($_REQUEST["length"]) ? $_REQUEST["length"] : 10;
$search = isset($_REQUEST["search"]) ? $_REQUEST["search"] : false;
$order = isset($_REQUEST["order"]) ? $_REQUEST["order"] : false;
$columns = isset($_REQUEST["columns"]) ? $_REQUEST["columns"] : false;
$collection = isset($_REQUEST["collection"]) ? $_REQUEST["collection"] : "SLS";

$req = serialize($order)." ".serialize($search);
$a = ["tunniste", "nimi", "hylly", "paikka", "omistaja", "tila"];
$db->log($req, __FILE__,"hum", __LINE__, "DEBUG");
$g = new SLSCOLLECTIONGAMES($db);
$od=false;
if($order) {
    $od = "";
    $first=true;
    foreach($order as $o) {
        if(isset($a[$o["column"]])) {
            $od.= $first ? "" : ", ";
            $od.=$a[$o["column"]]." ".$o["dir"];
            $first=false;
        }
    }
}
$db->log($od, __FILE__, "hum",__LINE__, "DEBUG");
$db->log(serialize($search),__FILE__,"hum",__LINE__, "DEBUG");

$games = $g->collectionTableFetch($collection, $start,$length, $od, $search);
$jason = array("draw"=>$draw, "recordsTotal"=>$games["lkm"], "recordsFiltered"=>$games["filtered"]);
$data=array();
$i=0;

foreach($games["pelit"] as $rivi) {
    $j=0;
    foreach($a as $aa) {
        $data[$i][$j++]=$rivi[$aa];
    }
    $i++;
}
$jason["data"]=$data;
header("Content-type: application/json");
echo json_encode($jason);
?>