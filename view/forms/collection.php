<?php
/**
 * Kokoelman luominen - lomake
 *
 *  *
 * @uses globals.php
 * @uses common.php
 * 
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 * */
require_once("../../globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/minrights.php");

$metodi=isset($_SESSION["kokoelma_metodi"]) ? $_SESSION["kokoelma_metodi"] : false;
if($metodi===false) {
	$metodi = isset($_REQUEST['method']) ? $_REQUEST['method'] : "add";
}
$error = isset($_REQUEST['error']) ? htmlspecialchars(urldecode($_REQUEST['error'])) : false;
$_SESSION["kokoelma_metodi"]=$metodi;

if($metodi=="add" && $error===false) {
	$fieldit=array("nimi", "tunnus", "julkisuus", "laji", "omistaja", "tnimi", "sijainti", "alkupvm", "loppupvm");
	foreach($fieldit as $fieldi) {
		if(isset($_SESSION["kokoelma_$fieldi"])) {
			unset($_SESSION["kokoelma_$fieldi"]);
		}
	}
}
/**
 * Lomakkeen kenttien "paluuarvot"
 *
 * Populoi kentän aiemmin käytetyillä arvoilla.
 * @param string $field Populoitava kenttä
 * @return mixed Pääsääntöisesti merkkijonomuotoinen arvo
 * */
function returnValues($field, $type="INPUT", $value="") {
    $res="";
    if(isset($_SESSION["kokoelma_$field"])) {
		switch($type) {
			case "INPUT":
				$t = htmlspecialchars($_SESSION["kokoelma_$field"]);
				$res=" value=\"$t\"";
				break;
			case "SELECT":
				if($_SESSION["kokoelma_$field"]==$value)
					$res="selected";
				break;
		}
    }
    return $res;
}




include_once("$basepath/view/html_base.html");
?>
        <title><?php echo _("Kokoelman lisäys/muokkaus");?></title>
		<script type="text/javascript">
			$(document).ready(function () {
				$("#collection").find("input, textarea, select").each(function () {
					$(this).blur(function() {
						checkClasses("#collection", "#subbari");
					});
				});
			
				$("#tapahtuma").find("input, textarea, select").each(function () {
					$(this).blur(function() {
						checkClasses("#tapahtuma", "#tatalleta");
					});
				}); 
			
				function checkClasses(formi, subbari) {
					console.log(formi);
					console.log(subbari);
					if ($(formi).get(0).checkValidity()===true) {
						$(subbari).attr("disabled", false);
						//code
					} else {
						$(subbari).attr("disabled", true);
					}
					$(formi).find("input, textarea, select").each(function () {
						parent="#"+$(this).attr("id")+"g";
						icon="#"+$(this).attr("id")+"c";
						console.log(parent);
						if ($(this).get(0).checkValidity()===true) {
							if($(parent).hasClass("has-error")) {
								$(parent).removeClass("has-error ");
								$(icon).removeClass("glyphicon-remove");
							}
							$(parent).addClass("has-success");
							$(icon).addClass("glyphicon-ok");
							if(!$(parent).hasClass("has-feedback")) {
								$(parent).addClass("has-feedback");
							}
							
						} else {
							if($(parent).hasClass("has-success")) {
								$(parent).removeClass("has-success");
								$(icon).removeClass("glyphicon-ok");
							}
							$(parent).addClass("has-error");//code
							$(icon).addClass("glyphicon-remove");
							if(!$(parent).hasClass("has-feedback")) {
								$(parent).addClass("has-feedback");
							}
							
						}
					})
				}
				$("#omistaja").autocomplete({
					source : "<?php echo $baseurl; ?>/json/json_tunniste.php",
					minlength: 2
				})
				
				$("#laji").on("focus", function () {
					if ($("#laji").val()==0) {
						$("#tapahtumam").modal('show');
						$("#tatiedot").attr("hidden", false);
						taTiedot();
					}
					else {
						$("#tatiedot").attr("hidden", true);
					}
				});
				
				$("#laji").on("blur", function() {
					if ($("#laji").val()==0) {
						$("#tapahtumam").modal("show");
						$("#ttiedot").attr("hidden", false);
						taTiedot();//code
					}
					else {
						$("#ttiedot").attr("hidden", true);
					}
				});
				
				function taTiedot() {
					$("#ta_nimi").html($("#tnimi").val());
					$("#ta_sijainti").html($("#sijainti").val());
					$("#ta_alkaa").html($("#alkupvm").val());
					$("#ta_loppuu").html($("#loppupvm").val());
				}
				
				function saveTapahtuma() {
					$("#tnimi").val($("#tanimi").val());
					$("#sijainti").val($("#tasijainti").val());
					$("#alkupvm").val($("#talku").val());
					$("#loppupvm").val($("#tloppu").val());
					taTiedot();
					$("#ttiedot").attr("hidden", false);
				}
				
				$("#tatalleta").on('click', function () {
					console.log("Klik");
					saveTapahtuma();
				});
				checkClasses("#collection", "#subbari");
				checkClasses("#tapahtuma", "#tatalleta");
			})
		</script>
    </head>
	
    <body>
        <?php include_once("$basepath/view/navbar.html");?>
        <div class="container">
			<section class='col-xs-12 col-sm-6 col-md-8'>
		        <h2><?php echo _("Kokoelman lisääminen/muuttaminen");?></h2>
				<?php
				if($error !== false) {?>
					<div class="text-danger"><?php echo $error;?></div>
				<?php }?>
				<form id="collection" method="POST" action="<?php echo $baseurl;?>/collection_edit.php">
					<div class="form-group" id="nimig">
						<label for="nimi" class="control-label"><?php echo _("Nimi:");?></label>
						<input type="text" class="form-control" maxlength="255" size="40" name="nimi" id="nimi" placeholder="SLS" required
							<?php echo returnValues("nimi");?> <?php if($metodi!="add") echo "disabled";?>/>
						<span id="nimic" class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<p class="help-block"><?php echo _("Kokoelman nimi, pakollinen, korkeintaan 255 merkkiä.");?></p>
					</div>
					<div class="form-group" id="tunnusg">
						<label class="control-label" for="tunnus"><?php echo _("Tunnus:");?></label>
						<input type="text" class="form-control" maxlength="6" size="6" name="tunnus" id="tunnus" placeholder="ABCDEF" required
							   pattern="[a-zA-Z0123456789]{1,6}" <?php echo returnValues("tunnus");?> />
						<span id="tunnusc" class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<p class="help-block"><?php echo _("Viivakoodin alkuosa, pakollinen, kirjaimet a-z ja numerot, korkeintaan 6 merkkiä.");?></p>	   
					</div>
					<div class="form-group" id="julkisuusg">
						<label class="control-label" for="julkisuus"><?php echo _("Julkisuus");?></label>
						<select name="julkisuus" required class="form-control" id="julkisuus">
							<option value="avoin" <?php echo returnValues("julkisuus", "SELECT", "avoin");?>><?php echo _("Avoin");?></option>
							<option value="yksityinen" <?php echo returnValues("julkisuus", "SELECT", "yksityinen");?>><?php echo _("Yksityinen");?></option>
						</select>
						<p class="help-block"><?php echo _("Onko tieto kokoelman olemassaolosta ja sisällöstä kaikkien saatavilla?");?></p>
					</div>
					<div class="form-group" id="lajig">
						<label class="control-label" for="laji"><?php echo ("Kokoelmalaji:");?></label>
						<select name="laji" required class="form-control" id="laji">
							<option value="1" <?php echo returnValues("laji", "SELECT", 1);?>><?php echo _("Varasto");?></option>
							<option value="0" <?php echo returnValues("laji", "SELECT", 0);?>><?php echo _("Tapahtuma");?></option>
						</select>
						<p class="help-block"><?php echo _("Onko kyseessä pysyvä kokoelma (varasto) vai tapahtumakokoelma?");?></p>
					</div>
					<div class="form-group" id="omistajag">
						<?php
						if($user['tila']!='superadmin') { ?>
							<input type="hidden" name="omistaja" value="<?php echo $user['tunniste'];?>"/>
							<?php } else { ?>
							<label class="control-label" for="omistaja"><?php echo _("Omistaja:");?></label>
							<input type="text" class="form-control" required id="omistaja" name="omistaja" size="40" maxlenght="255" <?php echo returnValues("omistaja");?> />
							<span id="omistajac" class="glyphicon form-control-feedback" aria-hidden="true"></span>
						<?php
						}
						?>                 	
					</div>
					<input type="hidden" id="tnimi" name="tnimi" value="<?php echo returnValues("tnimi");?>"/>
					<input type="hidden" id="sijainti" name="sijainti" value="<?php echo returnValues("sijainti");?>"/>
					<input type="hidden" id="alkupvm" name="alkupvm" value="<?php echo returnValues("alkupvm");?>"/>
					<input type="hidden" id="loppupvm" name="loppupvm" value="<?php echo returnValues("loppupvm");?>"/>
					<input id="subbari" class="btn btn-default" disabled="true" type="submit" value="<?php echo _("Talleta");?>"/>
				</form>
				<div id="ttiedot" hidden=true>
					<span id="ta_nimi"></span>, <span id="ta_sijainti"></span>: <span id="ta_alkaa"></span> - <span id="ta_loppuu"></span>
				</div>
				<div class="modal fade" id="tapahtumam">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title"><?php echo _("Tapahtuman tiedot");?></h4>
							</div>
							<div class="modal-body">
							<form name="tapahtuma" id="tapahtuma">
								<div class="form-group" id="tanimig">
									<label for="tanimi" class="control-label"><?php echo _("Tapahtuman nimi:");?> </label>
									<input type="text" id="tanimi" size="40" placeholder="Lautapelaamaan 2014" maxlength="255"
									<?php echo returnValues("tnimi");?> class="form-control" required/>
									<span id="tanimic" class="glyphicon form-control-feedback" aria-hidden="true"></span>
									<p class="help-block"><?php echo _("Tapahtuman nimi, pakollinen, maksimissaan 255 merkkiä.");?></p>
								</div>
								<div class="form-group" id="tasijaintig">
									<label for="tasijainti" class="control-label"><?php echo ("Sijainti:");?></label>
									<input type="text" id="tasijainti" placeholder="Kaapelitehdas, Helsinki" size="40" maxlength="255"
									<?php echo returnValues("sijainti");?> class="form-control" required/>
									<span id="tasijaintic" class="glyphicon form-control-feedback" aria-hidden="true"></span>
									<p class="help-block"><?php echo _("Tapahtuman sijainti, pakollinen, maksimissaan 255 merkkiä.");?></p>
								</div>
								<div class="form-group" id="talkug">
									<label for="talku" class="control-label"><?php echo ("Tapahtuma alkaa:");?></label>
									<input type="date" id="talku" size="8" maxlength="20" required <?php echo returnValues("alkupvm");?> class="talku"/>							
									<p class="help-block"><?php echo _("Tapahtuman alkuajankohta: pp.kk.vvvv, pakollinen.");?></p>
								</div>
								<div class="form-group" id="tloppug">
									<label for="tloppu" class="control-label"><?php echo ("Tapahtuma loppuu:");?></label>
									<input type="date" id="tloppu" size="8" required maxlength="20" <?php echo returnValues("loppupvm");?> />
									<p class="help-block"><?php echo _("Tapahtuman loppuajankohta: pp.kk.vvvv, pakollinen.");?></p>
								</div>                        
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _("Sulje");?></button>
							<button id="tatalleta" type="button" disabled="true" class="btn btn-primary"><?php echo _("Talleta");?></button>
						</div>
					</div>
				</div>
			</section>
		</div>
		<?php include_once("$basepath/view/footer.html");?>
    </body>
</html>