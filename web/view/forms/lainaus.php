<?php
/**
 * Pelin lainaaminen
 *
 *
 * @uses globals.php
 * @uses common.php
 * @uses collections.php
 * @uses minrights.php
 * 
 * @package SLS-Kirjasto
 * @subpackage Javascript-palvelut
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 * */
require_once("../../globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/adminrights.php");

$collection = isset($_REQUEST["collection"]) ? $_REQUEST["collection"] : false;
$gameid = isset($_REQUEST["tunniste"]) ? $_REQUEST["tunniste"] : false;
$game = isset($_REQUEST["peli"]) ? $_REQUEST["peli"] : false;
$_SESSION["paluu"]="$baseurl/view/forms/lainaus.php?collection=".urlencode($collection)."&tunniste=".urlencode($gameid)."&peli=".urlencode($game);
if(!$collection) {
    $target="{$baseurl}/index.php";
    header("Location: $target");
}
include_once("$basepath/view/html_base.html");
?>
    <title><?php echo _("Lainaus");?></title>
    <script type="text/javascript">
        var bPantti=false;
        var bLainaaja=false;
        var lainaaja="";
        var jasennumero=0;
        var tunniste="";
        
        $(function() {
            /*
             * Tarkistaa lainaajatiedot tietokannasta annetulla kentällä
             * @param string kentta Etsittävä kenttä
             * */
            function checkEm(kentta) {
                switch(kentta) {
                    case "lainaaja" :
                       tsekkaa = { nimi : lainaaja };
                       break;
                    case "tunniste" :
                        tsekkaa = { tunniste : tunniste };
                        break;
                    case "jasennumero" :
                        tsekkaa = { jasennumero : jasennumero };
                        break;
                }
                $.post("<?php echo $baseurl;?>/json/check_lainaaja.php", tsekkaa , function ( data ) {
                        gotEm(data);
                });                
            }
            
            /**
             * Täyttää lomakkeelle lainaajatiedot kannasta
             * @param json_array data Kenttien arvot
             * */
            function gotEm(data) {
                if (data.length == 1){
                    nimi = data[0]["nimi"];
                    numero = data[0]["slsjasennumero"];
                    tunniste = data[0]["tunniste"];
                    $("#lainaaja").val(nimi);
                    $("#jnumero").val(numero);
                    $("#tunniste").val(tunniste);
                    bLainaaja=true;
                }
                else
                    bLainaaja=false;
                if (bLainaaja && bPantti) {
                    $("#lainaa").removeAttr("disabled");
                } else {
                    $("#lainaa").attr("disabled",true);
                }
            }
            
            $("#lainaaja").autocomplete({
                source : "<?php echo $baseurl; ?>/json/json_lainaaja.php",
                minLenght: 2,
                select : function (event, ui) {
                    lainaaja = ui.item.value;
                    checkEm("lainaaja");
                }
            })
            
            $("#tunniste").autocomplete({
                source : "<?php echo $baseurl; ?>/json/json_tunniste.php",
                minlenght: 2,
                select : function (event, ui) {
                    tunniste = ui.item.value;
                    checkEm("tunniste");
                }
            })
                                    
            $("#lainaaja").blur(function(){
                lainaaja = $("#lainaaja").val();
                checkEm("lainaaja");
            })
            
            $("#tunniste").blur(function() {
                tunniste = $("#tunniste").val();
                checkEm("tunniste");
            })
            
            $("#jnumero").blur(function () {
                jasennumero= $("#jnumero").val();
                checkEm("jasennumero");
            })
            
            $("#pantti").blur(function () {
                pantti = $("#pantti").val();
                if(pantti != '')
                    bPantti = true;
                else
                    bPantti = false;
                console.log(bLainaaja);
                console.log(bPantti);
                if (bLainaaja && bPantti) {
                    $("#lainaa").removeAttr("disabled");
                } else {
                    $("#lainaa").attr("disabled",true);
                }
                //co
                
            })
            
            $("#lainaa").on('click', function () {
                if (bLainaaja && bPantti) {
                    $("[name='lainaus']").submit();
                }
            })
            
            $("#uusi").on('click', function() {
                window.location="<?php echo $baseurl;?>/view/forms/register.php?register_type=Lainaaja";
            })
            
        })
        
        
    </script>
</head>

<body>
    <?php include_once("$basepath/view/navbar.html");?>
    <div class="container-fluid">
	    <h2><?php echo _("Lainaus");?></h2>
        <form name="lainaus" method="post" class="form form-horizontal" action="<?php echo $baseurl;?>/lainaa.php">
            <div class="form-group">
                <div class="col-sm-1"><label class="control-label"><?php echo _("Kokoelma:");?></label></div>                
                <div class="col-sm-3"><p class="form-control-static" id="kokoelma"><?php echo $collection;?></p></div>
                <div class="col-sm-1"><label class="control-label"><?php echo _("Peli:");?></label></div>                
                <div class="col-sm-3"><p class="form-control-static" id="peli"><?php echo $game;?></p></div>
                <div class="col-sm-2"><label class="control-label"><?php echo _("Kokoelmatunniste:");?></label></div>                
                <div class="col-sm-2"><p class="form-control-static" id="kokoelmatunniste"><?php echo $gameid;?></p></div>
                <input type="hidden" name="kokoelma" value="<?php echo $collection;?>"/>
                <input type="hidden" name="kokoelmatunniste" value="<?php echo $gameid;?>"/>
            </div>
            
            <div class="form-group">
                <div class="col-sm-1">
                    <label class="control-label"><?php echo _("Lainaaja:");?></label>
                </div>
                <div class="col-sm-3">
                    <input type="text" id="lainaaja" required="true" name="lainaaja" class="form-control" size="40" maxlength="255"/>
                    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                    <p class="help-block"><?php echo _("Lainaajan nimi");?></p>
                </div>
                <div class="col-sm-1">
                    <label class="control-label"><?php echo _("Jäsennumero: ");?></label>
                </div>
                <div class="col-sm-3">
                    <input type="number" name="jnumero" id="jnumero" class="form-control"></label>
                    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                    <p class="help-block"><?php echo _("Jäsennumero, viivakoodi jäsenkortissa!");?></p>
                </div>
                <div class="col-sm-1">
                    <label for="tunniste" class="control-label"><?php echo _("Tunniste: ");?></label>
                </div>
                <div class="col-sm-3">
                    <input type="text" id="tunniste" class="form-control" name="tunniste" equired="true" size="20" maxlength="255"/>
                    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                    <p class="help-block"><?php echo _("Järjestelmän käyttäjätunniste.");?></p>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-1"><label for="pantti" class="control-label"><?php echo _("Pantti: ");?></label></div>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="pantti" name="pantti" value="" required="true"
                           placeholder="<?php echo _("Ajokortti");?>"/>
                    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                    <p class="help-block"><?php echo _("Lainan pantti.");?></p>
            
                </div>
                <button type="button" class="btn btn-lg btn-default" id="lainaa" disabled="true"><?php echo _("Lainaa");?></button>
            </div>
            <label class="control-label"><?php echo _("Lisää ");?><button type="button" class="btn btn-default" id="uusi"><?php echo _("uusi");?></button>
            <?php echo _(" lainaaja.");?></label>
        </form>
    </div>
    <?php include_once("$basepath/view/footer.html");?>
</body>
</html>
