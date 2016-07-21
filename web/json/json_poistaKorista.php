<?php
/**
 * Peli(e)n poistaminen korista
 *
 * 
 * */
require("../globals.php");
require("$basepath/helpers/common.php");

$peli = isset($_REQUEST["peli"]) ? $_REQUEST["peli"] : false;
$kori = isset($_REQUEST["kori"]) ? $_REQUEST["kori"] : false;
$kaikki = isset($_REQUEST["kaikki"]) ? true : false;
$result = array("Virhe"=>_("Kori tai poistettavt pelit puuttuvat"));

if($kori !== false) {
    $k = new Kori($db);
    $user = isset($_SESSION['user']['tunniste']) ? $_SESSION['user']['tunniste'] : "";
    $result = array("Virhe"=>"OK");
    $res=true;
    
    if($k->exists(array("id"=>$kori))) {
        $ko = $k->give();
        if(isset($ko["omistaja"]) && $ko["omistaja"]!="") {            
            if($ko["omistaja"]!=$user) {
                $result["Virhe"]=_("Et ole korin omistaja.");
            }
            else {
                $res = $k->poistaPeli($kori, $peli, $kaikki);
            }
        }
        else
            $res = $k->poistaPeli($kori, $peli, $kaikki);
        if($res===false) {
           $result=array("Virhe"=>_("Pelin poistaminen korista ei onnistunut."));
        }
    } else
        $result=array("Virhe"=>_("Koria ei ole."));
}

header("Content-type: application/json");
echo json_encode($result);
?>