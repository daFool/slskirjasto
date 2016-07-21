<?php
require_once("../globals.php");
require_once("$basepath/helpers/common.php");

$d = array();
$cg = new SLSCOLLECTIONGAMES($db);
if(!isset($_REQUEST['id'])) {
    $d["kilroy"]=_("Ei haettavaa peliä");
    header("Content-type: application/json");
    echo json_encode($d);
    die();
}
$r = $cg->haePeli($_REQUEST['id']);
header("Content-type: application/json");
echo json_encode($r);
?>