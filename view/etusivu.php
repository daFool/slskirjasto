<?php
include_once("$basepath/view/html_base.html");
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
          "ajax": "<?php echo "$baseurl/json/json_games.php";?>",
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
          "ajax": "<?php echo "$baseurl/json/json_collections.php";?>",
          <?php include("datatables_language.js");?>
        } );
        
        // Kokoelmat taulun bodyn click-handleri
        $('#kokoelmat tbody').on( 'click', 'tr', function () {
          var kokoelma=$(this).children("td:first").html();
          var target="<?php echo "{$baseurl}/collection_main.php";?>";
            window.location=target+"?collection="+encodeURIComponent(kokoelma);
        } );
      } );
    </script>
  </head>
  
  <body>
    <?php include_once("$basepath/view/navbar.html"); ?>
    <section class='container'>
        <div class="row">
          <section class='col-xs-12 col-sm-6 col-md-6'>
            <section>
              <h2>Pelit</h2>
                <table id="games" class="display" cellspacing="0" width="100%">
                <thead>
                  <tr>
                    <th><?php echo _("Peli");?></th>
                    <th><?php echo _("BGG rank");?></th>
                    <th><?php echo ("BGG");?></th>
                    <th><?php echo _("Kesto");?></th>
                    <th><?php echo _("Pelaajia");?></th>
                    <th><?php echo _("Vuosi");?></th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                    <th><?php echo _("Peli");?></th>
                    <th><?php echo _("BGG rank");?></th>
                    <th><?php echo ("BGG");?></th>
                    <th><?php echo _("Kesto");?></th>
                    <th><?php echo _("Pelaajia");?></th>
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
    <?php include_once("$basepath/view/footer.html");?>
</body>
</html>
