<?php
/**
 * Javascript-palvelu, joka tuottaa listauksen korin peleistä
 * 
 * @uses globals.php
 * @uses database.php
 * @package SLS-Kirjasto
 * @subpackage Kori
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 **/
require_once("../globals.php");
require_once("$basepath/helpers/common.php");

$kori = isset($_REQUEST["nimi"]) ? $_REQUEST["nimi"] : "-1";
$k = new Kori($db);
$tulos = $k->exists(array("nimi"=>$kori));
$r=array("tulos"=>"Ei löytynyt $kori");
if($tulos!==false) {
    $tulos = $k->give();
    $k->asetaKori($tulos["id"]);
    $r["tulos"]="OK";
    $r["koritunniste"]=$tulos["id"];
}
header("Content-type: application/json");
echo json_encode($r);
?>