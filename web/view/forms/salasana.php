<?php
require("../../globals.php");
require("$basepath/helpers/common.php");
    
$user = isset($_SESSION['user']) ? $_SESSION['user'] : false;
$loggedin = isset($_SESSION['loggedin']) ? $_SESSION['loggedin'] : false;
$virhe = isset($_REQUEST["virhe"]) ? $_REQUEST["virhe"] : false;

if(!$user || !$loggedin) {
    header("Location: $baseurl/index.php");
    die();
}
   
include_once("$basepath/view/html_base.html");
?>
    <title><?php echo _("Pelin lisäys/muokkaus");?></title>
    <script type="text/javascript">
        $(function() {
            
            function checkEm() {
                $("#vaihda").attr("disabled",true);
                if ($("#vanha").val()=="") {
                    return;
                }
                if ($("#uusi").val()=="") {
                    return;
                }
                if ($("#uusi2").val()=="") {
                    return;
                }
                if ($("#uusi").val()!=$("#uusi2").val()) {
                    $("#warning").html("<?php echo _("Uudet salasanat eivät täsmää!");?>");
                    $("#varoitus").show();
                    return;
                }
                $("#varoitus").hide();
                $("#vaihda").attr("disabled", false);
            }
            $("#salasana input").each(function () {
                $(this).on('blur', function () {
                    checkEm();
                });
            });
            
        <?php if($virhe!==false) { ?>
            $("#warning").html("<?php echo $virhe;?>");
            $("#varoitus").show();
        <?php } ?>
        });
    </script>
    </head>
    <body>
        <?php include_once("$basepath/view/navbar.html"); ?>
        <div class='container'>
            <h2><?php echo _("Salasanan vaihtaminen");?></h2>
            <div class="alert alert-warning collapse" role="alert" id="varoitus">
				<button type="button" class="close" id="vbutton" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<span id="warning">Varoitus</span>
			</div>
            <form class="form" method="POST" id="salasana" action="<?php echo "$baseurl/vaihdasalasana.php";?>">
                <label class="control-label" for="vanha"><?php echo _("Vanha salasana");?></label>
                <input class="form-control" type="password" value="" id="vanha" name="vanha" value="" size="20" maxlength="255" required="true"/>
                <p class="help-block"><?php echo _("Nykyinen salasanasi.");?></p>
                
                <label class="control-label" for="uusi"><?php echo _("Uusi salasana");?></label>
                <input class="form-control" type="password" value="" id="uusi" name="uusi" value="" size="20" maxlength="255" required="true"/>
                <p class="help-block"><?php echo _("Salasana, johon haluat vaihtaa.");?></p>
                
                <label class="control-label" for="uusi2"><?php echo _("Uusi salasana uudestaan");?></label>
                <input class="form-control" type="password" value="" id="uusi2" name="uusi2" value="" size="20" maxlength="255" required="true"/>
                <p class="help-block"><?php echo _("Anna salasana, johon haluat vaihtaa, uudestaan.");?></p>
                
                <input type="submit" disabled="true" class="btn btn-info" id="vaihda" value="<?php echo _("vaihda");?>"/>
            </form>
        </div>
        <?php include_once("$basepath/view/footer.html");?>
    </body>
    </html> 
