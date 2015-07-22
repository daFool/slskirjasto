<?php
/**
 * Kokoelman käsittely
 *
 * Lainaus, lisäys, poisto jnpsp
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
require_once("globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/users.php");
require_once("$basepath/helpers/collections.php");
require_once("$basepath/helpers/minrights.php");

$collection = isset($_REQUEST["collection"]) ? $_REQUEST["collection"] : false;

if($collection===false) {
	header("Location: index.php");
	die();
 }
 include_once("$basepath/html_base.html");
?>
		<title><?php echo _("Lautapelikirjasto : kokoelman hallinta");?></title>
		<script type="text/javascript">
			$(document).ready(function() {
				var kokoelmat=$('#kokoelma').dataTable( {
					"processing": true,
					"serverSide": true,
					"responsive": true,
					"orderMulti": true,
					"search": {
					"regex": true,
					"caseInsensitive": true,
					"smart" : true},
					"ajax": "json_collectiongames.php?collection=<?php echo urlencode($collection);?>",
					<?php include("$basepath/datatables_language.js");?>
				} );
			    $('#kokoelma tbody').on( 'click', 'tr', function () {
					var tunniste=$(this).children("td:first").html();
					if ( $(this).hasClass('selected') ) {
						$(this).removeClass('selected');
					}
					else {
						kokoelmat.$('tr.selected').removeClass('selected');
						$(this).addClass('selected');
					}
			    } );
			    var collectionSelect=<?php
					$db = new SLSDB();
					$c = new SLSCOLLECTIONS($db);
					echo $c->getCollectionNames_json();
				?>;
			    $(".kokoelmaselect").select2({data : collectionSelect});
			    $(".kokoelmaselect").change(function () {
				var valittu="";
				valittu=$(".kokoelmaselect option:selected").text();
				if (valittu != "-") {
					window.location="<?php echo $baseurl;?>/tuoKokoelmasta.php?mista="+valittu+"&mihin=<?php echo urlencode($collection);?>"
				}
			    })
				$("#Lainaa").on('click', function () {
					var rivi=$('#kokoelma tr.selected');
					if (rivi.length==0) {
						return;
					}
					if (window.console) {
						console.log("Lainaa/Palauta:"+rivi.children("td:first").html());
						console.log("Tila:"+rivi.children("td:nth-child(6)").html());
					}
					var tunniste = rivi.children("td:first").html();
					var peli = rivi.children("td:nth-child(2)").html();
					var tila=rivi.children("td:nth-child(6)").html();
					switch(tila) {
						case "Vapaa":
							console.log("Lainaa");
							kohde="<?php echo UrlMungler("{$baseurl}/forms/lainaus.php/?collection=".urlencode($collection));?>&tunniste=";
							kohde+=encodeURIComponent(tunniste)+"&peli="+encodeURIComponent(peli);
							window.location=kohde;
							break;
						case "Lainassa":
							console.log("Palauta");
							kohde="<?php echo UrlMungler("{$baseurl}/palauta.php/?collection=".urldecode($collection));?>&tunniste=";
							kohde+=encodeURIComponent(tunniste)+"&peli="+encodeURIComponent(peli);
							window.location=kohde;
							break;
						case "Poistettu":
							$("#warning").html("<?php echo _("Poistettua peliä ei voi palauttaa tai lainata");?>");
							$("#varoitus").show();
							console.log("Poistettu");
							break;
					}
				} );
				$("#vbutton").on('click', function () {
					$("#varoitus").hide();
				})
				$("#Lisää").on('click', function () {
					window.location="<?php echo UrlMungler("{$baseurl}/forms/game.php?collection=".urlencode($collection));?>";
				})
				$("#Poista").on('click', function () {
					var rivi=$('#kokoelma tr.selected');
					if (rivi.length==0) {
						return;
					}
					if (window.console) {
						console.log("Deaktivoi:"+rivi.children("td:first").html());
						console.log("Tila:"+rivi.children("td:nth-child(6)").html());
					}
					var tunniste = rivi.children("td:first").html();
					var peli = rivi.children("td:nth-child(2)").html();
					var tila=rivi.children("td:nth-child(6)").html();
					switch(tila) {
						case "Vapaa":
							console.log("Deaktivoi");
							kohde="<?php echo UrlMungler("{$baseurl}/deaktivoi.php/?collection=".urlencode($collection));?>&tunniste=";
							kohde+=encodeURIComponent(tunniste)+"&peli="+encodeURIComponent(peli);
							window.location=kohde;
							break;
						case "Lainassa":
							$("#warning").html("<?php echo _("Lainassa olevaa peliä ei deaktivoida. Palauta peli ensin");?>");
							$("#varoitus").show();
							break;
						case "Poistettu":
							$("#warning").html("<?php echo _("Poistettua peliä ei voi poistaa");?>");
							$("#varoitus").show();
							console.log("Poistettu");
							break;
					}
					
				})
				$("#Muokkaa").on('click', function () {
					var rivi=$('#kokoelma tr.selected');
					if (rivi.length==0) {
						return;
					}
					if (window.console) {
						console.log("Muokkaa:"+rivi.children("td:first").html());
						console.log("Tila:"+rivi.children("td:nth-child(6)").html());
					}
					var tunniste = rivi.children("td:first").html();
					var peli = rivi.children("td:nth-child(2)").html();
					var tila=rivi.children("td:nth-child(6)").html();
					switch(tila) {
						case "Vapaa":
						case "Poistettu":
							console.log("Muokkaa");
							kohde="<?php echo UrlMungler("{$baseurl}/forms/game.php/?collection=".urlencode($collection));?>&tunniste=";
							kohde+=encodeURIComponent(tunniste)+"&peli="+encodeURIComponent(peli)+"&metodi=muokkaa";
							window.location=kohde;
							break;
						case "Lainassa":
							$("#warning").html("<?php echo _("Lainassa olevaa peliä ei muokata. Palauta peli ensin!");?>");
							$("#varoitus").show();
							break;
					}
					
				})
			} );
		
		</script>
	</head>
	<body>
		<?php include_once("$basepath/navbar.html");?>
		<div class="container"
			<section class='col-xs-12 col-sm-6 col-md-8'>
				<h2><?php printf( _("Kokoelman %s pelit"), htmlentities($collection));?></h2>
				<label for="kokoelmaselect"><?php echo _("Lisää pelit kokoelmasta:");?></label> <select id="kokoelmaseelct" class="kokoelmaselect" style="width: 20%"'></select>
				<table id="kokoelma" class="display" cellspacing="0" width="100%">
					<thead>
					  <tr>
					    <th><?php echo _("Tunniste");?></th><th><?php echo _("Nimi");?></th><th><?php echo _("Hylly");?></th>
						<th><?php echo _("Paikka");?>
						</th><th><?php echo _("Omistaja");?></th><th><?php echo _("Tila");?></th>
					  </tr>
					</thead>
					<tfoot>
					  <tr>
					    <th><?php echo _("Tunniste");?></th><th><?php echo _("Nimi");?></th><th><?php echo _("Hylly");?></th><th><?php echo _("Paikka");?>
						</th><th><?php echo _("Omistaja");?></th><th><?php echo _("Tila");?></th>
					  </tr>
					</tfoot>
				</table>
				<button type="button" class="btn btn-lg btn-default" id="Lainaa"><?php echo _("Lainaa/Palauta");?></button>
				<button type="button" id="Muokkaa" class="btn btn-lg btn-default"><?php echo _("Muokkaa");?></button>
				<button type="button" class="btn btn-lg btn-default" id="Lisää"><?php echo _("Lisää");?></button> <button type="button" id="Poista" class="btn btn-lg btn-default">Poista/Deaktivoi</button>
			</section>
			<div class="alert alert-warning collapse" role="alert" id="varoitus">
				<button type="button" class="close" id="vbutton" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<span id="warning">Varoitus</span>
			</div>
		</div>
		<?php include_once("$basepath/footer.html");?>
	</body>
</html>
