<?php
require_once("globals.php");
require_once("$basepath/helpers/common.php");

if(isset($_SESSION["collection_default"]))
  unset($_SESSION["collection_default"]);
  
if(isset($_SESSION["collection_id"]))
  unset($_SESSION["collection_id"]);
  
$sivu = new vEtusivu($twig);
$sivu->nayta("etusivu.html");
?>