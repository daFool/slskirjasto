<?php
/**
 * Pelin lisääminen koriin
 *
 * Etsitään ensin kori, jos sellaista ei ole luodaan sellainen.
 * */
require("../globals.php");
require("$basepath/helpers/common.php");

$id = isset($_REQUEST["id"]) ? $_REQUEST["id"] : false;
$result = array("Virhe"=>_("Id puuttuu"));

if($id !== false) {
    $kori = new Kori($db);
    $res = $kori->koriPallo(false, false);
    $user = isset($_SESSION['user']['tunniste']) ? $_SESSION['user']['tunniste'] : "";
    if($res===false && $user!="") {
        
        $res = $kori->koriPallo($user, false);
    }
    if($res===false) {
        $res = $kori->luoKori($user, $id);
    }
    else {
        $res = $kori->lisaaPeli($_SESSION["kori"], $id);
    }
    if(!$res) {
        $result = array("Virhe"=>("Pelin lisääminen koriin ei onnistunut."));
    } else {
        $result = array("Virhe"=>"OK");
    }
}

header("Content-type: application/json");
echo json_encode($result);
?>