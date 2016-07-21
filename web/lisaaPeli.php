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
require_once("$basepath/helpers/adminrights.php");

$paluu = isset($_SESSION["paluu"]) ? $_SESSION["paluu"] : false;

function tv($nimi, $def=false, &$ra=false) {
    $arvo = isset($_POST[$nimi]) ? $_POST[$nimi] : $def;
    if(is_numeric($def) && $_POST[$nimi]=="")
        $arvo=$def;
        
    if($ra!==false)
        $ra[$nimi]=$arvo;
    return trim($arvo);
}

function cut255($str) {
    $i = min(254,strlen($str));
    $str = substr($str, 0, $i);
    return $str;
}

$ra=array();
$collection = tv("kokoelma", false, $ra);
$nimi = cut255(tv("nimi", false, $ra));
$suunnittelija= cut255(tv("suunnittelija", false, $ra));
$julkaisija=cut255(tv("julkaisija", false, $ra));
$bgglinkki=tv("bgglinkki", false, $ra);
$pelaajia=tv("pelaajia", false, $ra);
$kesto=tv("kesto", 0, $ra);
$vuosi=tv("vuosi", 0, $ra);
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
$bggrank=tv("bggrank", -1, $ra);
$score=tv("score", -1, $ra);
$age=tv("age",0, $ra);
$orgc=tv("orgcollection", "", $ra);
$orgid=tv("orgid", "", $ra);

if($collection===false || $nimi===false || $suunnittelija===false || $julkaisija===false ||$pelaajia===false || $kesto===false ||$vuosi===false || $omistaja===false) {
    $_SESSION["ra"]=$ra;
    header("Location: {$paluu}?virhe=".urlencode(_("Jokin pakollinen kenttä puuttui!")));
}
$db = new SLSDB();

$pelit = new SLSGAMES($db);
if($bggrank=="Not Ranked")
  $bggrank=-1;

$game = array(
    "suunnittelija" => cut255($suunnittelija),
    "julkaisija" => cut255($julkaisija),
    "bgglinkki" => cut255($bgglinkki),
    "kesto" => $kesto,
    "pelaajia" => $pelaajia,
    "gtin" => $gtin,
    "vuosi" =>$vuosi,
    "nimi" => $nimi,
    "bggrank" => $bggrank,
    "score" => $score,
    "age" => $age
);

if($peliid!==false) {
    $res = $pelit->exists(array("tunniste"=>$peliid));
    if($res)
        $res = array(0=>array("tunniste"=>$peliid));
} else
    $res = false;

// Tutkitaan löytyykö peli kannasta
if($res===false)
    $res = $pelit->findWithRex($nimi, "Nimi");

// Eikö, valmistajan viivakoodilla?
if($res===false && $gtin!="")
  $res = $pelit->findWithRex($gtin, "GTIN");

// Eikö, BGG-linkillä?    
if($res===false && $bgglinkki!="")
  $res = $pelit->findWithRex($bgglinkki, "BGGLinkki");
    
if($res!==false) {
    // Löytyi lopulta, joten päivitetään jos on oikeuksia
    $pelitunniste=$res[0]["tunniste"];
    $taso = $_SESSION["user"]["tila"];
    $_SESSION["ra"]=$ra;
    if($taso=="superadmin" || $taso=="admin") {
        $game["tunniste"]=$pelitunniste;
        $res = $pelit->updateGame($game);
    
        if($res===false) {
            die("Päivitys kusi");
   
            header("Location: {$paluu}?virhe=".urlencode(_("Pelin päivittäminen ei onnistnut.")));
            die();
        }
    }
} else {
    // Ei löytynyt, lisätään kantaan
    $res = $pelit->addGame($game);
    $pelitunniste=$res[0];
}

    
// Itse kokoelmapelin käsitteleminen
// Omistajuuskysymys
$u = new SLSUSERS($db);
if(strpos($omistaja, "/")>0)
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
$cg["Tunniste"]=sprintf("%s%05d", $_SESSION["collection_id"],$pelitunniste);
$cg["Huomautus"]=$huomautus;
$cg["Kunto"]=$kunto;
$cg["Hylly"]=$hylly;
$cg["Paikka"]=$paikka;
$cg["Laatikko"]=$laatikko;
$cg["Lahjoittaja"]=$lahjoittaja;
$cg["LahjoittajanUrl"]=$lahjoittajanurl;
$cg["tuotukokoelmasta"]=$orgc;
$cg["alkuperainentunniste"]=$orgid;

$c = new SLSCOLLECTIONGAMES($db);
$res = $c->findWithRex($pelitunniste, "Tunniste", $collection);
if($res === false || $metodi=="lisää" || $metodi=="uusi") {   
    $uusikpl=$cg["Tunniste"];
    $i=0;        
    $t=$c->haePeli($uusikpl);
    while($t["kilroy"]=="") {
        $uusikpl=sprintf("%s%02d%05d", $_SESSION["collection_id"], $i++, $pelitunniste);
        $t=$c->haePeli($uusikpl);        
    }
    $cg["Tunniste"]=$uusikpl;
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
