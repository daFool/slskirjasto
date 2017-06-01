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
 * @uses common.php
 * @uses json_collections.php json_collections.php Kokoelmien haku taulukkoon.
 * @uses json_kokoelmantuonti.php json_kokoelmantuonti.php  Pelien tuominen kokoelmasta
 * @uses json_tunniste.php json_tunniste.php Omistajakentän autocomplete
 * @uses json_collection.php json_collection.php Kokoelman tietojen lataaminen lomakkeelle
 * @uses json_listCollections.php json_listCollections.php Hakee kokoelmanimet kokoelma-selectiä varten
 * @uses json_korinimi.php json_korinimi.php Autocomplete korinimelle
 * @uses json_lainaaja.php json_lainaaja.php Lainaajan noutaminen autocompletea varten
 * @uses json_lainaaKorista.php json_lainaaKorista.php Lainataan pelit korista kokoelmaan
 * 
 * */
require_once("../globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/maxrights.php");

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
				
				$("#korihaku").autocomplete({
					source : "<?php echo $baseurl; ?>/json/json_korinimi.php",
					minLength : 4,
					delay : 500 
				});
				
				 $("#lainaaja").autocomplete({
					source : "<?php echo $baseurl; ?>/json/json_lainaaja.php",
					minLenght: 3,
					delay : 500
				});
            
				
				$("#tuo").on("click", function () {
					if (kokoelmanimi=="" || kokoelmatyyppi==1) {
                        return;
                    }
					if ($("#kokoelmatu").val()=="-") {
                        return;
                    }
					$("#chatbox").removeAttr("hidden");
					$("#chatbox").html("<?php echo _("Tuodaan pelejä, hetki");?>");
					url = "<?php echo "$baseurl/json/json_kokoelmantuonti.php?mista=";?>"+$("#kokoelmatu").val()+"&mihin="+kokoelmanimi;
					url = encodeURI(url);
					$.get(url, function (data) {
						$("#chatbox").html("<?php echo _("Tuotiin ");?>"+data['lkm']+"<?php echo _(" peliä kokoelmasta:");?>"+$("#kokoelmatu").val());
					});
				});
				
				$("#lainaa").on("click", function () {
					if (kokoelmanimi=="" || kokoelmatyyppi==1) {
                        return;
                    }
					if ($("#korihaku").val()=="" || $("#lainaaja").val()=="") {
                        return;
                    }
					$("#chatbox").removeAttr("hidden");
					$("#chatbox").html("<?php echo _("Lainataan pelejä, hetki");?>");
					url = "<?php echo "$baseurl/json/json_lainaaKorista.php?mista=";?>"+$("#korihaku").val()+"&mihin="+kokoelmanimi+"&kuka="+$("#lainaaja").val();
					url = encodeURI(url);
					$.get(url, function (data) {
						$("#chatbox").html("<?php echo _("Lainattiin ");?>"+data['lkm']+"<?php echo _(" peliä korista:");?>"+$("#korihaku").val());
					});	
				});
				
				$("#omistaja").autocomplete({
					source : "<?php echo $baseurl; ?>/json/json_tunniste.php",
					minLength: 3,
					delay : 500					
				});
                
				$("#kokoelmat tbody").on("click", "tr", function () {
                    kokoelma=($(this).children("td:first").html());
                    load(kokoelma);
                })
                
				var kokoelmanimi="";
                var tapahtumanimi="";
                var kokoelmatyyppi="";
				
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
							kokoelmanimi=false;
							tapahtumanimi=false;
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
                                    case "laji":
										kokoelmatyyppi=value;
							        case "omistaja":
                                    case "julkisuus":
                                        $("#"+index).val(value);
                               
							            break;
                                    default:
                                        break;
                                }
                            });
                            $("#chatbox").removeClass("alert-info");
                            $("#chatbox").attr("hidden", true);
                            $("#poista").removeAttr("disabled");
                            $("#oikeudet").removeAttr("disabled");
                            $("#talleta").removeAttr("disabled");
							if (kokoelmatyyppi==0 && kokoelmanimi!="") {
                                $("#lainaa").removeAttr("disabled");
								$("#tuo").removeAttr("disabled");
                            }
							else {
								$("#kokoelmatu").attr("disabled", "true");
								$("#tuo").attr("disabled", "true");
							}
                    
                       }
                    });
                }
				
				/** Rakennetaan kokoelmatuontia varten select
				 * */
				url="<?php echo "$baseurl/json/json_listCollections.php?";?>";
				if (kokoelmanimi!="") {
                    url=url+"&filter="+kokoelmanimi;
                }
				url=encodeURI(url);
				$.get(url, function(data) {
					$.each(data, function(index, item) {
						console.log(item);
						if (item['value']=='-') {
							$("#kokoelmatu").append('<option value="'+item['value']+'">'+item['value']+'</option>');
							return;
                        }
						$("#kokoelmatu").append('<option value="'+item['value']['nimi']+'">'+item['value']['nimi']+'</option>');
					});
				});
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
					<div class="col-lg-2 col-md-3 col-sm-4 col-xs-6">                                          
						<label class="control-label" for="kokoelmatu"><?php echo _("Tuo pelit kokoelmasta:");?></label>
					</div>
					<div class="col-lg-10 col-md-9 col-sm-8 col-xs-6">
						<div class="input-group">
							<select id="kokoelmatu" name="kokoelmatu" class="form-control"></select>
							<span class="input-group-btn"><button class="btn btn-default" type="button" id="tuo" disabled="true"/><?php echo _("Tuo");?></button></span>
						</div>
						<p class="help-block"><?php echo _("Kopioidaanko pelit jostakin kokoelmasta?");?></p>						
					</div>
				</div>
		
				<div class="form-group">
					<div class="col-lg-2 col-md-2 col-sm-4 col-xs-4">                                          
						<label class="control-label" for="kokoelmatu"><?php echo _("Lainaa korista kokoelmaan:");?></label>
					</div>
					<div class="col-lg-6 col-md-4 col-sm-4 col-xs-4">
						<input type="text" id="korihaku" name="kori" size="40" maxlength="255" class="form-control"/>
						<p class="help-block"><?php echo _("Lainataanko pelit jostakin korista?");?></p>
					</div>
					<div class="col-lg-1 col-md-2 col-sm-4 col-xs-4">
						<label class="control-label" for="lainaaja"><?php echo _("Lainaaja:");?></label>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-4">					
						<div class="input-group">
							<input type="text" id="lainaaja" name="lainaaja" class="form-control" size="20" maxlength="255"/>
							<span class="input-group-btn"><button class="btn btn-default" type="button" id="lainaa" disabled="true"><?php echo _("Lainaa");?></button></span>	
						</div>
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
		<?php
			function returnValues($field, $type="INPUT", $value="") {}
		?>
		<?php require("$basepath/view/forms/event.php");?>			   
		<?php include_once("$basepath/view/footer.html");?>
	</body>
</html>