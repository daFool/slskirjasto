<?php
require("globals.php");
require("$basepath/helpers/common.php");

$user = isset($_SESSION['user']) ? $_SESSION['user'] : false;
$loggedin = isset($_SESSION['loggedin']) ? $_SESSION['loggedin'] : false;
$virhe = isset($_REQUEST["virhe"]) ? $_REQUEST["virhe"] : false;

if(!$user || !$loggedin) {
    header("Location: $baseurl/index.php");
    die();
}
   
if(!isset($_POST["uusi"])) {
    $virhe=_("Uutta salasanaa ei ole annettu!");
    header("Location: $baseurl/view/forms/salasana.php?virhe=".urlencode($virhe));
    die;
}
if(!isset($_POST["uusi2"])) {
    $virhe=_("Uutta salasanaa ei ole annettu!");
    header("Location: $baseurl/view/forms/salasana.php?virhe=".urlencode($virhe));
    die;
}

if(!isset($_POST["vanha"])) {
    $virhe=_("Vanhaa salasanaa ei ole annettu!");
    header("Location: $baseurl/view/forms/salasana.php?virhe=".urlencode($virhe));
    die;
}

$u = new SLSUSERS($db);
if(!$u->checkLocalAuth($_POST["vanha"], $user["tunniste"])) {
    $virhe=_("Vanha salasana ei täsmää!");
    header("Location: $baseurl/view/forms/salasana.php?virhe=".urlencode($virhe));
    die;
}

$res = $u->vaihdaSalasana($user["tunniste"], $_POST["uusi"]);
if($res) {
    $tulos = _("Salasanan vaihtaminen onnistui.");
} else {
    $tulos = _("Salasanan vaihtaminen epäonnistui.");
}
?>
    <title><?php echo _("Salasanan vaihto");?></title>
    <?php include("$basepath/view/html_base.html");?>
</head>
<body>
     <?php include_once("$basepath/view/navbar.html");?>
      <section class='container'>
          <h2><?php echo $tulos;?></h2>
      </section>
      <?php include("$basepath/view/footer.html");?>
</body>
</html>