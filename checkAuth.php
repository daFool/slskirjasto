<?php
/**
 * Paikallisen kirjautumisen tarkistus.
 *
 * forms/login kutsuu tätä tarkistaakseen onko käyttäjän kirjautminen validi vai ei.
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 * @uses database.php
 * @uses users.php
 * @uses globals.php
 * */

require_once("globals.php");
require_once("helpers/common.php");

/**
 * Virhe kirjautumisessa
 *
 * Asettaa virheilmoitusparametrin get-pyynnölle ja siirtää takaisin kirjautumissivulle
 *
 * @param string $message Virheilmoitus
 * */
function error($message) {
    global $baseurl;
    $url="$baseurl/view/forms/login.php?";
    $params="error=$message";
    header("Location: {$url}{$params}");
    die();
}

$salasana = isset($_POST['salasana']) ? $_POST['salasana'] : false;
$ktunnus = isset($_POST['ktunnus']) ? $_POST['ktunnus'] : false;

if($salasana===false || $ktunnus===false)
    error(_("Käyttäjätunnus tai salasana puuttui."));

$users = new SLSUSERS($db);
if($users->checkLocalAuth($salasana, $ktunnus)===false)
    error(_("Huono käyttäjätunnus tai salasana"));

$_SESSION["loggedin"]=true;
$_SESSION["user"]=$users->fetchWithTunnus($ktunnus);
if($_SESSION['user']===false) {
    die(_("WTF? Kirjautunut, mutta ei tietoja?"));
}
$db->log(sprintf(_("Käyttäjä %s kirjautui paikallisesti."), $ktunnus),__FILE__,__FUNCTION__,__LINE__, "AUDIT");
$target="{$baseurl}/index.php";
header("Location: $target");
?>