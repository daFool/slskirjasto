<?php
require("globals.php");
require("$basepath/helpers/common.php");
require("$basepath/helpers/minrights.php");

/**
 * Tarra-taulukko: paikka, viivakoodi, nimi, hylly ja hyllypaikka **/

$tunnisteet=isset($_REQUEST["codes"]) ? urldecode($_REQUEST["codes"]) : false;
$koko=isset($_REQUEST["koko"]) ? $_REQUEST["koko"] : 21;
if($koko<0 || $koko>24)
    $koko=21;
    
if($tunnisteet==false) {
    die(_("Ei tarroja"));
}
$tarrat = explode(";",$tunnisteet);
$lkm = count($tarrat)-1;
if($lkm>24) {
    die(sprintf(_("Liikaa %d tarroja. Enintään 24 kerralla"), $lkm));
}
$cg = new SLSCOLLECTIONGAMES($db);

$t = array();
foreach($tarrat as $numero=>$viivakoodi) {
    if($numero < 0 || $numero>($koko-1))
        continue;
    if($viivakoodi=="")
        continue;
    $game = $cg->haePeli($viivakoodi);
    $t[$numero]["viivakoodi"]=$viivakoodi;
    $t[$numero]["hylly"]=$game ? $game["hylly"] : "A";
    $t[$numero]["hyllypaikka"]=$game ? $game["paikka"] : $numero;
    $t[$numero]["nimi"]=$game ? $game["nimi"] : "Peli $numero";
    $t[$numero]["laatikko"]=$game ? $game["laatikko"] : $numero;
    $t[$numero]["noprint"]="";
}
if($koko <= 21) { 
    $css ="$baseurl/css/tarrat21.css";
    $koko = 21;
}
else {
    $css = "$baseurl/css/tarrat24.css";
    $koko = 24;
}
for($i=0;$i<$koko;$i++) {
    if(!isset($t[$i])) {
        $t[$i]["viivakoodi"]=$i;
        $t[$i]["hylly"]="";
        $t[$i]["hyllypaikka"]="";
        $t[$i]["nimi"]="";
        $t[$i]["laatikko"]="";
        $t[$i]["noprint"]=" noprint";
    }
}


require("$basepath/view/tarrasivu.php");
?>