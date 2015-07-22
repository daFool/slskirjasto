<?php
/**
 * Yleiskäyttöisiä funktioita
 *
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 * @uses session.php
 * @uses database.php
 * 
 * */

require_once("$basepath/session.php");
require_once("$basepath/helpers/database.php");

try {
    $db = new SLSDB();
}
catch (Exception $e) {
    die("Ooops, joku törmäsi ovenpieleen...");
}

/**
 * Sähköpostin lähettäminen
 *
 * Käyttää PEAR::Mail.php:tä.
 * 
 * @param string $to Kenelle postia lähetellään
 * @param string $subject Sähköpostin otsikko
 * @param string $message Sähköpostiviesti
 * @param string $headers Lentävät roskikseen
 * @return boolean True, Kuolee jos postin lähettäminen ei onnistu
 * */
function SLSMail($to, $subject, $message, $headers) {
    require_once "Mail.php";
    global $email_user;
    global $email_password;
    global $email_from;
    global $email_host;
    
    $from = $email_from;
    $host = $email_host;
    $username = $email_user;
    $password = $email_password;
    $headers = array ('From' => $from,   'To' => $to,   'Subject' => $subject); 
    $smtp = Mail::factory('smtp',   array ('host' => $host,     'auth' => true,     'username' => $username,     'password' => $password));  
    $mail = $smtp->send($to, $headers, $message);  
    if (PEAR::isError($mail)) {   die("<p>" . $mail->getMessage() . "</p>");  }
    return true;
}

/**
 * Urlin mutilointi, jottei Chrome tai kaverit cacheta
 *
 * Mutilointi riippuu globals.php:stä löytyvästä URL_MUNGLER-vakiosta
 * 
 * @param string $url Osoite, jonka perään tuupataan ylimääräinen muuttuva parametri
 * @return string $url Mukiloitu url
 *
 * */
 function UrlMungler($url) {
    if (!URL_MUNGLER)
        return $url;
    $pid = posix_getpid();
    $nyh = time();
    $onre="/.*[&?].*/";
    if(preg_match($onre, $url)) {
        $url.="&pid=$pid&nyh=$nyh";
        return $url;
    }
    $url.="?pid=$pid&nyh=$nyh";
    return $url;
 }
?>