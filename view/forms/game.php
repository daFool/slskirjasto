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

/**
 * Paluu virhetilanteessa
 *
 * Populoi get-parametreilla lomakkeen kentät.
 * @param string $field Kenttä, jonka arvo etsitään
 * return mixed Kentän arvo tai tyhjää
 * */
function returnValues($field) {
    $res="";
    if(isset($_GET[$field])) {
        $t = htmlspecialchars($_GET[$field]);
        $res=" value=\"$t\"";
    }
    return $res;
}

$kokoelma = isset($_REQUEST['collection']) ? $_REQUEST['collection'] : false;
if($kokoelma===false) {
    header("Location: $baseurl/index.php");
    die();
}
$virhe = isset($_REQUEST['virhe']) ? htmlspecialchars(urldecode($_REQUEST['virhe'])) : false;
$_SESSION["paluu"]="{$baseurl}/view/forms/game.php";
$metodi = isset($_REQUEST['metodi']) ? $_REQUEST['metodi'] : 'uusi';
$peliid = isset($_REQUEST['tunniste']) ? $_REQUEST['tunniste'] : false;

include_once("$basepath/view/html_base.html");
?>
    <script type="text/javascript">
        $(function() {
            function checkEm() {
                if ($("#peli").get(0).checkValidity()==true) {
                    $("#tallenna").removeAttr("disabled");
                }
                else {
                    $("#tallenna").attr("disabled", "true");
                }
/*				$("#peli").find("input, textarea, select").each(function () {
					
					if ($(this).get(0).checkValidity()===true) {
						if ($(this).parent().hasClass("has-error")) {
							$(this).parent().removeClass("has-error");
							console.log("Ehjä: "+$(this).attr("name"));
						}
						else {
							$(this).parent().addClass("has-error");
							console.log($(this).attr("name"));
						}
					}
				});
	*/				
            }
            
            // $("#bgglinkki").blur(function () {
			$("#bggnappula").on('click', function () {                
                if ($("#bgglinkki").get(0).checkValidity()==true) {
					$("#bggstatus").html("<?php echo _("Haetaan...");?>");   
                    $.getJSON("<?php echo $baseurl;?>/json/json_geek.php?geekurl="+encodeURIComponent($("#bgglinkki").val()), function (json) {
                        if (json.virhe=="False" || json.virhe==false) {
                            $("#vuosi").val(json.vuosi);
                            $("#nimi").val(json.nimi);
                            $("#suunnittelija").val(json.suunnittelija);
                            $("#julkaisija").val(json.julkaisija);
                            $("#pelaajia").val(json.pelaajia);
                            $("#kesto").val(json.aika);
							$("#bggl").html("<?php echo _("BGG-rank: ");?> "+json.bggrank);
							$("#bggrank").val(json.bggrank);
							$('#age').val(json.age);
							$('#scorel').html("<?php echo _("BGG-score:");?>"+json.score);
							$('#score').val(json.score);
                            checkEm();
							$("#bggstatus").html("");
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
            $("#omistaja").autocomplete({
                source : "<?php echo $baseurl; ?>/json/json_lainaaja.php",
                minlength: 2
            })
			checkEm();
			
			$("#peli").find("input").each(function () {
				$(this).blur(function () {
					checkEm();
				});
			});
			
			$("#peli").find("select").each(function () {
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

            <?php if($metodi<>'lisää' && $peliid!==false) { ?>
            $.getJSON("<?php echo "{$baseurl}/json/json_collection_game.php?id=".urlencode($peliid);?>", function (json) {
                if (json.kilroy!="") {
                    alert(json.kilroy);
                    window.location="<?php echo $baseurl;?>/index.php";
                }
                $.each(json, function (index, value) {
                    console.log(index);
                    console.log(value)
					if (index=="bggrank") {
						$("#bggl").html("<?php echo _("BGG-rank: ");?> "+value);//code
					}
					if (index=="score") {
						$('#scorel').html("<?php echo _("BGG-score:");?>"+value);//code
					}
                    $("#"+index).val(value);
                    
                })
				checkEm();
            })
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
        })
    </script>
    <title><?php echo _("Pelin lisäys/muokkaus");?></title>
    </head>
    <body>
        <?php include_once("$basepath/view/navbar.html"); ?>
        <div class='container'>
            <div class="row">
                <section class='col-xs-12 col-sm-6 col-md-6'>
                    <section>
                        <h2><?php echo _("Pelin lisääminen/muokkaaminen");?></h2>
                        <div class="text-warning">
							<?php echo _("Jos lisäät pelin bgg-linkkikentän kautta, käy pyyhkimässä nimien ja julkaisijoiden joukosta väärien edikoiden tiedot!");?>
						</div>
   
                        <form name="peli" id="peli" method="POST" action="<?php echo $baseurl;?>/lisaaPeli.php" autocomplete="off">
                            <input type="hidden" name="metodi" id="metodi" value="<?php echo $metodi;?>"/>
                            <input type="hidden" name="peliid" id="peliid" value=""/>
                            <input type="hidden" name="kokoelmapeliid" id="kokoelmapeliid" value="<?php echo htmlspecialchars($peliid);?>"/>
                            <input type="hidden" name="kokoelma" value="<?php echo $kokoelma;?>"/>
                            <input type="hidden" id="score" name="score" value="-1" id="score" />
							<input type="hidden" id="bggrank" name="bggrank" value="-1" id="bggrank">
							<input type="hidden" id="kilroy" value=""/>
							
                            
							<label for="nimi"><?php echo _("Pelin nimi: ");?><input type="text" name="nimi" id="nimi" required="true" size="40" maxlength="255"/></label>
                            <label for="suunnittelija"><?php echo _("Suunnittelija: ");?><input type="text" name="suunnittelija" id="suunnittelija" required="true" size="40"
                                                                                               maxlength="255"/></label>
                            <label for="julkaisija"><?php echo _("Julkaisija: ");?><input type="text" name="julkaisija" id="julkaisija" required="true" size="40"
                            maxlength="255"/></label>
							
							<div class="form-group" id="bgglinkkig">
								<label for="bgglinkki" class="control-label"><?php echo _("BGG-linkki: ");?></label>
								<div class="input-group">
									<input type="url" class="form-control" name="bgglinkki" id="bgglinkki" size="40" maxlength="255"
									                pattern="https?://www.boardgamegeek.com/(board)?game.*/[0123456789]+(/[0-9a-zA-Z-]*)?"/>
									<div class="input-group-addon btn" id="bggnappula"><?php echo _("Hae");?></div>
								</div>
								<span id="bgglinkkic" class="glyphicon form-control-feedback" aria-hidden="true"></span>
								<p class="help-block"><?php echo _("Pelin sivuosoite BoardGameGeekissä.");?> <span id="bggstatus"></span></p>
							</div>
							<div class"form-group" id="bggrankg">
								<label for="bggrank" class="control-label" id="bggl"></label>								
							</div>
							<div class"form-group" id="scoreg">
								<label for="score" class="control-label" id="scorel"></label>
							</div>
							<label for="age" class="control-label" id="agel"><?php echo _("Ikä: ");?><input type="number" min=1 max=99 name="age" size="2" maxlenght="2" id="age"/></label>
                            <label for="pelaajia"><?php echo _("Pelaajia: ");?><input type="text" name="pelaajia" size="10" maxlenght="255" id="pelaajia"/></label>
                            <label for="kesto"><?php echo _("Kesto minuuteissa: ");?><input type="number" name="kesto" id="kesto" min="0" max="640"/></label>
                            <label for="vuosi"><?php echo _("Julkaisuvuosi: ");?><input type="number" min="1900" max="2100" name="vuosi" id="vuosi"/></label>
                            <label for="huomautus"><?php echo _("Huomautus: ");?><input tpye="text" name="huomautus" id="huomautus"/></label>
                            <label for="omistaja"><?php echo _("Omistaja: ");?><input type="text" required="true" name="omistaja" id="omistaja" size="20" maxlength="255"/></label>
                            <label for="lahjoittaja"><?php echo _("Lahjoittaja: ");?><input type="text" name="lahjoittaja" id="lahjoittaja" size="20"
                                                                                          maxlength="255" /></label>
                            <label for="lahjoittajanurl"><?php echo _("Lahjoittajan www-osoite:");?><input type="url" name="lahjoittajawww"
                            id="lahjoittajawww" size="80" maxlenght="255"/>
                            <label for="hylly"><?php echo _("Hylly: ");?><input type="text" name="hylly" id="hylly" size="10" maxlength="255"/></label>
                            <label for="paikka"><?php echo _("Paikka: ");?><input type="text" name="paikka" id="paikka" size="10" maxlength="255"/></label>
                            <label for="laatikko"><?php echo _("Laatikko: ");?><input type="text" name="laatikko" id="laatikko" size="10" maxlength="255"/></label>
                            <label for="kunto"><?php echo _("Kunto: ");?><input type="text" name="kunto" id="kunto" size="40" maxlength="255"/></label>
                            <label for="gtin"><?php echo _("GTIN: ");?><input type="text" id="gtin" name="gtin" size="20" maxlength="255"/></label>                            
                            <button type="button" class="btn btn-lg btn-default" id="tallenna" disabled="true"><?php echo _("Lisää");?></button>
                            </label>
                        </form>
                        <div class="alert alert-warning collapse" role="alert" id="varoitus">
				<button type="button" class="close" id="vbutton" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<span id="warning">Varoitus</span>
			</div>
                    </div>
                </section>
            </div>
        </section>
        <?php include_once("$basepath/view/footer.html");?>
    </body>
</html>