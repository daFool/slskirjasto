<?php
require_once("../globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/adminrights.php");

$sivu = new vLainaaja($twig);
$sivu->nayta("register.html");
?>