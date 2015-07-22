<?php
/**
 * Lainakuittaus
 * 
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 * @uses globals.php
 * @uses common.php
 * @uses users.php
 * @uses lainat.php
 * */
require_once("globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/users.php");
require_once("$basepath/helpers/lainat.php");
require_once("$basepath/helpers/maxrights.php");

$lainat = new SLSLainat($db);
$lainaaja = isset($_REQUEST["tunniste"]) ? $_REQUEST["tunniste"] : false;
$kokoelma = isset($_REQUEST["kokoelma"]) ? $_REQUEST["kokoelma"] : false;
$peli = isset($_REQUEST["kokoelmatunniste"]) ? $_REQUEST["kokoelmatunniste"] : false;
$pantti = isset($_REQUEST["pantti"]) ? $_REQUEST["pantti"] : false;

if($lainaaja===false || $kokoelma===false || $peli===false || $pantti===false)
    $tulos=false;
else
    $tulos = $lainat->Lainaa($peli, $kokoelma, $lainaaja, $pantti);

include_once("html_base.html");
?>
    <title><?php echo _("Lainakuittaus");?></title>
    <script type="text/javascript">
        $(function() {
            $("#paluu").on('click',function () {
                var kohde="<?php echo $baseurl;?>/collection_main.php?collection=<?php echo urlencode($kokoelma);?>";
                window.location=kohde;
            })
        })
    </script>
</head>
<body>
    <?php include_once("$basepath/navbar.html"); ?>
    <section class='container'>
        <div class="row">
            <h2><?php printf(_("Lainaus %s"), $tulos ? _("onnistui") : _("epäonnistui"));?></h2>
            <button type="button" class="btn btn-lg btn-default" id="paluu"><?php echo _("Kokoelmaan");?></button>
        </div>
    </section>
    <?php include_once("$basepath/footer.html");?>
</body>