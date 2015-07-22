<?php
/**
 * Onko kirjautunut?
 *
 * Huolehtii siitä, että käyttäjä on vähintään kirjautunut - eikä ole lainaaja.
 * @uses globals.php
 * @uses common.php
 * @uses users.php
 * 
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 * */

$user = isset($_SESSION['user']) ? $_SESSION['user'] : false;
$loggedin = isset($_SESSION['loggedin']) ? $_SESSION['loggedin'] : false;

if(!$user || !$loggedin) {
    header("Location: $baseurl/index.php");
    die();
}
if($user["tila"]=="lainaaja" || $user["tila"]=="prospekti") {
    $target = UrlMungler("{$baseurl}/index.php");
    header("Location: $target");
    die();
}
?>