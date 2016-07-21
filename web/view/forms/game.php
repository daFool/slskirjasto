<?php
/**
 * Pelin lisääminen - lomake
 *
 *  *
 * @uses globals.php
 * @uses common.php
 * @uses uses.php
 * @uses minrights.php
 * 
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 * */
require_once("../../globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/minrights.php");

$kokoelma = isset($_REQUEST['collection']) ? $_REQUEST['collection'] : false;
if($kokoelma===false) {
    header("Location: $baseurl/index.php");
    die();
}
$virhe = isset($_REQUEST['virhe']) ? htmlspecialchars(urldecode($_REQUEST['virhe'])) : false;
$_SESSION["paluu"]="{$baseurl}/view/forms/game.php";
$metodi = isset($_REQUEST['metodi']) ? $_REQUEST['metodi'] : 'uusi';
$peliid = isset($_REQUEST['tunniste']) ? $_REQUEST['tunniste'] : false;
$k = new SLSCOLLECTIONS($db);
$ka = $k->checkCollection($kokoelma);
$u = new SLSUSERS($db);
$kn = $u->fetchWithTunnus($ka["omistaja"]);
$omistaja = "{$kn["nimi"]} / {$ka["omistaja"]}";
include_once("$basepath/view/html_base.html");
?>
	<script type="text/javascript" src="<?php echo $baseurl;?>/js/kontrolli.js"></script>
    <script type="text/javascript">		
		function lataa(id) {
			$.getJSON("<?php echo $baseurl;?>/json/json_collection_game.php?id="+id, function (json) {
                if (json.kilroy!="") {
                    alert(json.kilroy);
                    window.location="<?php echo $baseurl;?>/index.php";
                }
                $.each(json, function (index, value) {
                    switch (index) {
						case "bggrank":
							$("#bggl").html("<?php echo _("BGG-rank: ");?> "+value);
							break;
						case "score":
							$('#scorel').html("<?php echo _("BGG-score:");?>"+value);
							break;
						case "tuotu":
							break;
						case "tuotukokoelmasta":
							$("#orgkokoelma").html("<?php echo _("Tuotu kokoelmasta:");?>"+value);
							break;
						case "alkuperainentunniste":
							$("#orgtunniste").html("<?php echo _("Alkuperäinen tunniste:");?>"+value);
							break;
						default:
							$("#"+index).val(value);
							break;
					}                                        
                })
				checkEm();
            })
		}
		
		function checkEm() {
			if ($("#peli").get(0).checkValidity()==true) {
				$("#tallenna").removeAttr("disabled");
			}
			else {
				$("#tallenna").attr("disabled", "true");
			}
			$("#peli").find("input, textarea, select").each(function () {
				check(this);										
			});
		}
			
        function updateForm(json, kuka) {
			$("#vuosi").val(json.vuosi);
            $("#nimi").val(json.nimi);
			$("#suunnittelija").val(json.suunnittelija);
			$("#julkaisija").val(json.julkaisija);
			$("#pelaajia").val(json.pelaajia);
			$("#bggl").html("<?php echo _("BGG-rank: ");?> "+json.bggrank);
			$("#bggrank").val(json.bggrank);
			$('#age').val(json.age);
			$('#scorel').html("<?php echo _("BGG-score:");?>"+json.score);
			$('#score').val(json.score);
			if (kuka=="bgg") {
				$("#kesto").val(json.aika);				
			}
			else {
				$("#bgglinkki").val(json.bgglinkki);
				$("#kesto").val(json.kesto);
				$("#gtin").val(json.gtin);
				if (kuka=="kokoelma") {
					$("#orgkokoelma").html(json.kokoelma);
					$("#orgcollection").val(json.kokoelma);
					$("#orgid").val(json.kokoelmantunniste);
					$("#orgtunniste").html(json.kokoelmantunniste);//code
				}
			}
			
		}
		
		$(function() {
            
			/* BGG-haku */
            $("#bggnappula").on('click', function () {                
                if ($("#bgglinkki").get(0).checkValidity()==true) {
					$("#bggstatus").html("<?php echo _("Haetaan...");?>");   
                    $.getJSON("<?php echo $baseurl;?>/json/json_geek.php?geekurl="+encodeURIComponent($("#bgglinkki").val()), function (json) {
                        if (json.virhe=="False" || json.virhe==false) {
							$("#bggstatus").html("");
							updateForm(json,"bgg");					
		                    checkEm();
                        }
                        else {
							$("#bggstatus").html("<?php echo _("Ei löytynyt.");?>");
                            console.log(json.virhe);
						}
                   })
                }
                else {
					$("#bggstatus").html("<?php echo _("Huono linkki.");?>");
                }
            })
			
			// Omistajan autocomplete
            $("#omistaja").autocomplete({
                source : "<?php echo $baseurl; ?>/json/json_lainaaja.php",
                minlength: 2
            })
			
			// Nimen autocomplete
			$("#nimi").autocomplete({
				source : "<?php echo $baseurl;?>/json/json_peli.php",
				minlength: 2
			})
			
			$("#nimihaenappula").on('click', function () {
				var nimi = $("#nimi").val();
				if (typeof nimi==undefined || nimi=="") {
					return;
				}
				$("#nimistatus").html("<?php echo _("Etsitään...");?>");
				$.get("<?php echo $baseurl;?>/json/json_peliID.php", {term : nimi}, function (data) {
					if (data['Virhe']=="OK") {
						updateForm(data.data);
						checkEm();
					} 
				}).fail(function() { alert("WTF?") });
				$("#nimistatus").html("");				
			})
			
			$("#nimituonappula").on('click', function () {
				var nimi = $("#nimi").val();
				if (typeof nimi==undefined || nimi=="") {
					return;
				}
				$("#nimistatus").html("<?php echo _("Tuodaan...");?>");
				$.get("<?php echo $baseurl;?>/json/json_s2Kokoelmat.php", {nimi : nimi}, function(data) {
					if (data['Virhe']!="OK") {
						$("#nimistatus").text(data["Virhe"]);
						return;
					}
					$("#kokoelmas").select2({data : data["data"]});
					$("#nimistatus").html("");
					$("#tuonti").modal();
				});
			});
					
			$("#tuokokoelmasta").on('click', function() {
				var nimi = $("#nimi").val();
				if (typeof nimi==undefined || nimi=="") {
					return;
				}
				var kokoelma = $("#kokoelmas").val();
				if (typeof kokoelma==undefined || kokoelma=="") {
					return;
				}
				$("#tuonti").modal('hide');
				$.get("<?php echo $baseurl;?>/json/json_tuoKokoelmasta.php", {peli : nimi, kokoelma : kokoelma}, function (data) {
					if (data["Virhe"]=="OK") {
						updateForm(data.data, "kokoelma");
					}
				}).fail(function () { alert("WTF?");});
			})
			$("#peli").find("input, textarea, select").each(function () {			
				$(this).blur(function () {
					checkEm();
				});
			});
						            
		    $("#tallenna").on('click', function () {
                // console.log($("#peli").serialize());
                $("#peli").submit();
            })
            $("#vbutton").on('click', function () {
				$("#varoitus").hide();
			})
		
			if ($("#omistaja").val()=="") {
				$("#omistaja").val("<?php echo $omistaja;?>");
			}
    
            <?php if($metodi!='lisää' && $peliid!==false) { ?>
				lataa("<?php echo $peliid;?>");
				$("#nimituonappula").attr("disabled", true);
	        <?php
            }
            if($virhe!==false) {
                ?>
                $("#warning").html("<?php echo $virhe;?>");
                $("#varoitus").show();
                <?php
            } ?>
            <?php
            if(isset($_SESSION["ra"])) {
                foreach($_SESSION["ra"] as $key=>$value) {
                    echo "$(\"#$key\").val(\"$value\")\n";
                }
                unset($_SESSION["ra"]);
            }
            ?>
			$("#nollaa").on("click", function() {
				$("#peli")[0].reset();
				$("#bggl").html("");
				$("#scorel").html("");
				$("#orgkokoelma").html("");
				$("#orgtunniste").html("");
				<?php if($metodi!='lisää' && $peliid!==false) { ?>
					lataa("<?php echo $peliid;?>");
				<?php } ?>	        	
			})
			switch ($("#metodi").val()) {
                case "lisää":
				case "uusi":
					val="<?php echo _("Pelin lisääminen");?>";
					break;
				case "muokkaa":
					val="<?php echo _("Pelin muokkaaminen");?>";
					break;
				default:
					window.console.log($("#metodi").val())
					val="<?php echo _($metodi);?>";
					break;
            }
			$("#otsikko").html(val);			
        })
    </script>
    <title><?php echo _("Pelin lisäys/muokkaus");?></title>
    </head>
    <body>
        <?php include_once("$basepath/view/navbar.html"); ?>
        <div class='container-fluid'>
            <div class="row">
                <h2 id="otsikko"></h2>
                <div class="text-warning">
					<?php echo _("Jos lisäät pelin bgg-linkkikentän kautta, käy pyyhkimässä nimien ja julkaisijoiden joukosta väärien edikoiden tiedot!");?>
					<?php echo _("<>-merkin merkityt kentät ovat pakollisia ja []-merkein merkityt kentät vapaaehtoisia.")?>;
				</div>
			</div>
			
            <form name="peli" id="peli" method="POST" action="<?php echo $baseurl;?>/lisaaPeli.php" class="form form-horizontal">                            
					<!-- Static fields -->
				<input type="hidden" name="metodi" id="metodi" value="<?php echo $metodi;?>"/>
				<input type="hidden" name="peliid" id="peliid" value=""/>
				<input type="hidden" name="kokoelmapeliid" id="kokoelmapeliid" value="<?php echo htmlspecialchars($peliid);?>"/>
				<input type="hidden" name="kokoelma" value="<?php echo $kokoelma;?>"/>
				<input type="hidden" id="score" name="score" value="-1"/>
				<input type="hidden" id="bggrank" name="bggrank" value="-1"/>
				<input type="hidden" id="orgid" name="orgid" value=""/>
				<input type="hidden" id="orgcollection" name="orgcollection" value=""/>
				
				<div class="form-group">
					<div class="col-sm-1">
						<label for="nimi" class="control-label"><?php echo _("Pelin nimi: ");?></label>
					</div>
					<div class="col-sm-5">
						<div class="input-group">
							<input type="text" class="form-control" name="nimi" id="nimi" required="true" size="40" maxlength="255"/>
							<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
							<div class="input-group-addon btn" id="nimihaenappula"><?php echo _("Hae");?></div>
							<div class="input-group-addon btn" id="nimituonappula"><?php echo _("Tuo");?></div>
						</div>
						<p class="help-block"><?php echo _("Pelin &lt;nimi&gt;, mielellään BGG:n primäärinimi");?><span id="nimistatus"></span></p>
					</div>
					<div class="col-sm-1">								
						<label for="suunnittelija" class="control-label"><?php echo _("Suunnittelija(t): ");?></label>
					</div>
					<div class="col-sm-5">
						<input type="text" name="suunnittelija" id="suunnittelija" required="true" size="40"
							   maxlength="255" class="form-control"/>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<p class="help-block"><?php echo _("Pelin &lt;Suunnittelijat&gt; - jos et tiedä kirjoita: \"Ei tiedossa\"");?></p>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-1">
						<label for="julkaisija" class="control-label"><?php echo _("Julkaisija(t): ");?></label>
					</div>
					<div class="col-sm-5">
						<input type="text" name="julkaisija" id="julkaisija" required="true" size="40" maxlength="255" class="form-control"/>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<p class="help-block"><?php echo _("Pelin &lt;julkaisija(t)&gt;");?></p>
					</div>
					<div class="col-sm-1">
						<label for="bgglinkki" class="control-label"><?php echo _("BGG-linkki: ");?></label>
					</div>
					<div class="col-sm-5">
						<div class="input-group">
							<input type="url" class="form-control" name="bgglinkki" id="bgglinkki" size="40" maxlength="255"
								   pattern="https?://(www.)?boardgamegeek.com/(board)?game.*/[0123456789]+(/[0-9a-zA-Z-]*)?"/>
							<div class="input-group-addon btn" id="bggnappula"><?php echo _("Hae");?></div>								
						</div>
						
						<p class="help-block"><?php echo _("Pelin [sivuosoite] Board Game Geekissä.");?> <span id="bggstatus"></span></p>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-1">
						<label for="age" class="control-label" id="agel"><?php echo _("Ikä: ");?></label>
					</div>
					<div class="col-sm-2">
						<input type="number" min=0 max=99 name="age" size="2" maxlenght="2" id="age" class="form-control" placeholder="4"/>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<p class="help-block"><?php echo _("Alkaen [iästä]");?></p>
					</div>
					<div class="col-sm-1">
						<label for="pelaajia" class="control-label"><?php echo _("Pelaajia: ");?></label>
					</div>
					<div class="col-sm-2">
						<input type="text" name="pelaajia" size="10" maxlenght="255" id="pelaajia" class="form-control"
							   placeholder="2 - 4"/>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<p class="help-block"><?php echo _("Vähintään - Enintään [pelaajia]");?></p>
					</div>
					<div class="col-sm-1">
						<label for="kesto" class="control-label"><?php echo _("Kesto minuuteissa: ");?></label>
					</div>
					<div class="col-sm-2">
						<input type="number" name="kesto" id="kesto" min="0" max="640" placeholder="15" class="form-control"/>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<p class="help-block"><?php echo _("[Kesto] minuuteissa");?></p>
					</div>
					<div class="col-sm-1">
						<label for="vuosi" class="control-label"><?php echo _("Julkaisuvuosi: ");?>
					</div>
					<div class="col-sm-2">
						<input type="number" min="900" max="2100" name="vuosi" id="vuosi"/ class="form-control" placeholder="2015">
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<p class="help-block"><?php echo _("[Julkaisuvuosi]");?></p>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-1">
						<label for="huomautus" class="control-label"><?php echo _("Huomautus: ");?></label>
					</div>
					<div class="col-sm-5">
						<input tpye="text" name="huomautus" id="huomautus" class="form-control" placeholder="<?php echo _("Säännöt saksaksi");?>"/>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<p class="help-block"><?php echo _("[Huomautus]");?></p>
					</div>
					<div class="col-sm-1">
						<label for="omistaja" class="control-label"><?php echo _("Omistaja: ");?></label>
					</div>
					<div class="col-sm-5">
						<input type="text" class="form-control" required="true" name="omistaja" id="omistaja" size="40" maxlength="255"/>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<p class="help-block"><?php echo _("Pelin &lt;omistaja&gt;");?></p>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-1">
						<label for="lahjoittaja" class="control-label"><?php echo _("Lahjoittaja: ");?></label>
					</div>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="lahjoittaja" id="lahjoittaja" size="20"
																					  maxlength="255" />
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<p class="help-block"><?php echo _("Pelin [lahjoittaja]");?></p>
					</div>
					<div class="col-sm-1">
						<label for="lahjoittajanurl" class="control-label"><?php echo _("Lahjoittajan www-osoite:");?></label>
					</div>
					<div class="col-sm-5"><input type="url" name="lahjoittajawww" id="lahjoittajawww" size="80" maxlenght="255" class="form-control"/>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<p class="help-block"><?php echo _("Pelin [lahjoittajan www-osoite]");?></p>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-1">
						<label for="hylly" class="control-label"><?php echo _("Hylly: ");?></label>
					</div>
					<div class="col-sm-3">
						<input type="text" name="hylly" id="hylly" size="10" maxlength="255" class="form-control"/>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<p class="help-block"><?php echo _("Pelin [hylly]");?></p>						
					</div>
					<div class="col-sm-1">
						<label for="paikka" class="control-label"><?php echo _("Paikka: ");?>
					</div>
					<div class="col-sm-3">
						<input type="text" name="paikka" id="paikka" size="10" maxlength="255" class="form-control"/>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<p class="help-block"><?php echo _("Pelin [paikka] hyllyssä.");?></p>
					</div>
					<div class="col-sm-1">							
						<label for="laatikko" class="control-label"><?php echo _("Laatikko: ");?></label>
					</div>
					<div class="col-sm-3">
						<input type="text" name="laatikko" id="laatikko" size="10" maxlength="255" class="form-control"/>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<p class="help-block"><?php echo _("Pelin pakkaus[laatikko].");?></p>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-1">
						<label for="kunto" class="control-label"><?php echo _("Kunto: ");?></label>
					</div>
					<div class="col-sm-5">
						<input type="text" name="kunto" id="kunto" size="40" maxlength="255" class="form-control" placeholder="<?php
						echo _("Puuttuu 1 noppa.");?>"/>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<p class="help-block"><?php echo _("Pelin [kunto].");?></p>						
					</div>
					<div class="col-sm-1">
						<label for="gtin" class="control-label"><?php echo _("GTIN: ");?></label>
					</div>
					<div class="col-sm-5">
						<input type="text" id="gtin" name="gtin" size="20" maxlength="255" class="form-control"/>
						<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<p class="help-block"><?php echo _("Valmistajan [viivakoodi].");?></p>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-3" id="bggl"></div>
					<div class="col-sm-3" id="scorel"></div>
					<div class="col-sm-3" id="orgkokoelma"></div>
					<div class="col-sm-3" id="orgtunniste"></div>
				</div>				
				<button type="button" class="btn btn-lg btn-warning" id="nollaa"><?php echo _("Nollaa/Palauta");?></button>
				<button type="button" class="btn btn-lg btn-default" id="tallenna" disabled="true"><?php echo _("Talleta");?></button>						
            </form>
            <div class="alert alert-warning collapse" role="alert" id="varoitus">
				<button type="button" class="close" id="vbutton" aria-label="Close"><span aria-hidden="true">&times;</span></button>				
				<span id="warning">Varoitus</span>
			</div>
		</div>
		
		<div class="modal fade" id="tuonti">
			<div class="modal-dialog modal-lg">
			    <div class="modal-content">

			        <div class="modal-header">
			            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title"><?php echo _("Tuo kokoelmasta");?></h4>
					</div>

					<div class="modal-body">
					    <form name="kokoelma" id="kokoelma" class="form form-horizontal">

		                    <div class="form-group">
								<div class="col-sm-2">
									<label for="tanimi" class="control-label"><?php echo _("Kokoelma");?> </label>
								</div>
								<div class="col-sm-10">
									<select id="kokoelmas" name="kokoelmas" class="form-control" style="width: 100%"></select>
								</div>
							</div>                   

						</form>
					</div>

					<div class="modal-footer">
					    <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _("Sulje");?></button>
					    <button id="tuokokoelmasta" type="button" class="btn btn-primary"><?php echo _("Tuo");?></button>
					</div>

				</div>
			</div>
		</div>

        <?php include_once("$basepath/view/footer.html");?>
    </body>
</html>