<?php
/**
 * Kirjautuminen google-tunnuksilla
 * 
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 * @uses globals.php
 * @uses common.php
 * @uses google/autoload.php
 * @uses users.php
 * */
require_once ("globals.php");
require_once ("$basepath/helpers/common.php");
require_once ("$basepath/helpers/google/autoload.php");
require_once ("$basepath/helpers/users.php");

$google_client= new Google_Client();
$google_client->setApplicationName("SLS Kirjasto");
$google_client->setClientId('506856052789-fscqi2m8ldbhed48ct8lbremf1pmudsr.apps.googleusercontent.com');
$google_client->setClientSecret('1Nq-kZuIbxPJ_L7FrS1q_FSk');
$google_client->setRedirectUri(REDIRECT_URI);
$google_client->setScopes(array('https://www.googleapis.com/auth/userinfo.profile'));

if (isset($_GET['code'])) {
    $google_client->authenticate($_GET['code']);
    $_SESSION['access_token']=$google_client->getAccessToken();
    $_SESSION['loggedin']=true;
    $_SESSION['registered']=false;
    $ticket = $google_client->verifyIdToken();
    $google_id = $ticket->getUserId();
    $_SESSION['google_id']=$google_id;
    $users = new SLSUSERS($db);
    $res = $users->fetchWithGoogleId($google_id);
    if($res===false) {
        session_commit();
        $target=UrlMungler("{$baseurl}/forms/register.php");
        header("Location: $target");
    } else {
        $_SESSION['user']=$res;
        session_commit();
        $db->log(sprintf(_("Käyttäjä %s Google-kirjautui."), $_SESSION['user']['tunniste']), __FILE__,__FUNCTION__,__LINE__, "AUDIT");
        $target=UrlMungler("{$baseurl}/index.php");
        header("Location: $target");
    }
}
?>
