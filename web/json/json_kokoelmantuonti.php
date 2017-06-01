<?php
/**
 * Javascript-palvelut, joka listaa kokoelmat
 * 
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 * @uses globals.php
 * @uses database.php
 * @uses collections.php
 * */
require_once("../globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/maxrights.php");

$mista = isset($_REQUEST["mista"]) ? $_REQUEST["mista"] : false;
$mihin = isset($_REQUEST["mihin"]) ? $_REQUEST["mihin"] : false;
$data = array("lkm"=>0);
if($mista && $mihin) {
    $k = new SLSCOLLECTIONGAMES($db);
    $kuka = $_SESSION["user"]["tunniste"];
    $lkm = $k->tuoKokoelmasta($mista, $mihin, $kuka);
    $data["lkm"]=$lkm;        
}
$data=json_encode($data);
header("Content-type: application/json");
echo $data;
?>