<?php
/**
 * Javascript-palvelu pelien listaamiseen
 * 
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 * @uses globals.php
 * @uses database.php
 * @uses games.php
 * */
require_once("../globals.php");
require_once("$basepath/helpers/common.php");

$a = array("nimi", "bggrank", "bgglinkki", "kesto", "pelaajia",  "vuosi");
$g = new SLSGAMES($db);
$j = new JsonGames($a, $g);

$jason = $j->tableFetch();

header("Content-type: application/json");
echo json_encode($jason);
?>