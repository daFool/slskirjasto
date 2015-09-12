<?php
/**
 * Hakee pelin tiedot Boardgamegeekistä
 * 
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 * @uses globals.php
 * @uses common.php
 * */
require_once("globals.php");
require_once("$basepath/helpers/common.php");

// http://www.boardgamegeek.com/xmlapi/boardgame/172933

/*
 
<yearpublished>2015</yearpublished>
<minplayers>2</minplayers>
<maxplayers>4</maxplayers>
<playingtime>20</playingtime>
<minplaytime>20</minplaytime>
<maxplaytime>20</maxplaytime>
<age>8</age>
<boardgamepublisher objectid="108">Gamewright</boardgamepublisher>
<boardgamedesigner objectid="82201">Darren Kisgen</boardgamedesigner>
*/

function persilja($dom, $tagi) {
    $e = $dom->getElementsByTagName($tagi);
    $v="";
    foreach($e as $py) {
        $v.=" ";
        $v.=$py->nodeValue;
    }
    return $v;
}

$geekurl = isset($_REQUEST['geekurl']) ? urldecode($_REQUEST['geekurl']) : "http://www.boardgamegeek.com/boardgame/172933/dragonwood";
$d = array();
$d["virhe"]=_("Huono geek-urli");

$re = '/.*\/([0123456789]+)\/.*$/';
if (preg_match($re, $geekurl, $m)) {
    $file = file_get_contents("http://www.boardgamegeek.com/xmlapi/boardgame/{$m[1]}");
    $dom = new DOMDocument();
    $res = $dom->loadXML($file);
    $year = persilja($dom, "yearpublished");
    $min = persilja($dom, "minplayers");
    $max = persilja($dom, "maxplayers");
    $aika = persilja($dom, "playingtime");
    $julkaisija = persilja($dom, 'boardgamepublisher');
    $suunnittelija = persilja($dom, 'boardgamedesigner');
    $nimi = persilja($dom, 'name');
    
    $d = array();
    $d["vuosi"]=trim($year);
    $d["pelaajia"]=trim("$min -$max");
    $d["julkaisija"] = trim($julkaisija);
    $d["suunnittelija"] = trim($suunnittelija);
    $d["virhe"]="False";
    $d["nimi"]=trim($nimi);
    $d["aika"]=trim($aika);
}
header("Content-type: application/json");
echo json_encode($d);
?>