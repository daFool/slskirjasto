<?php
require_once("../../globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/minrights.php");

if($user['tila']!='superadmin') {
    header("Location: $baseurl/index.php");
    die();
}
include_once("$basepath/view/html_base.html");
?>
        <title><?php echo _("Tuo SLS-lainaajat");?></title>
    </head>
    <body>
        <?php include_once("$basepath/view/navbar.html"); ?>
        <section class='container'>
            <h2><?php echo _("Jäsentiedoston tuonti");?></h2>
            <div><?php echo _("Voit tuoda csv-tiedostosta jäsenet. Sarakkeet erotetaan ','-merkillä. Ensimmäisellä rivillä sarakkeiden nimet.");?>
                <?php echo _("Käytetyt sarakkeet ovat: <b>etunimi, sukunimi, jasennro, puhelinnro, sahkoposti ja syntymavuosi.</b>");?>
            </div>
            <form action="<?php echo $baseurl;?>/tuolainaajat.php" class="form" method="post" enctype="multipart/form-data">
                <label for="tiedosto" class="control-label"><?php echo _("Jäsentiedosto:");?><input class="form-control" type="file" name="tiedosto" required="true"/></label>
                <input type="submit" class="btn btn-info" name="<?php echo _("Lähetä");?>"/>
            </form>
        </section>
        <?php include_once("$basepath/view/footer.html");?>
    </body>
</html>