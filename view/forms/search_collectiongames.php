<?php
require_once("../globals.php");
require_once("$basepath/helpers/common.php");

function returnValues($field) {
    $res="";
    if(isset($_GET[$field])) {
        $t = htmlspecialchars($_GET[$field]);
        $res=" value=\"$t\"";
    }
    return $res;
}
$user = isset($_SESSION['user']) ? $_SESSION['user'] : false;
$loggedin = isset($_SESSION['loggedin']) ? $_SESSION['loggedin'] : false;

if(!$user || !$loggedin) {
    header("Location: $baseurl/index.php");
    die();
}
$error = isset($_REQUEST['error']) ? htmlspecialchars(urldecode($_REQUEST['error'])) : false;
?>
<!DOCTYPE "html">
<html lang="fi">
    <head>
        <meta charset="UTF-8"/>
        <title>Pelin etsintä</title>
         <link rel="stylesheet" href="<?php echo "$baseurl/";?>css/twitter_bootstrap.css"/>
    </head>
    <body>
        <h2>Pelin etsintä</h2>
        <?php
        if($error !== false) {?>
            <div class="error"><?php echo $error;?></div>
        <?php }?>
         <form name="searchcgame" method="POST" action="<?php echo $baseurl;?>/search_collectiongames.php">
            <label for="suunnittelija">Suunnittelija: </label><input type="text" name="suunnittelija" size="20" placeholder="Klaus Teuber" maxlength="255"/>
            <label for="nimi">Nimi: </label><input type="text" name="nimi" size="40" placeholder="Catan.*" maxlength="255"/>
            <label for="lisatty">Lisätty: </label><input type="text" name="lisatty" size="20" placeholder="2014-12-10"/>                                                          maxlength="20">
            <label for="kesto">Kesto: </label><input type="number" name="kesto" min="5" max="2880" placeholder="60"/>
            <label for="pelaajia">Pelaajia</label><input type="number" name="pelaajia" min="1" max="100" placeholder="4"/>
            <label for="omistaja">Omistaja: </label><input type="text" size="20" name="omistaja" maxlength="20" placeholder="daFool"/>
            <label for="lisaaja">Lisääjä: </label><input type="text" size="20" name="lisaaja" maxlength="20" placeholder="daFool"/>
            <label for="omistaja">Lahjoittaja: </label><input type="text" size="20" name="lahjoittaja" maxlength="20" placeholder="pema"/>
            <label for="gtin">GTIN: </label><input type="text" maxlength="255" name="gtin" placeholder="19714567890"/>
            <label for="kokoelma">Kokoelma: </label><input type="text" name="kokoelma" size="20" maxlength="255" required="true"/>
            <input type="submit" name="Hae">
        </form>
    </body>
</html>
