<?php
/**
 * Korin käsittely
 *
 * Lisäys, poisto jnpsp
 *
 * @package SLS-Kirjasto
 * @subpackage Kori
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 * @uses globals.php
 * @uses common.php
 * @uses \Kori \Kori Korin toiminnot
 * @uses \Kori->koriPallo() \Kori->koriPallo() Yritetään selvittää mitä koria käsitellään
 * @uses \Kori->give() \Kori->give() Haetaan oletuskori
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