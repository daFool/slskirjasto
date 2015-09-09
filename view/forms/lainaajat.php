<?php
require_once("../globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/minrights.php");

if($user['tila']!='superadmin') {
    header("Location: $baseurl/index.php");
    die();
}
include_once("$basepath/html_base.html");
?>
        <title><?php echo _("Tuo SLS-lainaajat");?></title>
    </head>
    <body>
        <?php include_once("navbar.html"); ?>
        <section class='container'>
        <div class="row">
          <section class='col-xs-12 col-sm-6 col-md-6'>
            <section>
                <h2><?php echo _("Jäsentiedoston tuonti");?></h2>
                <div><?php echo _("Voit tuoda csv-tiedostosta jäsenet. Sarakkeet erotetaan ','-merkillä. Ensimmäisellä rivillä sarakkeiden nimet.");?>
                <?php echo _("Käytetyt sarakkeet ovat: <b>etunimi, sukunimi, jasennro, puhelinnro, sahkoposti ja syntymavuosi.</b>");?>
                </div>
                <form action="<?php echo $baseurl;?>/tuolainaajat.php" method="post" enctype="multipart/form-data">
                    <label for="tiedosto"><?php echo _("Jäsentiedosto:");?><input type="file" name="tiedosto" required="true"/></label>
                    <input type="submit" name="<?php echo _("Lähetä");?>"/>
                </form>
            </section>
          </section>
        </div>
    </body>
</html>