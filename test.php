<?php
require_once("globals.php");
require_once("helpers/database.php");

try {
    $db = new SLSDB();
}
catch(Exception $e) {
    print_r($e);
}
?>