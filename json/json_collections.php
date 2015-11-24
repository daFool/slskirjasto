<?php
/**
 * Javascript-palvelut, joka listaa kokoelmat
 * 
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 * @uses globals.php
 * @uses database.php
 * @uses collections.php
 * */
require_once("../globals.php");
require_once("$basepath/helpers/common.php");

/*
 * nimi, laji, omistaja, tapahtuma, lisatty
 * */
$a = array("nimi", "laji", "omistaja", "tapahtuma", "lisatty");
$c = new SLSCOLLECTIONS($db);
$j = new JsonBase($a, $c);
$jason = $j->tableFetch();

header("Content-type: application/json");
echo json_encode($jason);
?>