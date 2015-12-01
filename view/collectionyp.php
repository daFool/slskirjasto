<?php
/**
 * Kokoelmien käsittely
 *
 * Lisäys, poisto, tuonti ja oikeudet
 *
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 * @uses globals.php
 * @uses users.php
 * @uses common.php
 * @uses collections.php
 *
 * */
require_once("../globals.php");
require_once("$basepath/helpers/common.php");

$col = new SLSCOLLECTIONS($db);

include("$basepath/view/html_base.html");
?>
        <title><?php echo _("Lautapelikirjasto: kokoelmien ylläpito");?></title>
        <script type="text/javascript">
            $(document).ready(function() {
                $('#kokoelmat').dataTable( {
                    "processing": true,
					"serverSide": true,
					"responsive": true,
					"orderMulti": true,
					"lengthMenu" : [ 10, 21, 25, 50, 75, 100],
					"pageLength" : 21,
					"search": {
					"regex": true,
					"caseInsensitive": true,
					"smart" : true},
					"ajax": "<?php echo "$baseurl/json/";?>json_collections.php",
					<?php include("$basepath/datatables_language.js");?>
                });
                $("#kokoelmat tbody").on("click", "tr", function () {
                    kokoelma=($(this).children("td:first").html());
                    load(kokoelma);
                })
                var kokoelmanimi="";
                var tapahtumanimi="";
                
                function load(id) {
                    $("#chatbox").attr("hidden", false);
                    if ($("#chatbox").hasClass("alert-warning")) {
                        $("#chatbox").removeClass("alert-warning");
                    }
                    $("#chatbox").addClass("alert-info");
                    $("#chatbox").html("<?php echo _("Ladataan...");?>");
                    $("#tapahtuma").attr("disabled",true);
                    $("#poista").attr("disabled", true);
                    $("#oikeudet").attr("disabled", true);
                    $("#talleta").attr("disabled", true);
                    $.post("<?php echo $baseurl;?>/json/json_collection.php", {"id" : id }, function(data) {
                        data = $.parseJSON(data);
                        if(data["virhe"]=="OK") {
                          
                            $.each(data["rivi"], function (index, value) {
                                switch(index) {
                                    case "id":
                                        index="tunnus";                                        
                                        $("#"+index).val(value);
                                        break;
                                    case "nimi":
                                        kokoelmanimi=value;
                                        $("#"+index).val(value);
                                        break;
                                    case "tapahtuma":
                                        tapahtumanimi=value;
                                        if (tapahtumanimi != null) {
                                            $("#tapahtuma").attr("disabled",false);
                                        }
                                        
                                        break;
                                    case "omistaja":
                                    case "julkisuus":
                                    case "laji":
                                        $("#"+index).val(value);
                                        break;
                                    default:
                                        break;
                                }
                            });
                            $("#chatbox").removeClass("alert-info");
                            $("#chatbox").attr("hidden", true);
                            $("#poista").attr("disabled", false);
                            $("#oikeudet").attr("disabled", false);
                            $("#talleta").attr("disabled", false);
                    
                       }
                    });
                }
            })
        </script>
        </head>
        <body>
                <?php include("$basepath/view/navbar.html");?>
               <div class="container-fluid">
                <div class="alert" role="alert" hidden="true" id="chatbox"><?php echo _("Kaikki ok");?></div>
                <h2 id="otsikko"><?php echo _("Kokoelman ylläpito");?></h2>
                <form class="form-horizontal" method="post" id="kokoelma" name="kokoelma">
                    <div class="form-group">
                        <div class="col-lg-1 col-md-1 col-sm-2 col-xs-4">
                            <label for="nimi" class="control-label"><?php echo _("Nimi:");?></label>
                        </div>
                        <div class="col-lg-5 col-md-5 col-sm-4 col-xs-4">
                            <input type="text" class="form-control" maxlength="255" size="40" name="nimi" id="nimi" placeholder="SLS" required>
                             <span id="nimic" class="glyphicon form-control-feedback" aria-hidden="true"></span>
                             <p class="help-block"><?php echo _("Kokoelman nimi, pakollinen, korkeintaan 255 merkkiä.");?></p>
                        </div>                  
                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-6">
                            <label class="control-label" for="tunnus"><?php echo _("Viivakooditunnus:");?></label>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-1 col-xs-2">
                            <input type="text" class="form-control" maxlength="6" size="6" name="tunnus" id="tunnus" placeholder="ABCDEF" required
                                   pattern="[a-zA-Z0123456789]{1,6}">
                             <span id="tunnusc" class="glyphicon form-control-feedback" aria-hidden="true"></span>
                             <p class="help-block"><?php echo _("Viivakoodin alkuosa, pakollinen, kirjaimet a-z ja numerot, korkeintaan 6 merkkiä.");?></p>
                         </div>
                    </div>
                                        
                    <div class="form-group" id="julkisuusg">
                        <div class="col-lg-1 col-md-1 col-sm-2 col-xs-4">
                            <label class="control-label" for="julkisuus"><?php echo _("Julkisuus");?></label>
                        </div>
                        <div class="col-lg-5 col-md-5 col-sm-4 col-xs-4">
                            <select name="julkisuus" required class="form-control" id="julkisuus">
                                <option value="avoin"><?php echo _("Avoin");?></option>
                                <option value="yksityinen"><?php echo _("Yksityinen");?></option>
                            </select>
                            <p class="help-block"><?php echo _("Onko tieto kokoelman olemassaolosta ja sisällöstä kaikkien saatavilla?");?></p>
                        </div>
                        <div class="col-lg-1 col-md-1 col-sm-2 col-xs-4">
                            <label class="control-label" for="laji"><?php echo ("Kokoelmalaji:");?></label>
                        </div>
                        <div class="col-lg-5 col-md-5 col-sm-4 cok-xs-4">
                            <select name="laji" required class="form-control" id="laji">
                                <option value="1"><?php echo _("Varasto");?></option>
                                <option value="0"><?php echo _("Tapahtuma");?></option>
                            </select>
                            <p class="help-block"><?php echo _("Onko kyseessä pysyvä kokoelma (varasto) vai tapahtumakokoelma?");?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-1 col-md-1 col-sm-2 col-xs-4">                                          
                            <label class="control-label" for="omistaja"><?php echo _("Omistaja:");?></label>
                        </div>
                        <div class="col-lg-11 col-md-11 col-sm-10 col-xs-8">
                            <input type="text" class="form-control" required id="omistaja" name="omistaja" size="40" maxlenght="255">
                            <span id="omistajac" class="glyphicon form-control-feedback" aria-hidden="true"></span>
                            <p class="help-block"><?php echo _("Kuka omistaa kokoelman?");?></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-default" id="tapahtuma" disabled="true"><?php echo _("Tapahtuma");?></button>
                        <button type="button" class="btn btn-default" id="oikeudet" disabled="true"><?php echo _("Oikeudet");?></button>
                        <button type="button" class="btn btn-default" id="poista" disabled="true"><?php echo _("Poista");?></button>
                        <button type="button" class="btn btn-default" id="talleta" disabled="true"><?php echo _("Talleta");?></button>
                    </div>
                </form>
                
                <table id="kokoelmat" class="display" cellspacing="0" width="100%">
                    <thead>
                        <th><?php echo _("Kokoelma");?></th>
                        <th><?php echo _("Laji");?></th>
                        <th><?php echo _("Omistaja");?></th>
                        <th><?php echo _("Tapahtuma");?></th>
                        <th><?php echo _("Lisätty");?></th>
                    </thead>
                    <tfoot>
                        <th><?php echo _("Kokoelma");?></th>
                        <th><?php echo _("Laji");?></th>
                        <th><?php echo _("Omistaja");?></th>
                        <th><?php echo _("Tapahtuma");?></th>
                        <th><?php echo _("Lisätty");?></th>                
                    </tfoot>                
                </table>                
            </div>
            <?php include_once("$basepath/view/footer.html");?>
        </body>
    </html>