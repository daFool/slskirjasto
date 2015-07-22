<?php
require_once("globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/users.php");

$vahviste = isset($_GET["vahviste"]) ? $_GET["vahviste"] : false;
if($vahviste !== false) {
    $users=new SLSUSERS($db);
    if($users->confirm($vahviste)) {
        header("Location: $baseurl/index.php");
    }
}
?>
<!doctype html>
<html lang="fi">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>lautapelikirjasto</title>
  <link rel="stylesheet" href="css/twitter_bootstrap.css">
</head>
<body>
<header>
    <a href="<?php echo $baseurl;?>/index.php">Etusivu</a>
</header>
<article>
    <h2>Vahvistusvirhe</h2>
    <div>
        <p>Ooops. Joko vahvistukoodisi on käytetty tai se on vanhentunut. Yritä rekisteröityä uudestaan.</p>
    </div>
</article>
</html>