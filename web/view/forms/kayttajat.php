<?php
require ("../../globals.php");
require ("$basepath/helpers/common.php");
require ("$basepath/helpers/maxrights.php");

require("$basepath/view/html_base.html");
?>
    <title><?php echo _("Käyttäjähallinta");?></title>
    <script type="text/javascript">
        $(function () {
              // Kokoelmat-taulu
            var k=$('#kayttajat').dataTable( {
              "processing": true,
              "serverSide": true,
              "responsive": true,
              "orderMulti": true,
              "search": {
              "regex": true,
              "caseInsensitive": true,
              "smart" : true},
              "ajax": "<?php echo "$baseurl/json/json_users.php";?>",
              <?php include("$basepath/datatables_language.js");?>
            } );
            // Kokoelmat taulun bodyn click-handleri
            $('#kayttajat tbody').on( 'click', 'tr', function () {
                var eka=$(this).children("td:nth-child(2n)").html();
                $.get("<?php echo "$baseurl/json/json_user.php";?>", {tunniste: eka}, function (data) {
                    $("#nimi").val(data.nimi);
                    $("#slsjasennumero").val(data.slsjasennumero);
                    $("#puhelin").val(data.puhelin);
                    $("#sahkoposti").val(data.sahkoposti);
                    $("#syntymavuosi").val(data.syntymavuosi);
                    $("#sukupuoli").val(data.sukupuoli);
                    $("#tila").val(data.tila);
                    $("#tunniste").val(data.tunniste);
                    console.log(data.sukupuoli);
                });
                
            } );
            function isValid(args) {
                validi=true;
                if ($("#tila").val()=="käyttäjä" && $("#sahkoposti").val()=="") {
                    validi=false;
                }
                if ($("#tila").val()=="lainaaja") {
                    if($("#sahkoposti").val()=="" && $("#puhelin").val()=="") {
                        validi=false;
                    }
                }
                if ($("#user").get(0).checkValidity()==true || !validi) {
                    $("#save").removeAttr("disabled");
                }
                else {
                    $("#save").attr("disabled", "true");
                }
            }
            
            $('#user').find("input").each(function() {
                $(this).on('blur', function() {
                    isValid();
                });
            })
            
            $('#user').find("select").each(function() {
                $(this).on('blur', function() {
                    isValid();
                });
            })
            
            $('#save').on('click', function () {
                $("#user").submit();
            });
        })
    </script>
    </head>
    <body>
        <?php require("$basepath/view/navbar.html");?>
        <div class="container">
            <div class="row">
                <div class='col-xs-12 col-sm-6 col-md-6'>
                    <table id="kayttajat" class="display" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th><?php echo _("Nimi");?></th>
                                <th><?php echo _("Tunniste");?></th>
                                <th><?php echo _("Tila");?></th>
                                <th><?php echo _("Lisätty");?></th>                    
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th><?php echo _("Nimi");?></th>
                                <th><?php echo _("Tunniste");?></th>
                                <th><?php echo _("Tila");?></th>
                                <th><?php echo _("Lisätty");?></th>                    
                            </tr>
                  
                        </tfoot>
                    </table>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6">
                    <h2><?php echo _("Henkilön tiedot");?></h2>
                    <form name="user" id="user" class="form" method="POST" action="<?php echo $baseurl;?>/talletaKayttaja.php">
                        <input type="hidden" value="" id="tunniste" name="tunniste">
                        
                        <!-- NIMI -->
                        <div class="row">
                            <div class="col-xs-4">
                                <label class="control-label" for="nimi"><?php echo _("Nimi:");?></label>
                            </div>
                            <div class="col-xs-8">
                                 <input type="text" class="form-control" required="true" maxlength="255" id="nimi" name="nimi"/>
                            </div>
                        </div>
                            
                        <div class="row">
                            <div class="col-xs-4">
                                <label class="control-label" for="slsjasennumero"><?php echo _("Jäsennumero:");?></label>
                            </div>
                            <div class="col-xs-8">
                                <input type="number" min="-100000" max="99999999" class="form-control" required="true" id="slsjasennumero" name="slsjasennumero"/>
                            </div>
                        </div>
                    
                        <div class="row">
                            <div class="col-xs-4">
                                <label class="control-label" for="puhelin"><?php echo _("Puhelin:");?></label>
                            </div>
                            <div class="col-xs-8">
                                <input type="tel" class="form-control" required="true" id="puhelin" name="puhelin"/>
                            </div>
                        </div>
                        
                        
                        <div class="row">
                            <div class="col-xs-4">
                                <label class="control-label" for="sahkoposti"><?php echo _("Sähköposti:");?></label>
                            </div>
                            <div class="col-xs-8">
                                <input type="email" min="-1" max="99999999" class="form-control" required="true" id="sahkoposti" name="sahkoposti"/>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-xs-4">
                                <label class="control-label" for="syntymavuosi"><?php echo _("Syntymävuosi:");?></label>
                            </div>
                            <div class="col-xs-8">
                                <input type="number" min="1890" max="2020" class="form-control" required="true" id="syntymavuosi" name="syntymavuosi"/>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-xs-4">
                                <label class="control-label" for="sukupuoli"><?php echo _("Sukupuoli:");?></label>                                
                            </div>
                            <div class="col-xs-8">
                                <select name="sukupuoli" id="sukupuoli" class="form-control">
                                    <option value="E"><?php echo _("Ei tiedossa");?></option>
                                    <option value="O"><?php echo _("Oma valinta");?></option>
                                    <option value="M"><?php echo _("Mies");?></option>
                                    <option value="N"><?php echo _("Nainen");?></option>
                                </select>                                
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-xs-4">
                                <label class="control-label" for="tila"><?php echo _("Tila:");?></label>                                
                            </div>
                            <div class="col-xs-8">
                                <select name="tila" id="tila" class="form-control">
                                    <option value="lainaaja"><?php echo _("Lainaaja");?></option>
                                    <option value="prospekti"><?php echo _("Prospekti");?></option>
                                    <option value="käyttäjä"><?php echo _("Käyttäjä");?></option>
                                    <option value="admin"><?php echo _("Admin");?></option>
                                    <option value="superadmin"><?php echo _("Taikaviitta");?></option>
                                </select>                                
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-xs-4">
                                <label class="control-label" for="salasana"><?php echo _("Salasana:");?></label>                                
                            </div>
                            <div class="col-xs-8">
                                <input type="password" name="salasana" id="salasana" class="form-control" maxlength="255" value="">
                                <p class="help-block"><?php echo _("Jätä salasana tyhjäksi, jollet halua muuttaa sitä!");?></p>
                            </div>
                        </div>
                        
                        <button type="button" class="btn btn-info" id="save" disabled="true"><?php echo _("Talleta");?></button>
                    </form>
                </div>
            </div>
        </div>
        <?php require("$basepath/view/footer.html");?>
    </body>
</html> 