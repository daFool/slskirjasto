#!/usr/bin/php
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
$basepath=$conf->get("General")["basepath"];
require("$basepath/view/language.php");
if ($argc !=3) {
    die(sprintf($t["vaihdasalasanakaytto"], $argc));
}
$log = new mosBase\log("DEBUG", $pdo);
$user = new SLSUSERS($pdo, $log );
$user->vaihdaSalasana($argv[1], $argv[2]);
printf ($t["salasanavaihdettucmd"], $argv[1], $argv[2]);
?>