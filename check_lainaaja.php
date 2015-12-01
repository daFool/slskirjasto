<?php
/**
 * Javascript-palvelu, joka etsii lainaajan tietoja.
 * 
 * Lainaajan tietoja etsitään joko nimellä, käyttäjätunnuksella tai Lautapeliseuran jäsennumerolla.
 * Tiedostoa käyttää lainaus.php:ssä kolme javascript-täydennyksellä varustettua kenttää.
 *
 * @uses globals.php
 * @uses database.php
 * @uses users.php
 * @package SLS-Kirjasto
 * @subpackage Javascript-palvelut
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 **/

require_once("../globals.php");
require_once("$basepath/helpers/common.php");

/**
 * @var string Nimi, jolla lainaajaa haetaan.
 *
 * */
$lainaaja= isset($_REQUEST["nimi"]) ? $_REQUEST["nimi"] : false;
$tunniste = isset($_REQUEST["tunniste"]) ? $_REQUEST["tunniste"] : false;
$jasennumero = isset($_REQUEST["jasennumero"]) ? $_REQUEST["jasennumero"] : false;

$result = array(_("Ei hakutermiä"));
$users = new SLSUSERS($db);
    
if($lainaaja !== false) {
    @list($foo, $tunniste)=explode("/",$lainaaja);
    $result = $users->lainausCheck("tunniste", trim($tunniste));  
}
elseif ($tunniste!==false) 
    $result = $users->lainausCheck("tunniste", $tunniste);
elseif ($jasennumero!==false)
    $result = $users->lainausCheck("slsjasennumero", $jasennumero);

if($result === false || count($result)>1)
    $result=array();

header("Content-type: application/json");
echo json_encode($result);
?>
