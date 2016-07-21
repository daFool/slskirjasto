		<title><?php echo _("Lautapelikirjasto : kokoelman hallinta");?></title>
		<script type="text/javascript">
			var kokoelmaTunniste="";
			var peli="";
			var tila="";
			var valittu=false;
			
			$(document).ready(function() {
				
				/**
				 * Kokoelmataulun täyttäminen
				 * */
				var kokoelmat=$('#kokoelma').DataTable( {
					"processing": true,
					"serverSide": true,
					"responsive": true,
					"orderMulti": true,
					"lengthMenu" : [ 10, 21, 24, 25, 50, 75, 100],
					"pageLength" : 21,
					"search": {
					"regex": true,
					"caseInsensitive": true,
					"smart" : true},
					"ajax": "<?php echo "$baseurl/json/";?>json_collectiongames.php?collection=<?php echo urlencode($collection);?>",
					<?php include("$basepath/datatables_language.js");?>
				} );
				
			    $('#kokoelma tbody').on( 'click', 'tr', function () {
					var tunniste=$(this).children("td:first").html();
					if ( $(this).hasClass('selected') ) {
						$(this).removeClass('selected');
						valittu=false;
						kokoelmaTunniste="";
						peli="";
						tila="";						
					}
					else {
						kokoelmat.$('tr.selected').removeClass('selected');
						$(this).addClass('selected');
						rivi=$(this);
						kokoelmaTunniste = rivi.children("td:first").html();
						peli = rivi.children("td:nth-child(2)").html();
						tila=rivi.children("td:nth-child(6)").html();
						valittu=true;
						lataaPelinTila(kokoelmaTunniste);
						$("#pelinTila").modal('show');
					}
			    } );
			   
			   $("#Lainaa").on('click', function () {
					if (!valittu) {
						return;
					}
					switch(tila) {
						case "Vapaa":
							console.log("Lainaa");
							kohde="<?php echo "{$baseurl}/view/forms/lainaus.php/?collection=".urlencode($collection);?>&tunniste=";
							kohde+=encodeURIComponent(kokoelmaTunniste)+"&peli="+encodeURIComponent(peli);
							window.location=kohde;
							break;
						case "Lainassa":
							console.log("Palauta");
							kohde="<?php echo "{$baseurl}/palauta.php/?collection=".urldecode($collection);?>&tunniste=";
							kohde+=encodeURIComponent(kokoelmaTunniste)+"&peli="+encodeURIComponent(peli);
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
					window.location="<?php echo "{$baseurl}/view/forms/game.php?collection=".urlencode($collection);?>";
				})
				$("#Poista").on('click', function () {
					if (!valittu) {
						return;
					}
					switch(tila) {
						case "Vapaa":
							console.log("Deaktivoi");
							kohde="<?php echo "{$baseurl}/deaktivoi.php/?collection=".urlencode($collection);?>&tunniste=";
							kohde+=encodeURIComponent(kokoelmaTunniste)+"&peli="+encodeURIComponent(peli)+"&metodi="+encodeURIComponent("lisää");
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
				
				$("#Koriin").on("click", function() {
					if (!valittu) {
						return;
					}
					$("#tilatiedot").before('<div class="alert alert-warning" role="alert" id="chatty">Lisätään koriin, hetki</div>');
					url = "<?php echo $baseurl;?>/json/json_lisaaKoriin.php";
					$.get(url, {id : kokoelmaTunniste}, function(data) {
						$("#chatty").removeClass("alert-warning");
						if (data["Virhe"]=="OK") {
							$("#chatty").html("Lisätty onnistuneesti");
							$("#chatty").addClass("alert-success");
						}
						else {
							$("#chatty").html("Lisäys epäonnistui.");
							$("#chatty").addClass("alert-danger");
						}
						$("#chatty").prepend('<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>');
						$("#chatty").addClass("alert-dismissable");
						
					});
				});
				
				$("#Muokkaa").on('click', function () {
					if (!valittu) {
						return;
					}
					switch(tila) {
						case "Vapaa":
						case "Poistettu":
							console.log("Muokkaa");
							kohde="<?php echo "{$baseurl}/view/forms/game.php/?collection=".urlencode($collection);?>&tunniste=";
							kohde+=encodeURIComponent(kokoelmaTunniste)+"&peli="+encodeURIComponent(peli)+"&metodi=muokkaa";
							window.location=kohde;
							break;
						case "Lainassa":
							$("#warning").html("<?php echo _("Lainassa olevaa peliä ei muokata. Palauta peli ensin!");?>");
							$("#varoitus").show();
							break;
					}
					
				})
				$("#Tarrat").on('click', function () {
					var tarrat="";
			
					$("#kokoelma tbody").children("tr").each(function() {
						tarrat=tarrat+$(this).children("td:first").html()+";";
					})
					koko=$("#kokoelma").DataTable().page.len()
					kohde="<?php echo "$baseurl/tarratulostus.php?koko=";?>"+koko;
					kohde+="&codes="+encodeURIComponent(tarrat);
					window.open(kohde);
				})
			} );
		
		</script>
	</head>
	<body>
		<?php include_once("$basepath/view/navbar.html");?>
		<div class="container">
			<section class='col-xs-12 col-sm-6 col-md-8'>
				<h2><?php printf( _("Kokoelman %s pelit"), htmlentities($collection, ENT_COMPAT|ENT_HTML5, 'UTF-8'));?></h2>
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
			
				<button type="button" class="btn btn-lg btn-default" id="Lisää"><?php echo _("Lisää");?></button>
				<button type="button" class="btn btn-lg btn-default" id="Tarrat"><?php echo _("Tarrat");?></button>
			</section>
			<div class="alert alert-warning collapse" role="alert" id="varoitus">
				<button type="button" class="close" id="vbutton" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<span id="warning">Varoitus</span>
			</div>
		</div>
		<?php include_once("$basepath/view/pelinTila.php");?>
		<?php include_once("$basepath/view/footer.html");?>
	</body>
</html>
