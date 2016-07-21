<?php
require_once("../globals.php");
require_once("$basepath/helpers/common.php");

$peli = isset($_REQUEST["peli"]) ? $_REQUEST["peli"] : false;
$kokoelma = isset($_REQUEST["kokoelma"]) ? $_REQUEST["kokoelma"] : false;
$result = array("Virhe"=>"Ei löytynyt");

if($peli!== false && $kokoelma!==false) {
    $vk = new vPeliKokoelmissa($db);
    $r = $vk->tuoKokoelmasta($peli, $kokoelma);
    if($r !== false)
    {
        $result["Virhe"]="OK";
        $result["data"]=$r;        
    }
}
header("Content-type: application/json");
echo json_encode($result);
?>