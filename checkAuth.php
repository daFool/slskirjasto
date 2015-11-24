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

$paluu="view/forms/login.php";
$salasana = isset($_POST['salasana']) ? $_POST['salasana'] : false;
$ktunnus = isset($_POST['ktunnus']) ? $_POST['ktunnus'] : false;

if($salasana===false || $ktunnus===false)
    error(_("Käyttäjätunnus tai salasana puuttui."), $paluu);

$users = new SLSUSERS($db);
if($users->checkLocalAuth($salasana, $ktunnus)===false)
    error(_("Huono käyttäjätunnus tai salasana"), $paluu);

$_SESSION["loggedin"]=true;
$_SESSION["user"]=$users->fetchWithTunnus($ktunnus);
if($_SESSION['user']===false) {
    $m = sprintf(_("Käyttäjä %s kirjautui, muttei käyttäjätietoja"), $ktunnus);
    $db->log($m, __FILE__, __FUNCTION__, __LINE__, "ERROR");
    die($m);
}
$db->log(sprintf(_("Käyttäjä %s kirjautui paikallisesti."), $ktunnus),__FILE__,__FUNCTION__,__LINE__, "AUDIT");
$target="{$baseurl}/index.php";
header("Location: $target");
?>