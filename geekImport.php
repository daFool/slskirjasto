<?php
require("globals.php");
require("$basepath/helpers/common.php");

if($argc !=2) {
    die("geekImport [force|ranks|missing] {$argc}");
}

$g = new SLSGAMES($db);
$games = $g->all(true);
$first=true;

foreach($games as $game) {
    $geekurl=isset($game["bgglinkki"]) && $game["bgglinkki"]!="" ? $game["bgglinkki"] : false;
    if(!$geekurl) {
        echo "{$game["nimi"]} ei bgglinkkiä\n";
        continue;
    }
    if($first) {
        $ge = new SLSGEEK($geekurl);
        $first=false;
    } else {
        $ge->init($geekurl);
    }
    $d = $ge->getResult();
    
    if($d["virhe"]) {
        echo "{$game["nimi"]} {$d["virhe"]} {$geekurl}\n";
        echo "{$game["nimi"]} haku ei onnistunut, unta 5 sekuntia.\n";
        sleep(5);
        $ge->init($geekurl);
        $d = $ge->getResult();
        echo "{$game["nimi"]} haku ei onnistunut nukkumatinkaan jälkeen, skipataan 5 sekunnin päästä.\n";
        sleep(5);
        continue;
    }
    echo "Success: {$game["nimi"]}\n";
    $a = array();
            
    switch($argv[1]) {
        case "force":
            break;
        case "missing":
            foreach($d as $key=>$value) {
                if(!isset($game[$key]) || $game[$key]=="" || $game[$key]==-1) {
                    $a[$key]=$value;
                }
            }
            $a["tunniste"]=$game["tunniste"];
            if(isset($a["bggrank"]) && $a["bggrank"]=="Not Ranked")
                $a["bggrank"]=-1;
            $g->updateGameBGG($a, "Missing");
            break;
        case "ranks":
            $a["tunniste"]=$game["tunniste"];
            $a["bggrank"]=$d["bggrank"];
            $g->updateGameBGG($a, "Ranks");
            break;
    }
    
}
?>