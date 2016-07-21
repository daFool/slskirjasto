<?php
/**
 * Lainaaja autocomplete
 *
 * Käytetään täydentävän javascript-kenttähässäkän tietolähteenä.
 *  
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 * */
require_once("../globals.php");
require_once("$basepath/helpers/common.php");

$term = isset($_REQUEST["term"]) ? $_REQUEST["term"] : false;
$result = array(_("Ei hakutermiä"));

if($term !== false) {
    $users = new SLSUSERS($db);
    $result = $users->searchWithNamePart($term);
    if($result === false)
        $result=array();
    else {
        $r = array();
        foreach($result as $r1) {
            array_push($r, $r1["nimi"]." / ".$r1["tunniste"]);
        }
        $result=$r;
    }
}
header("Content-type: application/json");
echo json_encode($result);
?>