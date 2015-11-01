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
require_once("../globals.php");
require_once("$basepath/helpers/common.php");

$geekurl = isset($_REQUEST['geekurl']) ? urldecode($_REQUEST['geekurl']) : "http://www.boardgamegeek.com/boardgame/172933/dragonwood";
$geek = new SLSGEEK($geekurl);
$d = $geek->getResult();
header("Content-type: application/json");
if($d["virhe"]===false)
    $d["virhe"]="False";
echo json_encode($d);
?>