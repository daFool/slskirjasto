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
require_once("../globals.php");
require_once("$basepath/helpers/users.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/collections.php");
require_once("$basepath/helpers/maxrights.php");

$collection = isset($_REQUEST["collection"]) ? $_REQUEST["collection"] : false;
$gameid = isset($_REQUEST["tunniste"]) ? $_REQUEST["tunniste"] : false;
$game = isset($_REQUEST["peli"]) ? $_REQUEST["peli"] : false;
$_SESSION["paluu"]="$baseurl/forms/lainaus.php?collection=".urlencode($collection)."&tunniste=".urlencode($gameid)."&peli=".urlencode($game);
if(!$collection) {
    $target=UrlMungler("{$basepath}/index.php");
    header("Location: $target");
}
include_once("$basepath/html_base.html");
?>
    <title><?php echo _("Lainaus");?></title>
    <script type="text/javascript">
        var bPantti=false;
        var bLainaaja=false;
        var lainaaja="";
        var jasennumero=0;
        var tunniste="";
        
        $(function() {
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
                $.post("<?php echo $baseurl;?>/check_lainaaja.php", tsekkaa , function ( data ) {
                        gotEm(data);
                });                
            }
            function gotEm(data) {
                console.log(data);
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
                // alert("Got em' back");
            }
            
            $("#lainaaja").autocomplete({
                source : "<?php echo $baseurl; ?>/json_lainaaja.php",
                minlenght: 2,
                select : function (event, ui) {
                    lainaaja = ui.item.value;
                    console.log("lainaaja="+lainaaja);
                    checkEm("lainaaja");
                }
            })
            
            $("#tunniste").autocomplete({
                source : "<?php echo $baseurl; ?>/json_tunniste.php",
                minlenght: 2,
                select : function (event, ui) {
                    tunniste = ui.item.value;
                    checkEm("tunniste");
                }
            })
            
            $("#lainaaja").focus(function() {
                lainaaja=false;
            })
            
            $("#tunniste").focus(function() {
                lainaaja=false;
            })
            
            $("#jnumero").focus(function() {
                lainaaja=false;
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
                if (bLainaaja && bPantti) {
                    $("#lainaa").removeAttr("disabled");
                } else {
                    $("#lainaa").attr("disabled",true);
                }
                //co
                
            })
            
            $("#lainaa").on('click', function () {
                console.log("Kliksuteltu");
                if (bLainaaja && bPantti) {
                    $("[name='lainaus']").submit();
                }
            })
            
            $("#uusi").on('click', function() {
                window.location="<?php echo $baseurl;?>/forms/register.php?register_type=Lainaaja";
            })
            
        })
        
        
    </script>
</head>

<body>
    <?php include_once("$basepath/navbar.html");?>
    <div class="container"
	<section class='col-xs-12 col-sm-6 col-md-8'>
            <h2><?php echo _("Lainaus");?></h2>
            <form name="lainaus" method="post" action="<?php echo $baseurl;?>/lainaa.php">
                <fieldset class="lainaaja" id="f_lainaaja">
                    <label for="lainaaja"><?php echo _("Lainaaja: ");?><input type="text" id="lainaaja" required="true" name="lainaaja" size="40" maxlength="255"></label>
                    <label for="jnumero"><?php echo _("Jäsennumero: ");?><input type="number" name="jnumero" id="jnumero"></label>
                    <label for="tunniste"><?php echo _("Tunniste: ");?><input type="text" id="tunniste" name="tunniste" equired="true" size="20" maxlength="255"></label><br/>
                    <button type="button" class="btn btn-lg btn-default" id="hae"><?php echo _("Hae");?></button>
                    <button type="button" class="btn btn-lg btn-default" id="uusi"><?php echo _("Uusi");?></button><br/>                    
                </fieldset>
                <fieldset class="laina" id="f_laina">
                        <label for="pantti"><?php echo _("Pantti: ");?><input type="text" id="pantti" name="pantti" value="" required="true" placeholder="<?php echo _("Ajokortti");?>"/></label>
                        <label for="kokoelma"><?php echo _("Kokoelma:");?>
                            <input type="text" name="kokoelma" id="kokoelma" value="<?php echo $collection;?>" readonly="true"/>
                        </label>
                        <label for="peli"><?php echo _("Peli:");?><input type="text" name="peli" id="peli" value="<?php echo $game;?>" readonly="true"/>
                        </label>
                        <label for="kokoelmatunniste"><?php echo _("Kokoelmatunniste:");?><input type="text" name="kokoelmatunniste" id="kokoelmatunniste"
                                                                                                 value="<?php echo $gameid;?>" readonly="true"/></label>
                        <button type="button" class="btn btn-lg btn-default" id="lainaa" disabled="true"><?php echo _("Lainaa");?></button>
                </fieldset>
            </form>
    </div>
    <?php include_once("$basepath/footer.html");?>
</body>
</html>
