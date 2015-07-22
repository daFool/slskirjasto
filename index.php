<?php
/**
 * Pääsivu
 *
 * Näytetään Datatablesilla kaikki pelit ja kokoelmat, joita kannasta löytyy. Peliä klikkaamalla pääsee pelitietoihin. Oikeuksista riippuen
 * voi muokata, poistaa ja lisätä pelejä. Rekisteröityneet voivat lisätä peleihin tageja ja arvioita.
 *
 * Kokoelmissa pääsee ylläpitämään kokoelmia, sekä lainaamaan tai palauttamaan kokoelmien pelejä. Rekistöröityneet voivat luoda omia kokoelmia.
 * 
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 * @uses globals.php
 * @uses users.php
 * @uses common.php
 * */

require_once("globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/users.php");

include_once("$basepath/html_base.html");

?>
    <title><?php echo _("Lautapelikirjasto");?></title>
    <script type="text/javascript">
      $(document).ready(function() {
        // Pelit-taulu
        $('#games').dataTable( {
          "processing": true,
          "serverSide": true,
          "responsive": true,
          "orderMulti": true,
          "search": {
            "regex": true,
            "caseInsensitive": true,
            "smart" : true},
          "ajax": "json_games.php",
          <?php include("datatables_language.js");?>
        } );
        // Kokoelmat-taulu
        var kokoelmat=$('#kokoelmat').dataTable( {
          "processing": true,
          "serverSide": true,
          "responsive": true,
          "orderMulti": true,
          "search": {
          "regex": true,
          "caseInsensitive": true,
          "smart" : true},
          "ajax": "json_collections.php",
          <?php include("datatables_language.js");?>
        } );
        // Kokoelmat taulun bodyn click-handleri
        $('#kokoelmat tbody').on( 'click', 'tr', function () {
          var kokoelma=$(this).children("td:first").html();
          var target="<?php echo UrlMungler("{$baseurl}/collection_main.php");?>";
            window.location=target+"&collection="+encodeURIComponent(kokoelma);
        } );
      } );
    </script>
  </head>
  
  <body>
    <?php include_once("navbar.html"); ?>
    <section class='container'>
        <div class="row">
          <section class='col-xs-12 col-sm-6 col-md-6'>
            <section>
              <h2>Pelit</h2>
                <table id="games" class="display" cellspacing="0" width="100%">
                <thead>
                  <tr>
                    <th><?php echo _("Peli");?></th><th><?php echo _("Suunnittelija");?></th><th><?php echo _("Julkaisija");?></th>
                    <th><?php echo ("BGG");?></th><th><?php echo _("Kesto");?></th><th><?php echo _("Pelaajia");?></th><th><?php echo _("Lisätty");?></th>
                    <th><?php echo _("Vuosi");?></th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                    <th><?php echo _("Peli");?></th><th><?php echo _("Suunnittelija");?></th><th><?php echo _("Julkaisija");?></th>
                    <th><?php echo ("BGG");?></th><th><?php echo _("Kesto");?></th><th><?php echo _("Pelaajia");?></th><th><?php echo _("Lisätty");?></th>
                    <th><?php echo _("Vuosi");?></th>
                  </tr>
                </tfoot>
              </table>
            </section>
          </section>
          <section class="col-xs-12 col-sm-6 col-md-6">

                <h2><?php echo _("Kokoelmat");?></h2>
                <table id="kokoelmat" class="display" cellspacing="0" width="100%">
                <thead>
                  <th><?php echo _("Peli");?></th><th><?echo _("Laji");?></th><th><?php echo _("Omistaja");?></th><th><?php echo _("Tapahtuma");?></th><th><?php echo _("Lisätty");?></th>
                </thead>
                <tfoot>
                  <th><?php echo _("Peli");?></th><th><?echo _("Laji");?></th><th><?php echo _("Omistaja");?></th><th><?php echo _("Tapahtuma");?></th><th><?php echo _("Lisätty");?></th>
                </tfoot>                
                </table>
          </section>
        </div>
    </section>
    <?php include_once("$basepath/footer.html");?>
</body>
</html>
