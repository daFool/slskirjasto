<?php
require_once("../globals.php");
require_once("$basepath/helpers/common.php");

$sivu = new vRegister($twig, "kayttaja");
$sivu->nayta("register.html");
?>