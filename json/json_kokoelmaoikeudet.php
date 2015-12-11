<?php
/**
 * Javascript-palvelu, joka listaa oikeudet
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
$a = array("kohde", "kayttaja", "roolinimi", "kohdeavains");
$c = new Oikeudet($db);

if($_SESSION["user"]["tila"]=="superadmin" || $c->hasRole($_SESSION["user"]["tunniste"], "admin", "kokoelma", $_REQUEST["id"])) {
    $j = new JsonOikeudet($a, $c, $_REQUEST["id"], "kokoelma");
    $jason = $j->tableFetch();
}
header("Content-type: application/json");
echo json_encode($jason);
?>
