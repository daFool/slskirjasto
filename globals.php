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
$dbuser=getenv('OPENSHIFT_POSTGRESQL_DB_USERNAME') ? getenv('OPENSHIFT_POSTGRESQL_DB_USERNAME') : 'sls';
$dbpassword=getenv("OPENSHIFT_POSTGRESQL_DB_PASSWORD") ? getenv("OPENSHIFT_POSTGRESQL_DB_PASSWORD") : 'foobar';
$dburl=getenv("OPENSHIFT_POSTGRESQL_DB_URL");
$dbport=getenv("OPENSHIFT_POSTGRESQL_DB_PORT") ? getenv("OPENSHIFT_POSTGRESQL_DB_PORT") : "5432";
$dbhost=getenv("OPENSHIFT_POSTGRESQL_DB_HOST") ? getenv("OPENSHIFT_POSTGRESQL_DB_HOST") : "10.1.0.110";
$dbhost="192.168.98.58";
$dbname="slskirjasto";

$dsn="pgsql:host=$dbhost;port=$dbport;dbname=$dbname";
$baseurl=getenv('OPENSHIFT_POSTGRESQL_DB_USERNAME') ? "http://slskirjasto-claymountain.rhcloud.com" : "http://localhost/~mos/slskirjasto";
$basepath=__DIR__;

/** @var SESSION_TIMEOUT int Istunnon kesto sekunneissa */
define("SESSION_TIMEOUT", 40*60);
/** @var SESSION_NAME string Istunnon nimi */
define("SESSION_NAME", "slskirjasto");
/** @var SESSION_COOKIEPATH string Evästeen polku */
define("SESSION_COOKIEPATH", "/");
/** @var REDIRECT_URI string Googlen autentikaation urli */
define("REDIRECT_URI", "$baseurl/google_login.php");
ini_set('session.referer_check', "");
define("URL_MUNGLER", true);
?>
