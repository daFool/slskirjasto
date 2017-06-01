<?php

?>
<script type="text/javascript">
    function lataaPelinTila(id) {
		url = "<?php echo $baseurl;?>/json/json_pelinTila.php";
		$.get(url, {id : id }, function(data) {
			if (data["Virhe"]=="OK") {
				var lainassa=false;
                $.each(data.data, function(indeksi, arvo) {
					console.log(indeksi);
					console.log(arvo);
					switch (indeksi) {
                        case "pt_lainattu":
							if (arvo != "1970-01-01 01:02:03") {
                                lainassa=true;
								$("poista").attr("disabled", "true");
								$("#pt_lainattu").html(arvo);
                            }
							break;
						case "pt_lainaaja":
						case "pt_koti":
						case "pt_nimi":
						case "pt_julkaisija":
						case "pt_vuosi":
						case "pt_kesto":
						case "pt_pelaajia":
						case "pt_bggrank":
						case "pt_score":
						case "pt_age":
						case "pt_suunnittelija":
						case "huomautus":
							$("#"+indeksi).html(arvo);
							break;
						case "pt_bgg":
							$("#"+indeksi).attr("href", arvo);
							break;
                    }
				});
				if (lainassa==true) {
					$("#Lainaa").html("<?php echo _("Palauta");?>");
					l = data.data["pt_lainattu"];
					l = l.substr(0, l.lastIndexOf("."));
                    lainattu = new Date(l);
					palautuu = new Date(lainattu.getTime() + 60 * data.data["pt_kesto"]*1000);
					$("#pt_palautuu").html(palautuu.toLocaleString());//code
                } else {
					$("#Lainaa").html("<?php echo _("Lainaa");?>");
				}
            }
		});
        //code
    }
</script>

<div class="modal fade" id="pelinTila">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><?php echo _("Pelin tiedot");?></h4>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-12">
                        <table id="tilatiedot" class="table">
                            <thead>
                                <tr>
                                    <th><?php echo _("Lainattu");?></th>
                                    <th><?php echo _("Lainaaja");?></th>
                                    <th><?php echo _("Arvioitu palautumishetki");?></th>
                                    <th><?php echo _("Hylly / Paikka / Laatikko");?></th>                                    
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td id="pt_lainattu"></td>
                                    <td id="pt_lainaaja"></td>
                                    <td id="pt_palautuu"></td>
                                    <td id="pt_koti"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <table id="pelitiedot" class="table">
                            <tbody>
                                <tr>
                                    <th><?php echo _("Peli");?></th>
                                    <td id="pt_nimi"></td>
                                    <th><?php echo _("Julkaisija");?></th>
                                    <td id="pt_julkaisija"></td>
                                    <th><?php echo _("Vuosi");?></th>
                                    <td id="pt_vuosi"></td>
                                </tr>
                                <tr>
                                    <th><?php echo _("Suunnittelija");?></th>
                                    <td id="pt_suunnittelija"></td>
                                    <th><?php echo _("Kesto");?></th>
                                    <td id="pt_kesto"></td>
                                    <th><?php echo _("Pelaajia");?></th>
                                    <td id="pt_pelaajia"></td>
                                    <th><a href="" id="pt_bgg" target="_blank"><?php echo _("BGG");?></a></th>
                                </tr>
                                <tr>
                                    <th><?php echo _("BGG Rank");?></th>
                                    <td id="pt_bggrank"></td>
                                    <th><?php echo _("BGG Score");?></th>
                                    <td id="pt_score"></td>
                                    <th><?php echo _("Ikä");?></th>
                                    <td id="pt_age"></td>
                                </tr>
								<tr><th><?php echo _("Huomautus");?></th>
								<td id="huomautus"></td>
								</tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-lg btn-default" id="Lainaa"><?php echo _("Lainaa/Palauta");?></button>
                <button type="button" id="Poista" class="btn btn-lg btn-default"><?php if(!isset($koritila))	echo _("Poista/Deaktivoi");
					else echo _("Poista korista");?></button>
				<button type="button" id="Muokkaa" class="btn btn-lg btn-default"><?php echo _("Muokkaa");?></button>
				<?php if(!isset($koritila)) { ?>
					<button type="button" id="Koriin" class="btn btn-lg btn-default"><?php echo _("Koriin");?></button>
				<?php } ?>
				<button type="button" class="btn btn-lg btn-default" data-dismiss="modal"><?php echo _("Sulje");?></button>                
            </div>
        </div>
    </div>
</div>