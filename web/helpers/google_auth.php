<?php
/**
 * Googlen tunnistuspalvelut
 *
 * Rajapinta googleen.
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 
 * */
// require_once ("$basepath/helpers/google/autoload.php");
require ("$basepath/vendor/google-api-php-client/vendor/autoload.php");

$google_client= new Google_Client();
$google_client->setAuthConfigFile("$privatepath/google.json");
$google_client->setRedirectUri(REDIRECT_URI);
$google_client->setScopes(array('https://www.googleapis.com/auth/userinfo.profile'));

if (isset($_SESSION['access_token'])) {
  $google_client->setAccessToken($_SESSION['access_token']);
}

if(!$google_client->getAccessToken()) {
    $url = $google_client->createAuthUrl();
    $status="No access token: $url";
}
else {
    $status="There is a token.";
}
?>