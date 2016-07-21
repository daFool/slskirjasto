<?php
require("../globals.php");
require("$basepath/helpers/common.php");
require("$basepath/helpers/minrights.php");

try {
    $teksti = isset($_REQUEST["teksti"]) ? $_REQUEST["teksti"] : false;
    $koodi = new Viivakoodi($fontPath, $teksti);    
    $koodi->viivakoodi();
}
catch(BCGParseException $be) {
    $koodi = new Viivakoodi($fontPath, "123");
    $koodi->virhe();
}

?>