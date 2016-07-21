<?php
require_once("../globals.php");
require_once("$basepath/helpers/common.php");

$term = isset($_REQUEST["term"]) ? $_REQUEST["term"] : false;
$result = array(_("Ei hakutermiä"));

if($term !== false) {
    $vk = new vPeliKokoelmissa($db);
    $result = $vk->autoComplete("nimi", $term);
    if($result === false)
        $result=array();
    else {
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