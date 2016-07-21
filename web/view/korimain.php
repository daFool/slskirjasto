        <title><?php echo _("Lautapelikirjasto: korin hallinta");?></title>
        <script type="text/javascript">
            var koriTunniste="<?php if(isset($_SESSION["kori"])) echo $_SESSION["kori"];?>";
            var valittu=false;
            var kokoelmaTunniste="";
            var peli="";
            var tila="";
            var kokoelma="";
			
            $(document).ready(function() {
                /**
                 * Korin pelit */
                var korinpelit;
				korinpelit = $("#pelikori").DataTable( {
                    				"processing": true,
                                    "serverSide": true,
                                    "responsive": true,
                                    "orderMulti": true,
                                    "lengthMenu" : [ 10, 21, 24, 25, 50, 75, 100],
                                    "pageLength" : 21,
                                    "search": {
                                        "regex": true,
                                        "caseInsensitive": true,
                                        "smart" : true
                                    },
									"columnDefs" : [
										{
											"targets" : [ 6 ],
											"visible" : false,
											"searchable" : false
										}
									],
                                    "ajax": "<?php echo "$baseurl/json/";?>json_korinpelit.php?kori="+koriTunniste,
                                    <?php include("$basepath/datatables_language.js");?>
				} );
				
			    $('#pelikori tbody').on( 'click', 'tr', function () {
					var tunniste=$(this).children("td:first").html();
					if ( $(this).hasClass('selected') ) {
						$(this).removeClass('selected');
						valittu=false;
						kokoelmaTunniste="";
						peli="";
						tila="";
						kokoelma="";
					}
					else {
						korinpelit.$('tr.selected').removeClass('selected');
						$(this).addClass('selected');
						rivi=$(this);
						kokoelmaTunniste = rivi.children("td:first").html();
						peli = rivi.children("td:nth-child(2)").html();
						tila=rivi.children("td:nth-child(6)").html();
						kokoelma=rivi.children("td:last").html();
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
							kohde="<?php echo "{$baseurl}/view/forms/lainaus.php/?collection=";?>"+encodeURIComponent(kokoelma)+"&tunniste=";
							kohde+=encodeURIComponent(kokoelmaTunniste)+"&peli="+encodeURIComponent(peli);
							window.location=kohde;
							break;
						case "Lainassa":
							console.log("Palauta");
							kohde="<?php echo "{$baseurl}/palauta.php/?collection=";?>"+encodeURIComponent(kokoelma)+"&tunniste=";
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
                
				$("#Poista").on('click', function () {
					if (!valittu || koriTunniste=="") {
						return;
					}
					$("#tilatiedot").before('<div class="alert alert-warning" role="alert" id="chatty">Poistetaan korista, hetki</div>');
					url = "<?php echo $baseurl;?>/json/json_poistaKorista.php";
					$.get(url, {peli : kokoelmaTunniste, kori: koriTunniste}, function(data) {
						$("#chatty").removeClass("alert-warning");
						if (data["Virhe"]=="OK") {
							$("#chatty").remove();							
							$("#pelinTila").modal('hide');							
							return;
						}
						else {
							$("#chatty").html("Poisto epäonnistui: "+data["Virhe"]);
							$("#chatty").addClass("alert-danger");
						}
						$("#chatty").prepend('<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>');
						$("#chatty").addClass("alert-dismissable");
						
					});
					console.log(korinpelit);
					korinpelit.ajax.reload();
					console.log("Poista korista");					
				})
								
				$("#Muokkaa").on('click', function () {
					if (!valittu) {
						return;
					}
					switch(tila) {
						case "Vapaa":
						case "Poistettu":
							console.log("Muokkaa");
							kohde="<?php echo "{$baseurl}/view/forms/game.php/?collection=";?>"+encodeURIComponent(kokoelma)+"&tunniste=";
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
			
					$("#pelikori tbody").children("tr").each(function() {
						tarrat=tarrat+$(this).children("td:first").html()+";";
					})
					koko=$("#pelikori").DataTable().page.len()
					kohde="<?php echo "$baseurl/tarratulostus.php?koko=";?>"+koko;
					kohde+="&codes="+encodeURIComponent(tarrat);
					window.open(kohde);
				})
				
				$("#Tyhjenna").on('click', function() {
					if (confirm("<?php echo _("Oletko varma?");?>")) {
						$("#tilatiedot").before('<div class="alert alert-warning" role="alert" id="chatty">Tyhjennetään koria, hetki</div>');
						url = "<?php echo $baseurl;?>/json/json_poistaKorista.php";
						console.log
						$.get(url, {peli : kokoelmaTunniste, kori: koriTunniste, kaikki: true}, function(data) {
							$("#chatty").removeClass("alert-warning");
							if (data["Virhe"]=="OK") {
								$("#chatty").remove();							
								$("#pelinTila").modal('hide');							
								return;
							}
							else {
								$("#chatty").html("Poisto epäonnistui: "+data["Virhe"]);
								$("#chatty").addClass("alert-danger");
							}
							$("#chatty").prepend('<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>');
							$("#chatty").addClass("alert-dismissable");
						});
						korinpelit.ajax.reload();
					}
				});                   
			});            
        </script>
        	</head>
	<body>
		<?php include_once("$basepath/view/navbar.html");?>
		<div class="container">
			<section class='col-xs-12 col-sm-6 col-md-8'>
				<h2><?php printf( _("Korin %s pelit"), htmlentities($kori, ENT_COMPAT|ENT_HTML5, 'UTF-8'));?></h2>
				<table id="pelikori" class="display" cellspacing="0" width="100%">
					<thead>
					  <tr>
					    <th><?php echo _("Tunniste");?></th>
						<th><?php echo _("Nimi");?></th>
						<th><?php echo _("Hylly");?></th>
						<th><?php echo _("Paikka");?></th>
						<th><?php echo _("Omistaja");?></th>
						<th><?php echo _("Tila");?></th>
						<th><?php echo _("Kokoelma");?></th>
					  </tr>
					</thead>
					<tfoot>
					  <tr>
					    <th><?php echo _("Tunniste");?></th>
						<th><?php echo _("Nimi");?></th>
						<th><?php echo _("Hylly");?></th>
						<th><?php echo _("Paikka");?></th>
						<th><?php echo _("Omistaja");?></th>
						<th><?php echo _("Tila");?></th>
						<th><?php echo _("Kokoelma");?></th>
					  </tr>
					</tfoot>
				</table>
			
				<button type="button" class="btn btn-lg btn-default" id="Tyhjenna"><?php echo _("Tyhjennä");?></button>
				<button type="button" class="btn btn-lg btn-default" id="Tarrat"><?php echo _("Tarrat");?></button>
			</section>
			<div class="alert alert-warning collapse" role="alert" id="varoitus">
				<button type="button" class="close" id="vbutton" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<span id="warning">Varoitus</span>
			</div>
		</div>
        <?php $koritila=true;?>
		<?php include_once("$basepath/view/pelinTila.php");?>
		<?php include_once("$basepath/view/footer.html");?>
	</body>
</html>