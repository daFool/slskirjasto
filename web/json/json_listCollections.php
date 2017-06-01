<?php
require("../globals.php");
require("$basepath/helpers/common.php");

if(isset($_SESSION["user"])) {
    $user=$_SESSION["user"]["tunniste"];
    $taso=$_SESSION["user"]["tila"];
} else {
    $user="";
    $taso="";
}

$filter = isset($_REQUEST["kokoelma"]) ? $_REQUEST["kokoelma"] : false;

$k = new SLSCOLLECTIONS($db);
$kokoelmat = $k->getCollectionNames_json($user, $taso, $filter);
header("Content-type: application/json");
echo $kokoelmat;
?>