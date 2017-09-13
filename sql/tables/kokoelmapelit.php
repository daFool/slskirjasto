#!/usr/bin/php
<?php
if($argc != 3) {
    echo "Usage: <srckanta> <dstkanta> ($argc)\n";
    die;
}
$dbname=$argv[1];
$dbname2=$argv[2];
$pdo = new PDO("pgsql:host=localhost;dbname=$dbname","sls","foobar");
$dst = new PDO("pgsql:host=localhost;dbname=$dbname2", "sls", "foobar");
$s = "select * from kokoelmapeli;";

$st = $pdo->prepare($s);
$st->execute();
$rivit = $st->fetchALL(PDO::FETCH_ASSOC);
$bgglinkki="";
$id="";
foreach($rivit as $rivi) {
    $lid=null;
    if($rivi["lahjoittaja"]!="") {
        $s = "select * from lahjoittaja where nimi=:lahjoittaja;";
        $st = $pdo->prepare($s);
        $st->execute(array("lahjoittaja"=>$rivi["lahjoittaja"]));
        $l = $st->fetch(PDO::FETCH_ASSOC);
        $lid=$l["id"]??null;
    }
    $s = "select id from kokoelma where nimi=:nimi";
    $st = $dst->prepare($s);
    $st->execute(array("nimi"=>$rivi["kokoelma"]));
    $r = $st->fetch(PDO::FETCH_ASSOC);
    $kokoelma = $r["id"];
    
    $d=array("lahjoittaja"=>$lid, "kokoelma"=>$kokoelma);
    foreach($rivi as $c=>$v) {
        switch($c) {
            case "lahjoittaja":
            case "kokoelma":
            case "varasto":
                break;            
            case "lisatty":
                $d["luotu"]=$v;
                break;
            case "lisaaja":
                $d["luoja"]=$v;
                break;
            case "huomautus":
                $d["huomautus"]=$v;
                $d["tila"]="OK";
                if(preg_match("/.*kateissa:.*/i", $d["huomautus"]))
                    $d["tila"]="MISS";
                if(preg_match("/.*poistet.*/i", $d["huomautus"]))
                    $d["tila"]="DEL";
                break;
            default:
                $d[$c]=$v;
                break;
        }
    }
    $s="insert into kokoelmapeli (kokoelma, peli, omistaja, lahjoittaja, hylly, paikka, laatikko, kunto, huomautus, tunniste, tuotu,
    tuotukokoelmasta, alkuperainentunniste, tila, muokattu, muokkaaja, luotu, luoja)
    values (:kokoelma, :peli, :omistaja, :lahjoittaja, :hylly, :paikka, :laatikko, :kunto, :huomautus, :tunniste, :tuotu,
    :tuotukokoelmasta, :alkuperainentunniste, :tila, :muokattu, :muokkaaja, :luotu, :luoja);";
    $st = $dst->prepare($s);
    $res = $st->execute($d);
    if(!$res) {
        var_dump($st->errorInfo());
        die;
    }
}

?>

