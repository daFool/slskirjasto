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
require_once("../globals.php");
require_once("$basepath/helpers/common.php");

function bored($t, $d) {
    $v = isset($_REQUEST[$t]) ? $_REQUEST[$t] : $d;
    return $v;
}

$draw = isset($_REQUEST["draw"]) ? $_REQUEST["draw"] : false;
$start = isset($_REQUEST["start"]) ? $_REQUEST["start"] : 0;
$length = isset($_REQUEST["length"]) ? $_REQUEST["length"] : 10;
$search = isset($_REQUEST["search"]) ? $_REQUEST["search"] : false;
$order = isset($_REQUEST["order"]) ? $_REQUEST["order"] : false;
$columns = isset($_REQUEST["columns"]) ? $_REQUEST["columns"] : false;

$nimi = bored("nimi",false);
$suunnittelija=bored("suunnittelija",false);
$kesto=bored("kesto", false);
$kestoe=bored("kestoe", false);
$pelaajiamin=bored("minpelaajia", false);
$pelaajiamax=bored("maxpelaajia", false);
$vuosi = bored("vuosi", false);
$vuosie = bored("vuosie", false);
$bggranke = bored("geeke", false);
$bggrank = bored("geek", false);
$julkaisija = bored("julkaisija", false);

$req = serialize($order)." ".serialize($search);
/*
 *<th>Nimi</th>
 *<th>BGGRank</th>
                <th>Suunnittelija</th>
                <th>Julkaisija</th>
                <th>BGG</th>
                <th>Kesto</th>
                <th>Pelaajia</th>
                <th>Lisätty</th>
                <th>Vuosi</th>
*/
$f=false;
if($pelaajiamin!==false) {
    $f["pelaajia"]=array("min"=>$pelaajiamin, "max"=>$pelaajiamax);
}

if($nimi != false) {
    $f["nimi"]=array("arvo"=>$nimi);
}
if($suunnittelija != false) {
    $f["suunnittelija"]=array("arvo"=>$suunnittelija);
}
if($julkaisija != false) {
    $f["julkaisija"]=array("arvo"=>$julkaisija);
}
if($vuosi != false) {
    $f["vuosi"]=array("ehto"=>$vuosie, "arvo"=>$vuosi);
}
if($kesto !=false ) {
    $f["kesto"]=array("ehto"=>$kestoe, "arvo"=>$kesto);
}

if($bggrank != false) {
    $f["bggrank"]=array("arvo"=>$bggrank, "ehto"=>$bggranke);
}
$req.=serialize($f);
$a = array("nimi", "bggrank", "bgglinkki", "kesto", "pelaajia",  "vuosi", "suunnittelija", "julkaisija");
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
$games = $g->extendedTableFetch($start,$length, $od, $search, $f);
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