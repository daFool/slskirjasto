<?php
require_once("globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/users.php");
require_once("$basepath/helpers/collections.php");
require_once("$basepath/helpers/collectionGames.php");
require_once("$basepath/helpers/minrights.php");

$mista = isset($_REQUEST["mista"]) ? $_REQUEST["mista"] : false;
$mihin = isset($_REQUEST["mihin"]) ? $_REQUEST["mihin"] : false;
               
if($mista === false || $mihin === false) {
    $target=UrlMungler("{$baseurl}/index.php");
    header("Location: $target");
}
include_once("$basepath/html_base.html");

?>
        <title><?php echo _("Lautapelikirjasto : Kokoelmaan tuonti kokoelmasta");?></title>

        <script type="text/javascript">
            $(document).ready(function()
            {
            } );
        
        </script>
       
    </head>
    <body>
        <?php include_once("$basepath/navbar.html");?>
        <div class="container">
            <section class='col-xs-12 col-sm-6 col-md-8'>
                <?php
                    $db = new SLSDB();
                    $c = new SLSCOLLECTIONGAMES($db);
                
                    if($mista !==false && $mihin !== false)
                        $res = $c->tuoKokoelmasta($mista, $mihin, $_SESSION["user"]["tunniste"]);
                    else
                        $res = 0;
                ?>
                <h2><?php echo sprintf(_("Tuotiin %d peliä"), $res);?></h2>
            </section>        
        </div>
        <?php include_once("$basepath/footer.html");?>        
    </body>
</html>