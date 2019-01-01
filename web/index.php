<?php
/**
 * Kirjastosovelluksen starttisivu
 *
 * PHP version 7.1
 * 
 * @category  Main
 * @package   SLS
 * @author    Mauri "mos" Sahlberg <mauri.sahlberg@gmail.com>
 * @copyright 2018 Mauri Sahlberg, Helsinki 
 * @license   Apache License, Version 2.0 https://opensource.org/licenses/Apache-2.0
 * @link      www.iki.fi/mos
 **/

namespace SLS;

$mosBase = getenv("MOSBASE");
if (!$mosBase) {
    die("Environment not properly set! (MOSBASE)");
}

$slsConfig = getenv("SLSCONFIG");
if (!$slsConfig) {
    die("Environment not properly set! (SLSCONFIG)");
}
require "$mosBase/util/Config.php";

$conf = new \mosBase\Config();
if (!$conf->init($slsConfig)) {
    die("Konfiguraation lukeminen epäonnistui!");
}

$dbconf = $conf->get("Database");

try {
    $pdo = new \mosBase\Database(
        $dbconf["dsn"],
        $dbconf["user"],
        $dbconf["password"]
    );
} catch(PDOException $e) {
    die(sprintf("Database error: %s", $e->getMessage()));
}

require $conf->get("General")["vendor"];


$log = new \mosBase\Log(\mosBase\Log::DEBUGMB, $pdo);

$c = new Controller($conf, $pdo, $log);
$c->session();

$f3=include $conf->get("General")["f3"];
if ($f3===false) {
    die("Unable to initialize Fat Free Core");
}

$f3->set("conf", $conf);
$f3->set("db", $pdo);
$f3->set("log", $log);

$f3->route(
    "GET /",
    function ($f3) {
        $conf = $f3->get("conf");
        $db=$f3->get("db");
        $log=$f3->get("log");
        $loader = new \Twig_Loader_Filesystem($conf->get("Twig")["twigTemplates"]);
        $twig = new \Twig_Environment($loader);
        $basepath = $conf->get("General")["basepath"];
        include_once "$basepath/view/language.php";
        $sivu = new vEtusivu($twig, $t, $conf);
        $sivu->nayta("etusivu.html");    
    }
);

$f3->redirect('GET /index.php', '/');
$f3->map("/collections", '\SLS\Collections');
$f3->map("/games", '\SLS\Games');
$f3->map("/login", '\SLS\Login');
//$f3->map("/collection", '\SLS\Collection');
$f3->map("/collectiongames", '\SLS\Collectiongames');
$f3->map("/kayttajat", '\SLS\Kayttajat');
$f3->map("/kortit", kortit);
$f3->map("/lainat", lainat);
$f3->run();
