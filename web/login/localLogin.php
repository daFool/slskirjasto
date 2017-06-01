<?php
require_once("../globals.php");
require_once("$basepath/helpers/common.php");
  
$sivu = new vLogin($twig);
$sivu->nayta("login.html")
?>