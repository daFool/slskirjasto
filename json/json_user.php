<?php
require_once("../globals.php");
require_once("$basepath/helpers/common.php");
require("$basepath/helpers/maxrights.php");

$tunniste = isset($_REQUEST["tunniste"]) ? $_REQUEST["tunniste"] : false;
$u = new SLSUSERS($db);

$user = $u->fetchWithTunnus($tunniste);
header("Content-type: application/json");
echo json_encode($user);
?>