<?php
/**
 * Onko superadmin?
 *
 * Huolehtii siitä, että käyttäjä kävelee vetten päällä...
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
if($user["tila"]!="superadmin") {
    $target = UrlMungler("{$baseurl}/index.php");
    header("Location: $target");
    die();
}
?>