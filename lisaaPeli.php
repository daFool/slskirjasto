<?php
/**
 * Pelin lisääminen kokoelamaan
 *
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 * @uses globals.php
 * @uses users.php
 * @uses common.php
 * @uses collections.php
 * @uses collectionGames.php
 * @uses lahjoittajat.php
 * @uses games.php
 *
 * */
require_once("globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/maxrights.php");

$paluu = isset($_SESSION["paluu"]) ? $_SESSION["paluu"] : false;

function tv($nimi, $def=false, &$ra=false) {
    $arvo = isset($_POST[$nimi]) ? $_POST[$nimi] : $def;
    if($ra!==false)
        $ra[$nimi]=$arvo;
    return $arvo;
}

$ra=array();
$collection = tv("kokoelma", false, $ra);
$nimi = tv("nimi", false, $ra);
$suunnittelija= tv("suunnittelija", false, $ra);
$julkaisija=tv("julkaisija", false, $ra);
$bgglinkki=tv("bgglinkki", false, $ra);
$pelaajia=tv("pelaajia", false, $ra);
$kesto=tv("kesto", false, $ra);
$vuosi=tv("vuosi", false, $ra);
$huomautus=tv("huomautus", "", $ra);
$omistaja=tv("omistaja", false, $ra);
$lahjoittaja=tv("lahjoittaja", "", $ra);
$lahjoittajanurl=tv("lahjoittajanurl", "", $ra);
$gtin=tv("gtin", "", $ra);
$hylly=tv("hylly", "", $ra);
$paikka=tv("paikka", "", $ra);
$laatikko=tv("laatikko", "", $ra);
$kunto=tv("kunto", "", $ra);
$metodi=tv("metodi", "", $ra);
$peliid=tv("peliid", false, $ra);
$kokoelmapeliid=tv("kokoelmapeliid", false, $ra);

if($collection===false || $nimi===false || $suunnittelija===false || $julkaisija===false ||$pelaajia===false || $kesto===false ||$vuosi===false || $omistaja===false) {
    $_SESSION["ra"]=$ra;
    die("Pakollinen");
    header("Location: {$paluu}?virhe=".urlencode(_("Jokin pakollinen kenttä puuttui!")));
}
$db = new SLSDB();

$pelit = new SLSGAMES($db);

if($metodi=="" || $metodi=="lisää" || $metodi=="uusi") {
    $res = $pelit->findWithRex($nimi, "Nimi");
    if($res===false && $gtin!="")
        $res = $pelit->findWithRex($gtin, "GTIN");
    
    if($res===false && $bgglinkki!="")
        $res = $pelit->findWithRex($bgglinkki, "BGGLinkki");
    
    if($res!==false) {
       $pelitunniste=$res[0]["tunniste"];
    }

    if($res === false) {
        $game = array(
            "suunnittelija" => $suunnittelija,
            "julkaisija" => $julkaisija,
            "bgglinkki" => $bgglinkki,
            "kesto" => $kesto,
            "pelaajia" => $pelaajia,
            "gtin" => $gtin,
            "vuosi" =>$vuosi,
            "nimi" => $nimi
        );
        $res = $pelit->addGame($game);
        $pelitunniste=$res[0];
    }
} else {
    $game = array(
            "suunnittelija" => $suunnittelija,
            "julkaisija" => $julkaisija,
            "bgglinkki" => $bgglinkki,
            "kesto" => $kesto,
            "pelaajia" => $pelaajia,
            "gtin" => $gtin,
            "vuosi" =>$vuosi,
            "nimi" => $nimi,
            "tunniste" => $peliid
        );
    $res = $pelit->updateGame($game);
    $_SESSION["ra"]=$ra;
    if($res===false) {
        header("Location: {$paluu}?virhe=".urlencode(_("Pelin päivittäminen ei onnistnut.")));
        die();
    }
    $pelitunniste = $peliid;
}

$u = new SLSUSERS($db);
@list($foo, $omistaja)=explode("/", $omistaja);
$res = $u->findWithRex(trim($omistaja), "Tunniste");

if($res===false) {
    $_SESSION["ra"]=$ra;
    header("Location: {$paluu}?virhe=".urlencode(sprintf(_("Omistajaa %s ei ole."),$omistaja)));
}
$o = $res[0]["tunniste"];
$cg = array();
$cg["Kokoelma"]=$collection;
$cg["Peli"]=$pelitunniste;
$cg["Omistaja"]=$o;
$cg["Tunniste"]=$collection.$pelitunniste;
$cg["Huomautus"]=$huomautus;
$cg["Kunto"]=$kunto;
$cg["Hylly"]=$hylly;
$cg["Paikka"]=$paikka;
$cg["Laatikko"]=$laatikko;
$cg["Lahjoittaja"]=$lahjoittaja;
$cg["LahjoittajanUrl"]=$lahjoittajanurl;

$c = new SLSCOLLECTIONGAMES($db);
$res = $c->findWithRex($pelitunniste, "Tunniste", $collection);

if($res === false) {   
    $cg["Lisaaja"]=$_SESSION['user']['tunniste'];
    $c->add($cg);
} else {
    $cg["Muokkaaja"]=$_SESSION['user']['tunniste'];
    $cg["Tunniste"]=$kokoelmapeliid;
    unset($cg["Peli"]);
    $c->update($cg);
}
$target="{$baseurl}/collection_main.php?collection=$collection";
header("Location: $target");
?>
