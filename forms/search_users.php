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
        <title>Käyttäjän etsintä</title>
         <link rel="stylesheet" href="<?php echo "$baseurl/";?>css/twitter_bootstrap.css"/>
    </head>
    <body>
        <h2>Käyttäjän etsintä</h2>
        <?php
        if($error !== false) {?>
            <div class="error"><?php echo $error;?></div>
        <?php }?>
        <form name="searchuser" method="POST" action="<?php echo $baseurl;?>/search_users.php">
             <label for="ktunnus">Käyttäjätunnus: </label><input type="text" name="ktunnus" size="20" placeholder="Geek.*" maxlength="255"/>
        <label for="nimi">Nimi: </label><input type="text" name="nimi" size="40" placeholder="Matti.*" maxlength="255"/>
        <label for="puhelin">Puhelinnumero: </label><input type="text" name="puhelin" size="20" placeholder="+358 12 123 1234" pattern="+[1234567890]{1,3}[ 123456789]{1,16}"
                                                           maxlength="20">
        <label for="sahkoposti">Sähköpostiosoite: </label><input type="email" name="sahkoposti" size="40" maxlength="255" placeholder="Anonyymi.Pelaaja@joku.org"/>
        <label for="syntymavuosi">Syntymävuosi: </label><input type="number" min="1900" max="2030" step="1" name="syntymavuosi" placeholder="1971">
        <label for="sukupuoli">Sukupuoli</label><select name="sukupuoli">
            <option value="M">Mies</option>
            <option value="N">Nainen</option>
            <option value="O">Oma valinta</option>
            <option value="T">Ei tiedossa</option>
            
        </select>
        <label for="jasennumero">Lautapeliseuran jäsennumero: </label><input type="number" size="8" name="jasennumero" maxlength="8" placeholder="90500123"/>
        <input type="submit" name="Hae">
    </body>
</html>