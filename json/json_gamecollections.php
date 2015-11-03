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

$game=isset($_REQUEST["game"]) ? $_REQUEST["game"] : false;

if($game===false) {
    $a = array("lkm"=>0);
    header("Content-type: application/json");
    echo json_encode($a);
    die;
}

$c = new SLSCOLLECTIONS($db);
$co = $c->getGameCollectionsForGame_json($game);
header("Content-type: application/json");
echo $co;
?>