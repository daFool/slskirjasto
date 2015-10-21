<?php
/**
 * Etsii käyttäjiä, json-palvelu
 * 
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 * @uses globals.php
 * @uses database.php
 * @uses users.php
 * */
require_once("../globals.php");
require_once("$basepath/helpers/common.php");


$term = isset($_REQUEST["term"]) ? $_REQUEST["term"] : false;
$result = array(_("Ei hakutermiä"));

if($term !== false) {
    $db = new SLSDB();
    $users = new SLSUSERS($db);
    $result = $users->searchWithTunnistePart($term);
    if($result === false)
        $result=array();
    else {
        $r = array();
        foreach($result as $r1) {
            array_push($r, $r1["tunniste"]);
        }
        $result=$r;
    }
}
header("Content-type: application/json");
echo json_encode($result);
?>