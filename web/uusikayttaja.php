<?php
require_once("globals.php");
require_once("helpers/common.php");

function local_error($message, $register_method="google", $register_type="Käyttäjä") {
    global $baseurl;
    $a = array("ktunnus", "nimi", "puhelin", "jasennumero", "sahkoposti", "sukupuoli", "syntymavuosi");
    $url="$baseurl/view/forms/register.php?register_method=$register_method&register_type=$register_type";
    $params="&error=$message";
    foreach($a as $i) {
        if(isset($_POST[$i])) {
            $params.="&$i=".urlencode($_POST[$i]);
        }
    }
    header("Location: {$url}{$params}");
    die();
}
if (isset($_REQUEST["register_method"]))
    $register_method="local";
else
    $register_method="google";
    
$users = new SLSUSERS($db);

$register_type = isset($_POST['registration_type']) ? $_POST['registration_type'] : "Käyttäjä";

if(($register_type != "Käyttäjä") && ($register_type != "Lainaaja"))
    $register_type="Käyttäjä";
    
$ktunnus = isset($_POST['ktunnus']) ? $_POST['ktunnus'] : false;
if($ktunnus===false || $users->checkUser($ktunnus)) {
    local_error(_("Huono käyttäjätunnus"), $register_method, $register_type);    
}

$nimi = isset($_POST['nimi']) ? $_POST['nimi'] : false;
if($nimi===false || $nimi=="" || strlen($nimi)>255)
    local_error(_("Nimi on pakollinen kenttä"), $register_method, $register_type);

$puhelin = isset($_POST['puhelin']) ? $_POST['puhelin'] : "";

$numero = isset($_POST['jasennumero']) ? $_POST['jasennumero'] : 0;
if($numero >0 && $users->checkMember($numero))
    local_error(_("Jäsennumero on käytössä toisella käyttäjällä!"), $register_method, $register_type);

$email = isset($_POST['sahkoposti']) ? $_POST['sahkoposti'] : false;

if($email===false || strchr($email, "@")===false) {
    if($register_type=="Lainaaja" && $puhelin=="") {
        local_error(_("Jompi kumpi, sähköpostiosoite tai puhelinnumero on annettava."));
    }
    else if ($register_type!="Lainaaja") {
        local_error(_("Sähköpostiosoitteessa on toivomisen varaa."), $register_method, $register_type);
    }
}
    
if(!isset($_POST['syntymavuosi']) || $_POST['syntymavuosi']=="")
    $syntymavuosi=-1;
else
    $syntymavuosi=$_POST['syntymavuosi'];

$sukupuoli = isset($_POST['sukupuoli']) ? $_POST['sukupuoli'] : "T";

$salasana = isset($_POST['salasana']) ? $_POST['salasana'] : false;
$salasana2 = isset($_POST['salasana2']) ? $_POST['salasana2'] : false;

if (isset($_REQUEST["register_method"]))
    $register_method="local";
    
if($salasana!==false && $salasana!=$salasana2) {
    local_error(_("Salasanat eivät täsämää"), $register_method);
}

if($salasana!==false) {
    $ident = array("method"=>"local", "salasana"=>$salasana);
}
else {
    $ident = array("method"=>"Google", "google_id"=>$_SESSION["google_id"]);
}
if($register_type!='Lainaaja')
    $tila="prospekti";
else
    $tila="lainaaja";
    
$user = array("nimi"=>$nimi,
              "puhelin"=>$puhelin,
              "sahkoposti"=>$email,
              "syntymavuosi"=>$syntymavuosi,
              "sukupuoli"=>$sukupuoli,
              "ktunnus"=>$ktunnus,
              "jasennumero"=>$numero,
              "salasana"=>$salasana,
              "tila"=>$tila);

if($register_type=='Lainaaja') {
    if($users->insertUser($user)===false) 
        local_error(_("Lainaajan lisääminen epäonnistui"), $register_method, $register_type);
}
else if($users->addMember($user, $ident)===false) {
    local_error("Käyttäjän lisääminen epäonnistui.", $register_method);
}

$db->log(sprintf(_("Käyttäjä %s rekisteröityi"), $ktunnus), __FILE__,__FUNCTION__,__LINE__, "AUDIT");
if($register_type=='Lainaaja') {
    if(isset($_SESSION["paluu"])) {
        header("Location: {$_SESSION['paluu']}");
        die();
    }
}
include_once("$basepath/view/html_base.html");
?>
<title><?php echo _("Vahvista hakemuksesi");?></title>
</head>
<body>
     <?php include_once("$basepath/view/navbar.html");?>
      <section class='container'>
            <div class="row">
                <section class="col-xs-12 col-sm-6 col-md-6">
                <h2><?php echo _("Tunnus vahvistusta vailla");?></h2>
                <p><?php echo _("Antamaasi sähköpostiosoitteeseen on lähetetty vahvistuslinkki, jolla tunnuksesi aktivoituu.");?></p>
            </div>
      </section>
      <?php include("$basepath/view/footer.html");?>
</body>
</html>
