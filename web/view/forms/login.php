<?php
require_once("../../globals.php");
require_once("$basepath/helpers/common.php");

include_once("$basepath/view/html_base.html");
?>
		<title><?php echo _("Lautapelikirjasto : Kirjaudu");?></title>
	</head>
<body class="signin">
	<div class="container">
		<form class="form-signin" name="login" method="POST" action="<?php echo $baseurl;?>/checkAuth.php">
			<label for="ktunnus" class="sr-only"><?php echo _("Käyttäjätunnus:");?> </label>
			<input class="form-control" id="ktunnus" type="text" size="20" maxlength="255" required="true" name="ktunnus" placeholder="Käyttäjätunnus" required autofocus>
			<label for="salasana" class="sr-only"><?php echo _("Salasana:");?> </label>
			<input class="form-control" type="password" size="20" maxlength="120" required="true" name="salasana" id="salasana" required placeHolder="Salasana"/>
			<button class="btn btn-lg btn-primary btn-block" type="sumbit"><?php echo _("Kirjaudu");?></button>
			<a href="<?php echo $baseurl;?>/view/forms/register.php?register_method=local"><?php echo _("Rekisteröidy");?></a>	
		</form>	
		
	</div>
	<?php
		if(isset($_REQUEST["error"])) {
			echo "<div class=\"error\">".htmlspecialchars($_REQUEST['error'])."</div>\n";
		}
	?>
</body>
</html>
