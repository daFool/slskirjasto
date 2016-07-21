<?php
require("../globals.php");
require("$basepath/helpers/common.php");

$id = isset($_REQUEST["id"]) ? $_REQUEST["id"] : false;
$result = array("Virhe"=>_("Id puuttuu"));

if($id !== false) {
    $pt = new vPelinTila($db);
    $result = $pt->one("pt_tunniste", $id);
    if(!$result) {
        $result = array("Virhe"=>("Peliä annetulla tunnisteella ei löytynyt."));
    } else {
        $result = array("Virhe"=>"OK", "data"=>$result);
    }
}

header("Content-type: application/json");
echo json_encode($result);
?>