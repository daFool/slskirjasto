<?php
$mosBase = getenv("MOSBASE");
if(!$mosBase) { die("Environment not properly set! (MOSBASE)"); }

$slsConfig = getenv("SLSCONFIG");
if(!$slsConfig) { die("Environment not properly set! (SLSCONFIG)"); }
require("$mosBase/util/config.php");

$conf = new mosBase\config();
$conf->init($slsConfig);
$dbconf = $conf->get("Database");
try {
    $pdo = new PDO($dbconf["dsn"], $dbconf["user"], $dbconf["password"]);    
}
catch(PDOException $e) {
    die(sprintf("Database error: %s\n", $e->getMessage()));
}
require($conf->get("General")["vendor"]);
$f3=require($conf->get("General")["f3"]);
$f3->set("conf", $conf);
$f3->set("db", $pdo);
$log = new mosBase\log("DEBUG", $pdo);
$f3->set("log", $log);
$f3->route("GET /", function($f3) {
    $conf = $f3->get("conf");
    $db=$f3->get("db");
    $log=$f3->get("log");
    $c = new controller($conf, $db, $log);
    $c->session();
    $loader = new Twig_Loader_Filesystem($conf->get("Twig")["twigTemplates"]);
    $twig = new Twig_Environment($loader);
    $basepath = $conf->get("General")["basepath"];
    require_once("$basepath/view/language.php");
    $sivu = new vEtusivu($twig, $t, $conf);
    $sivu->nayta("etusivu.html");    
});
$f3->map("/collections", collections);
$f3->map("/games", games);
$f3->map("/login", login);

$f3->run();

?>