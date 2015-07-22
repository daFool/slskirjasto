<?php
/**
 * Javascript-palvelu pelien listaamiseen
 * 
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 * @uses globals.php
 * @uses database.php
 * @uses games.php
 * */
require_once("globals.php");
require_once("$basepath/helpers/database.php");
require_once("$basepath/helpers/games.php");

$db = new SLSDB();

$draw = isset($_REQUEST["draw"]) ? $_REQUEST["draw"] : false;
$start = isset($_REQUEST["start"]) ? $_REQUEST["start"] : 0;
$length = isset($_REQUEST["length"]) ? $_REQUEST["length"] : 10;
$search = isset($_REQUEST["search"]) ? $_REQUEST["search"] : false;
$order = isset($_REQUEST["order"]) ? $_REQUEST["order"] : false;
$columns = isset($_REQUEST["columns"]) ? $_REQUEST["columns"] : false;

$req = serialize($order)." ".serialize($search);
/*
 *<th>Nimi</th>
                <th>Suunnittelija</th>
                <th>Julkaisija</th>
                <th>BGG</th>
                <th>Kesto</th>
                <th>Pelaajia</th>
                <th>Lisätty</th>
                <th>Vuosi</th>
*/
$a = ["nimi", "suunnittelija", "julkaisija", "bgglinkki", "kesto", "pelaajia", "lisatty", "vuosi"];
$db->log($req, __FILE__,"hum", __LINE__, "DEBUG");
$g = new SLSGAMES($db);
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
$games = $g->tableFetch($start,$length, $od, $search);
$jason = array("draw"=>$draw, "recordsTotal"=>$games["lkm"], "recordsFiltered"=>$games["filtered"]);
$data=array();
$i=0;

foreach($games["pelit"] as $rivi) {
    $j=0;
    foreach($a as $aa) {
        if($aa=="bgglinkki") {
            $v = $rivi[$aa];
            $id = substr(strrchr($v,"/"),1);
            $data[$i][$j++]="<a href=\"$v\" target=\"_blank\">$id</a>";
        }
        else
            $data[$i][$j++]=$rivi[$aa];
    }
    $i++;
}
$jason["data"]=$data;
header("Content-type: application/json");
echo json_encode($jason);
?>