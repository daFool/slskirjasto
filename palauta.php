<?php
require_once("globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/maxrights.php");

$lainat = new SLSLainat($db);
$peli = isset($_REQUEST["peli"]) ? $_REQUEST["peli"] : false;
$kokoelma = isset($_REQUEST["collection"]) ? $_REQUEST["collection"] : false;
$tunniste = isset($_REQUEST["tunniste"]) ? $_REQUEST["tunniste"] : false;

if($peli===false || $kokoelma===false || $tunniste===false)
    $tulos=false;
else
    $tulos = $lainat->Palauta($tunniste);

include_once("$basepath/view/html_base.html");
?>
	<title><?php echo _("Palautus");?></title>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#paluu").on('click', function() {
				var osoite="<?php echo $baseurl;?>/collection_main.php?collection=<?php echo urlencode($kokoelma);?>";
				window.location=osoite;
			})
		})
		
	</script>
<body>
	<?php include_once("$basepath/view/navbar.html");?>
	<div class="container"
		<section class='col-xs-12 col-sm-6 col-md-8'>
			<h2><?php echo _("Palautus");?></h2>
			<?php if($tulos===false) {
				echo _("Palautus epäonnistui.");
			}
			else {
				printf(_("Peli <b><i>%s</i></b> tunnisteella <i>%s</i> palautettu onnistuneesti."), $peli, $tunniste);
				printf(_("Muista palauttaa lainaajalle <b><i>%s</i></b> hänen panttinsa: <b><i>%s</i></b>."), $tulos["nimi"],
				       $tulos["pantti"]);       
			}
			?>
			<button type="button" lass="btn btn-lg btn-default" id="paluu"><?php echo _("Palaa");?></button>
		</section>
	</div>
	 <?php include_once("$basepath/view/footer.html");?>
</body>
</html>
