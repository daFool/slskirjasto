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

 /**
  * Class autoloading
  * @param string $class Name of the class to autoload
  * */
 function autoload($class) {
    global $basepath;
    global $vendorpaths;
    
    if(file_exists("$basepath/model/$class.php")) {
        require("$basepath/model/$class.php");
        return;
    }
    elseif(file_exists("$basepath/helpers/$class.php")) {
        require("$basepath/helpoers/$class.php");
    }
    else {
        foreach($vendorpaths as $vp) {
            if(file_exists("$basepath/$vp/$class.php")) {
                require("$basepath/$vp/$class.php");
                break;
            } else {
                if(file_exists("$basepath/$vp/$class.barcode.php")) {
                    require("$basepath/$vp/$class.barcode.php");
                    break;
                }
            }
        }
    }    
 }

spl_autoload_register('autoload');
 
$db=false;
require_once("$basepath/session.php");
require_once("$basepath/helpers/database.php");

try {
    if($db===false)
        $db = new SLSDB();
}
catch (Exception $e) {
    die(_("Tietokanta ei auennut."));
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
    global $email_auth;
    
    $from = $email_from;
    $host = $email_host;
    $username = $email_user;
    $password = $email_password;
    $headers = array ('From' => $from,   'To' => $to,   'Subject' => $subject);
    if($email_auth) 
        $smtp = Mail::factory('smtp',   array ('host' => $host,     'auth' => true,     'username' => $username,     'password' => $password));
    else
        $smtp = Mail::factory('smtp', array('host'=>$host, 'auth'=>false));
        
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