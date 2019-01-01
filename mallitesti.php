<?php
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
$pelit = new SLSGAMES($pdo, $log);
print_r($pelit->tableColumns($pdo, "peli"));
?>