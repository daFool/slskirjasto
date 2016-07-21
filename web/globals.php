<?php
/**
 * Globaalit parametrit
 *
 * Tietokanta-asetukset, istuntoasetukset
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 * */

ini_set("variables_order","EGPCS");
ini_set('session.referer_check', "");

$dbuser=getenv('OPENSHIFT_POSTGRESQL_DB_USERNAME');
$basepath=__DIR__;
if($dbuser===false) {
    define("ENV","Test");    
    $dbuser='sls';
    $dburl="";
    $dbport="5432";
    $dbhost="localhost";
    $dbname="slskirjasto";
    $baseurl="http://localhost/slskirjasto/web";
    $privatepath="$basepath/..";
}
else {
    define("ENV", "Production");
    $dbpassword=getenv("OPENSHIFT_POSTGRESQL_DB_PASSWORD");
    $dburl=getenv("OPENSHIFT_POSTGRESQL_DB_URL");
    $dbport=getenv("OPENSHIFT_POSTGRESQL_DB_PORT");
    $dbhost=getenv("OPENSHIFT_POSTGRESQL_DB_HOST");
    $baseurl="http://slskirjasto-claymountain.rhcloud.com";
    $dbname="slskirjasto";
    $privatepath="/var/lib/openshift/545605614382ec3a89000467/app-root/runtime/repo/";
    
}

require("$privatepath/private.php");

$dsn="pgsql:host=$dbhost;port=$dbport;dbname=$dbname";

define("SESSION_TIMEOUT", 40*60);
define("SESSION_NAME", "slskirjasto");
define("SESSION_COOKIEPATH", "/");
define("KORIPIPARI", "AnnasPepperkaka");
define("KORI_TIMEOUT", 60*60*24*30);
define("REDIRECT_URI", "$baseurl/google_login.php");
define("WORDLIST", "$privatepath/words.txt");
define("URL_MUNGLER", true);
$vendorpaths=array("vendor/barcodegen.1d-php5.v5.2.1/class");
define("BARCODE", "/^[a-zA-Z0123456789]{1,6}$/");
$fontPath="$basepath/vendor/barcodegen.1d-php5.v5.2.1/font/Arial.ttf";
?>
