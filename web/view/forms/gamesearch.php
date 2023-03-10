<?php
/**
 * Laajennettu pelihaku
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

include_once("$basepath/view/html_base.html");
?>
        <title><?php echo _("Laajennettu pelihaku");?></title>
		<script type="text/javascript">
			$(document).ready(function () {
				
				// Pelit-taulu
				var pelit;
					pelit=$('#games').DataTable( {
					"processing": true,
					"serverSide": true,
					"responsive": true,
					"orderMulti": true,
					"search": {
						"regex": true,
						"caseInsensitive": true,
						"smart" : true},
					"ajax": {
						"url" : "<?php echo "$baseurl/json/json_gamesE.php";?>",
						"data" : function ( d ) {
						if ($("#nimitoggle").html()=="<?php echo _("Poista");?>") {
							// console.log($("#nimi"));
							d.nimi = document.getElementById("nimi").value;
						} else {
							delete d.nimi;
						}

						if ($("#suunnittelijatoggle").html()=="<?php echo _("Poista");?>") {
							d.suunnittelija = document.getElementById("suunnittelija").value;
						}
						else
							delete d.suunnittelija;
						
						if ($("#julkaisijatoggle").html()=="<?php echo _("Poista");?>") {
							d.julkaisija = document.getElementById("julkaisija").value;
						}
						else
							delete d.julkaisija;
							
						if ($("#kestotoggle").html()=="<?php echo _("Poista");?>") {
							d.kesto = document.getElementById("kesto").value;
							d.kestoe = document.getElementById("kestoe").value;
						}
						else {
							delete d.kesto;
							delete d.kestoe;
						}
						if ($("#vuositoggle").html()=="<?php echo _("Poista");?>") {
							d.vuosi = document.getElementById("vuosi").value;
							d.vuosie = document.getElementById("vuosie").value;
						}
						else {
							delete d.vuosi;
							delete d.vuosie;
						}
						if ($("#geektoggle").html()=="<?php echo _("Poista");?>") {
							d.bggrank = document.getElementById("geek").value;
							d.bggranke = document.getElementById("geeke").value;
						}
						else {
							delete d.bggrank;
							delete d.bggranke;
						}
						
						if ($("#pelaajiatoggle").html()=="<?php echo _("Poista");?>") {
							d.minpelaajia = document.getElementById("minpelaajia").value;
							d.maxpelaajia = document.getElementById("maxpelaajia").value;
						} else {
							delete d.minpelaajia;
							delete d.maxpelaajia;
						}
						
						if ($("#agetoggle").html()=="<?php echo _("Poista");?>") {
							d.age = document.getElementById("age").value;
							d.agee = document.getElementById("agee").value;
						} else {
							delete d.age;
							delete d.agee;
						}
						
						if ($("#scoretoggle").html()=="<?php echo _("Poista");?>") {
							d.score = document.getElementById("score").value;
							d.scoree = document.getElementById("scoree").value;
						} else {
							delete d.score;
							delete d.scoree;
						}
						
						// console.log(d);
					}},
					<?php include("$basepath/datatables_language.js");?>
				} );
				
				$("#hakuehto").find("div").each(function () {
					if ($(this).hasClass("input-group-addon btn")) {
						$(this).html("<?php echo _("Aseta");?>")//code
						$(this).on("click", function() {
							if ($(this).html()=="<?php echo _("Aseta");?>") {
								$(this).html("<?php echo _("Poista");?>");
								pelit.ajax.reload();
							}
							else {
								$(this).html("<?php echo _("Aseta");?>");
								pelit.ajax.reload();
							}
						})
					}
				});
				
				$("#hakuehto").find("input").each(function () {
					$(this).on("blur", function() {
						at = $(this).attr("id");
						if (at=="minpelaajia" || at=="maxpelaajia") {
							at="pelaajia";//code
						}
						a="#"+at+"toggle";
						if ($(a).html()=="<?php echo _("Poista");?>") {
							pelit.ajax.reload();
						}
					});
				});
				
				$("#hakuehto").find("select").each(function () {
					$(this).on("blur", function() {
						a="#"+$(this).attr("id");
						a=a.substring(0,a.length-1)+"toggle";
						console.log(a);
						if ($(a).html()=="<?php echo _("Poista");?>") {
							pelit.ajax.reload();
						}
					});
				});
				
				// Pelit taulun bodyn click-handleri
				$('#games tbody').on( 'click', 'tr', function () {
					var peli=$(this).children("td:first").html();
					console.log(peli);
					$.get("<?php echo "$baseurl/json/json_gamecollections.php";?>", { game: peli} ,
						  function(data) {
							if (data.lkm==0) {
								return;
							}
							taulu = $("#finds tbody");
							taulu.empty();
							for (i=0;i<data.lkm;i++) {
								row=data.rows[i];
								kohde="<?php echo "$baseurl/view/forms/lainaus.php";?>?collection=";
								kohde+=encodeURIComponent(row.kokoelma)+"&tunniste=";
								kohde+=encodeURIComponent(row.tunniste)+"&peli=";
								kohde+=encodeURIComponent(row.nimi);
								if (row.tila=="<?php echo _("Vapaa");?>") {
									rivi="<tr onclick='window.document.location="+'"'+kohde+'"'+"'>";	//code
								}
								else
									rivi="<tr>";
								rivi+="<td>"+row.kokoelma+"</td><td>"+row.tunniste+"</td>";
								rivi+="<td>"+row.nimi+"</td><td>"+row.hylly+"</td>";
								rivi+="<td>"+row.paikka;
								rivi+="<td>"+row.omistaja+"</td><td>"+row.tila+"</td></tr>";
								taulu.append(rivi);
							}							
							$('#kokoelmat').modal('show');
						  }						  
						 );
				} );
			})
		</script>
    </head>
	
    <body>
        <?php include_once("$basepath/view/navbar.html");?>
        <div class="container">
			<div class="row">
				<section class='col-xs-14 col-sm-6 col-md-8'>
				    <h2>Pelit</h2>
					<table id="games" class="display" cellspacing="0" width="100%">
					<thead>
					  <tr>
						<th><?php echo _("Peli");?></th>
						<th><?php echo _("BGG rank");?></th>
						<th><?php echo _("BGG score");?></th>
						<th><?php echo ("BGG");?></th>
						<th><?php echo _("Ik??");?></th>
						<th><?php echo _("Kesto");?></th>
						<th><?php echo _("Pelaajia");?></th>
						<th><?php echo _("Vuosi");?></th>
					  </tr>
					</thead>
					<tfoot>
					  <tr>
						<th><?php echo _("Peli");?></th>
						<th><?php echo _("BGG rank");?></th>
						<th><?php echo _("BGG score");?></th>
						<th><?php echo ("BGG");?></th>
						<th><?php echo _("Ik??");?></th>
						<th><?php echo _("Kesto");?></th>
						<th><?php echo _("Pelaajia");?></th>
						<th><?php echo _("Vuosi");?></th>
					  </tr>
					  </tr>
					</tfoot>
				  </table>
				</section>
				  
				<section class='col-xs-10 col-sm-2 col-md-4'>
					<h2><?php echo _("Laajennettu pelihaku");?></h2>
					<?php
					if(isset($error) && $error !== false) {?>
						<div class="text-danger"><?php echo $error;?></div>
					<?php }?>
								
					<form id="hakuehto" method="POST" class="form-horizontal">
						
						<!-- Pelin nimi -->
						<div class="form-group" id="nimig">
							<div class="row">
								<div class="col-xs-4">
									<label for="nimi" class="control-label"><?php echo _("Nimi:");?></label>
								</div>
								<div class="input-group col-xs-8">
									<input type="text" class="form-control" maxlength="255" size="40" name="nimi" id="nimi" placeholder="Catan" />
									<div class="input-group-addon btn" id="nimitoggle"></div>
								</div>
							</div>
	<!--						<p class="help-block"><small><?php echo _("Pelin nimi");?></small></p>	   -->
						</div>
					
						<!-- Suunnittelija -->
						<div class="form-group" id="suunnittelijag">
							<div class="row">
								<div class="col-xs-4">
									<label class="control-label" for="suunnittelija"><?php echo _("Suunnittelija:");?></label>
								</div>
								<div class="input-group col-xs-8">
									<input type="text" class="form-control" maxlength="255" size="40" name="suunnittelija" id="suunnittelija" placeholder="Klaus Teuber"/>
									<div class="input-group-addon btn" id="suunnittelijatoggle"></div>
								</div>
							</div>
<!--							<p class="help-block"><small><?php echo _("Pelin suunnittelija");?></small></p>	   -->
						</div>
					
						<!-- Julkaisija -->
						<div class="form-group" id="julkaisijag">
							<div class="row">
								<div class="col-xs-4">
									<label class="control-label" for="julkaisija"><?php echo _("Julkaisija:");?></label>
								</div>
								<div class="input-group col-xs-8">
									<input type="text" class="form-control" maxlength="255" size="40" name="julkaisija" id="julkaisija" placeholder="Catan GMBH"/>
									<div class="input-group-addon btn" id="julkaisijatoggle"></div>
								</div>
							</div>
<!--							<p class="help-block"><small><?php echo _("Pelin julkaisija");?></small></p>	   -->
						</div>
					
						
						<!-- Ik?? -->
						<div class="form-group" id="ageg">
							<div class="row">
								<div class="col-xs-4">
									<label class="control-label" for="age"><?php echo _("Ik??");?></label>
								</div>
								<div class="col-xs-4">
									<select name="agee" class="form-control" id="agee">
										<option value="alle"><?php echo _("Alle");?></option>
										<option value="tasan"><?php echo _("Tasan");?></option>
										<option value="yli"><?php echo _("Yli");?></option>
									</select>
								</div>
								<div class="input-group col-xs-4">
									<input type="number" id="age" class="form-control" maxlength=4 min=0 max=99 />
									<div class="input-group-addon btn" id="agetoggle"></div>
								</div>
							</div>
<!--							<p class="help-block"><?php echo _("Mink?? ik??isille pelaajille");?></p> -->
						</div>
						
						<!-- Kesto -->					
						<div class="form-group" id="kestog">
							<div class="row">
								<div class="col-xs-4">
									<label class="control-label" for="kesto"><?php echo _("Kesto (min)");?></label>
								</div>
								<div class="col-xs-4">
										<select name="kestoe" class="form-control" id="kestoe">
											<option value="alle"><?php echo _("Alle");?></option>
											<option value="tasan"><?php echo _("Tasan");?></option>
											<option value="yli"><?php echo _("Yli");?></option>
										</select>
								</div>
								<div class="input-group col-xs-4">
										<input type="number" id="kesto" class="form-control" maxlength=3 min=0 max=999 />
										<div class="input-group-addon btn" id="kestotoggle"></div>
								</div>
							</div>
	<!--						<p class="help-block"><?php echo _("Kauanko pelin pit???? kest????");?></p> -->
						</div>
						
						<!-- Pelaajia -->
						<div class="form-group" id="pelaajiag">
							<div class="row">
								<div class="col-xs-4">
									<label class="control-label" for="pelaajia"><?php echo ("Pelaajia:");?></label>
								</div>
								<div class="col-xs-3">
									<input type="number" class="form-control" min="1" max="99" size="2" id="minpelaajia"/>
								</div>
								<div class="col-xs-1"><p class="form-control-static">-</p></div>
								<div class="col-xs-4">
									<div class="input-group">
										<input type="number" class="form-control" min="1" max="99" size="2" id="maxpelaajia"/>
										<div class="input-group-addon btn" id="pelaajiatoggle"></div>
									</div>
								</div>
							</div>
	<!--						<p class="help-block"><?php echo _("Pelaajien lukum????r??");?></p> -->
						</div>
						
						<!-- Vuosi -->
						<div class="form-group" id="vuosig">
							<div class="row">
								<div class="col-xs-4">
									<label class="control-label" for="vuosi"><?php echo _("Vuosi (VVVV)");?></label>
								</div>
								<div class="col-xs-4">
									<select name="vuosie" class="form-control" id="vuosie">
										<option value="alle"><?php echo _("Alle");?></option>
										<option value="tasan"><?php echo _("Tasan");?></option>
										<option value="yli"><?php echo _("Yli");?></option>
									</select>
								</div>
								<div class="input-group col-xs-4">
									<input type="number" id="vuosi" class="form-control" maxlength=4 min=1900 max=2100 />
									<div class="input-group-addon btn" id="vuositoggle"></div>
								</div>
							</div>
<!--							<p class="help-block"><?php echo _("Koska julkaistu");?></p> -->
						</div>
						
						<!-- bggrank -->
						<div class="form-group" id="geekg">
							<div class="row">
								<div class="col-xs-4">
									<label class="control-label" for="geek"><?php echo _("BGG Rank");?></label>
								</div>
								<div class="col-xs-4">
									<select name="geeke" class="form-control" id="geeke">
										<option value="alle"><?php echo _("Alle");?></option>
										<option value="tasan"><?php echo _("Tasan");?></option>
										<option value="yli"><?php echo _("Yli");?></option>
									</select>
								</div>
								<div class="input-group col-xs-4">
									<input type="number" id="geek" class="form-control" maxlength=5 min=1 max=99999 />
									<div class="input-group-addon btn" id="geektoggle"></div>
								</div>
							</div>
<!--							<p class="help-block"><?php echo _("BGG-rankkaus");?></p> -->
						</div>
						
						<!-- score -->
						<div class="form-group" id="scoreg">
							<div class="row">
								<div class="col-xs-4">
									<label class="control-label" for="score"><?php echo _("BGG Score");?></label>
								</div>
								<div class="col-xs-4">
									<select name="scoree" class="form-control" id="scoree">
										<option value="alle"><?php echo _("Alle");?></option>
										<option value="tasan"><?php echo _("Tasan");?></option>
										<option value="yli"><?php echo _("Yli");?></option>
									</select>
								</div>
								<div class="input-group col-xs-4">
									<input type="number" id="score" class="form-control" maxlength=5 min=1 max=99999 />
									<div class="input-group-addon btn" id="scoretoggle"></div>
								</div>
							</div>
<!--							<p class="help-block"><?php echo _("BGG-Score");?></p> -->
						</div>
					</form>
				</section>
			</div>
			<div class="modal fade" id="kokoelmat" tabindex="-1" role="dialog" aria-labelledby="kokoelmalabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" onclick="$('#kokoelmat').modal('hide')" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<table id="finds" class="table table-striped">
								<thead>
									<tr>
										<th><?php echo _("Kokoelma");?></th>
										<th><?php echo _("Tunniste");?></th>
										<th><?php echo _("Nimi");?></th>
										<th><?php echo _("Hylly");?></th>
										<th><?php echo _("Paikka");?></th>
										<th><?php echo _("Omistaja");?></th>
										<th><?php echo _("Tila");?></th>
									</tr>
								</thead>
								<tbody>
									
								</tbody>
								<tfoot>
									<tr>
										<th><?php echo _("Kokoelma");?></th>
										<th><?php echo _("Tunniste");?></th>
										<th><?php echo _("Nimi");?></th>
										<th><?php echo _("Hylly");?></th>
										<th><?php echo _("Paikka");?></th>
										<th><?php echo _("Omistaja");?></th>
										<th><?php echo _("Tila");?></th>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<?php include_once("$basepath/view/footer.html");?>
    </body>
</html>