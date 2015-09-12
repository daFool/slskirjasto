<?php
/**
 * Kokoelman käsittely
 *
 * Lainaus, lisäys, poisto jnpsp
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
require_once("$basepath/helpers/minrights.php");

$collection = isset($_REQUEST["collection"]) ? $_REQUEST["collection"] : false;

if($collection===false) {
	header("Location: index.php");
	die();
 }
 include_once("$basepath/view/html_base.html");
 include_once("$basepath/view/collectionmain.php");
