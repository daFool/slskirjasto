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
$lainaaja = isset($_REQUEST["kuka"]) ? $_REQUEST["kuka"] : false;

$data = array("lkm"=>0);
if($mista!==false && $mihin!==false && $lainaaja!==false) {
    $kori = new Kori($db);
    if($kori->exists(array("nimi"=>$mista))) {
        $koriid = $kori->give()["id"];
        $pelit = $kori->haeKorinPelit($koriid);
        $lainat = new SLSLainat($db);
        $kuka = $_SESSION["user"]["tunniste"];
        $kokoelmat = new SLSCOLLECTIONGAMES($db);
        $lkm=0;
        foreach($pelit as $peli) {
            $res = $kokoelmat->tuoKokoelmasta($peli["kokoelma"], $mihin, $kuka, $peli["pt_tunniste"]);
            if($res==1) {
                @list($nimi, $tunniste) = explode("/", $lainaaja);
                $tunniste=trim($tunniste);
                if($lainat->Lainaa($peli["pt_tunniste"], $mista, $tunniste, "Kokoelmalaina")==False)
                    break;
                $lkm++;
            }
        }
        $data["lkm"]=$lkm;
    }
}
$data=json_encode($data);
header("Content-type: application/json");
echo $data;
?>