<?php
require("globals.php");
require("$basepath/helpers/common.php");
require("$basepath/helpers/minrights.php");

/**
 * Tarra-taulukko: paikka, viivakoodi, nimi, hylly ja hyllypaikka **/

$tunnisteet=isset($_REQUEST["codes"]) ? urldecode($_REQUEST["codes"]) : false;
if($tunnisteet==false) {
    die(_("Ei tarroja"));
}
$tarrat = explode(";",$tunnisteet);
$lkm = count($tarrat);
if(count($lkm)>21) {
    die(sprintf(_("Liikaa %d tarroja. Enintään 21 kerralla"), $lkm));
}
$cg = new SLSCOLLECTIONGAMES($db);

$t = array();
foreach($tarrat as $numero=>$viivakoodi) {
    if($numero < 0 || $numero>20)
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
for($i=0;$i<21;$i++) {
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