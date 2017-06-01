<?php
require_once("../globals.php");
require_once("$basepath/helpers/common.php");

$term = isset($_REQUEST["term"]) ? $_REQUEST["term"] : false;
$result = array();

if($term !== false) {
    $k = new Kori($db);
    $result = $k->haeNimenOsalla($term);
    if($result!==false) {
        $r=array();
        foreach($result as $key=>$value) {
            $r[$key]=$value["nimi"];
        }
        $result=$r;
    }
}
header("Content-type: application/json");
echo json_encode($result);
?>