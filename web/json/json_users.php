<?php
require_once("../globals.php");
require_once("$basepath/helpers/common.php");
require("$basepath/helpers/maxrights.php");

$draw = isset($_REQUEST["draw"]) ? $_REQUEST["draw"] : false;
$start = isset($_REQUEST["start"]) ? $_REQUEST["start"] : 0;
$length = isset($_REQUEST["length"]) ? $_REQUEST["length"] : 10;
$search = isset($_REQUEST["search"]) ? $_REQUEST["search"] : false;
$order = isset($_REQUEST["order"]) ? $_REQUEST["order"] : false;
$columns = isset($_REQUEST["columns"]) ? $_REQUEST["columns"] : false;

$a = array("nimi", "tunniste", "tila", "lisatty", "slsjasennumero",  "puhelin", "sahkoposti", "syntymavuosi", "sukupuoli", "vahvistus");
$u = new SLSUSERS($db);
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
$users = $u->tableFetch($start,$length, $od, $search);
$jason = array("draw"=>$draw, "recordsTotal"=>$users["lkm"], "recordsFiltered"=>$users["filtered"]);
$data=array();
$i=0;

foreach($users["kayttajat"] as $rivi) {
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