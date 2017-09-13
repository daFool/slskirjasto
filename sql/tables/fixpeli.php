#!/usr/bin/php
<?php
if($argc != 2) {
    echo "Usage: <kanta>($argc)\n";
    die;
}
$dbname=$argv[1];

$pdo = new PDO("pgsql:host=localhost;dbname=$dbname","sls","foobar");
$s = "select tunniste, nimi, p.bgglinkki from (select bgglinkki, count(*) as lkm from peli where bgglinkki is not null and bgglinkki <> '' group by bgglinkki having count(*)>1) as t join peli as p on t.bgglinkki=p.bgglinkki;
";
$st = $pdo->prepare($s);
$st->execute();
$rivit = $st->fetchALL(PDO::FETCH_ASSOC);
$bgglinkki="";
$id="";
foreach($rivit as $rivi) {
    if($bgglinkki=="" || $bgglinkki!=$rivi["bgglinkki"]) {
        $id = $rivi["tunniste"];
        $bgglinkki = $rivi["bgglinkki"];
        echo "$bgglinkki\n";
        continue;
    }
    $s = "update kokoelmapeli set peli=$id where peli=".$rivi["tunniste"].";";
    $st = $pdo->prepare($s);
    $st->execute();
    echo "$s\n";
    $s = "delete from peli where tunniste=".$rivi["tunniste"].";";
    $st = $pdo->prepare($s);
    $st->execute();
    echo "$s\n";
}

?>

