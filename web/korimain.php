<?php
/**
 * Korin käsittely
 *
 * Lisäys, poisto jnpsp
 *
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 * @uses globals.php
 * @uses users.php
 * @uses common.php
 * @uses collections.php
 *
 * */
require_once("globals.php");
require_once("$basepath/helpers/common.php");
/* require_once("$basepath/helpers/minrights.php"); */

$k = new Kori($db);
$k->koriPallo();
$ko = $k->give();
$kori = $ko["nimi"];
include_once("$basepath/view/html_base.html");
include_once("$basepath/view/korimain.php");

?>