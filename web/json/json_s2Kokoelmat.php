<?php
require_once("../globals.php");
require_once("$basepath/helpers/common.php");

$term = isset($_REQUEST["nimi"]) ? $_REQUEST["nimi"] : false;
$result = array("Virhe"=>"Ei löytynyt");

if($term !== false) {
    $vk = new vPeliKokoelmissa($db);
    $r = $vk->select2($term);
    if($r !== false)
    {
        $result["Virhe"]="OK";
        $result["data"]=array();
        $i=0;
        foreach($r as $r1) {
            $result["data"][$i]["id"]=$r1["kokoelma"];
            $result["data"][$i++]["text"]=$r1["kokoelma"];            
        }        
    }
}
header("Content-type: application/json");
echo json_encode($result);
?>