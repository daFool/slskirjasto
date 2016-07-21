<?php
/**
 * Pääsivu
 *
 * Näytetään Datatablesilla kaikki pelit ja kokoelmat, joita kannasta löytyy. Peliä klikkaamalla pääsee pelitietoihin. Oikeuksista riippuen
 * voi muokata, poistaa ja lisätä pelejä. Rekisteröityneet voivat lisätä peleihin tageja ja arvioita.
 *
 * Kokoelmissa pääsee ylläpitämään kokoelmia, sekä lainaamaan tai palauttamaan kokoelmien pelejä. Rekistöröityneet voivat luoda omia kokoelmia.
 * 
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 * @uses globals.php
 * @uses users.php
 * @uses common.php
 * */

require_once("globals.php");
require_once("$basepath/helpers/common.php");

if(isset($_SESSION["collection_default"]))
  unset($_SESSION["collection_default"]);
  
if(isset($_SESSION["collection_id"]))
  unset($_SESSION["collection_id"]);
  
require_once("$basepath/view/etusivu.php");
?>
