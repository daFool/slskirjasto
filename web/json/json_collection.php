<?php
require("../globals.php");
require("$basepath/helpers/common.php");
$d = array();
$c = new SLSCOLLECTIONS($db);
if(!isset($_REQUEST["id"])) {
    $d["virhe"]=_("Ei haettavaa kokoelmaa!");
    header("Content-type: application/json");
    echo json_encode($d);
    die();
}
if(isset($_SESSION['user'])) {
    $kuka = isset($_SESSION['user']['tunniste']) ? $_SESSION['user']['tunniste'] : "";
    $tila = isset($_SESSION['user']['tila']) ? $_SESSION['user']['tila'] : "";
}
else {
    $kuka ="";
    $tila="";
}
$r = $c->get($_REQUEST["id"], $kuka, $tila);
header("Content-type: application/json");
echo json_encode($r);
?>