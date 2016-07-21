<?php
require_once("../globals.php");
require_once("$basepath/helpers/common.php");

$term = isset($_REQUEST["term"]) ? $_REQUEST["term"] : false;
$result = array("Virhe"=>"Ei löytynyt");

if($term !== false) {
    $vk = new vPeliKokoelmissa($db);
    $r = $vk->haeAvain("nimi", $term, "tunniste");
    if($r !== false)
    {
        $g = new SLSGAMES($db);
        $r = $g->one("tunniste", $r);
        $result = array("Virhe"=>"OK", "data"=>$r);        
    }
}
header("Content-type: application/json");
echo json_encode($result);
?>
