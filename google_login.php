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
require ("$basepath/vendor/google-api-php-client/vendor/autoload.php");
// require_once ("$basepath/helpers/google/autoload.php");


$google_client= new Google_Client();
$google_client->setAuthConfigFile("$privatepath/google.json");
$google_client->setRedirectUri(REDIRECT_URI);
$google_client->setScopes(array('https://www.googleapis.com/auth/userinfo.profile'));

if (isset($_GET['code'])) {
    $google_client->authenticate($_GET['code']);
    $token = $google_client->getAccessToken();
    $_SESSION['access_token']=$token;
    $_SESSION['loggedin']=true;
    $_SESSION['registered']=false;
    $ticket = $google_client->verifyIdToken($token->id_token);
    $google_id = $ticket['sub'];
    $_SESSION['google_id']=$google_id;
    $users = new SLSUSERS($db);
    $res = $users->fetchWithGoogleId($google_id);
    if($res===false) {
        session_commit();
        $target="{$baseurl}/forms/register.php";
        header("Location: $target");
    } else {
        $_SESSION['user']=$res;
        session_commit();
        $db->log(sprintf(_("Käyttäjä %s Google-kirjautui."), $_SESSION['user']['tunniste']), __FILE__,__FUNCTION__,__LINE__, "AUDIT");
        $target="{$baseurl}/index.php";
        header("Location: $target");
    }
}
?>
