<?php
/**
 * Kokoelman luominen - lomake
 *
 *  *
 * @uses globals.php
 * @uses common.php
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
 * Lomakkeen kenttien "paluuarvot"
 *
 * Populoi kentän aiemmin käytetyillä arvoilla.
 * @param string $field Populoitava kenttä
 * @return mixed Pääsääntöisesti merkkijonomuotoinen arvo
 * */
function returnValues($field) {
    $res="";
    if(isset($_GET[$field])) {
        $t = htmlspecialchars($_GET[$field]);
        $res=" value=\"$t\"";
    }
    return $res;
}


$error = isset($_REQUEST['error']) ? htmlspecialchars(urldecode($_REQUEST['error'])) : false;

include_once("$basepath/view/html_base.html");
?>
        <title><?php echo _("Kokoelman lisäys/muokkaus");?></title>
    </head>
    <body>
        <?php include_once("$basepath/view/navbar.html");?>
        <div class="container"
	<section class='col-xs-12 col-sm-6 col-md-8'>
            <h2><?php echo _("Kokoelman lisäys/muutos");?></h2>
            <?php
            if($error !== false) {?>
                <div class="error"><?php echo $error;?></div>
            <?php }?>
            <form name="collectionn" method="POST" action="<?php echo $baseurl;?>/collection_edit.php">
                <label for="nimi"><?php echo _("Nimi:");?></label><input type="text" maxlength="255" size="40" name="nimi" placeholder="SLS" required <?php echo returnValues("nimi");?> />
                <label for="laji"><?php echo ("Kokoelmalaji:");?></label><select name="laji" required>
                    <option value="0" <?php if(isset($_GET["laji"]) && $_GET["laji"]==0) echo "selected";?>><?php echo _("Tapahtuma");?></option>
                    <option value="1" <?php if(isset($_GET["laji"]) && $_GET["laji"]!=0) echo "selected";?>><?php echo ("Varasto");?></option>
                </select>
                <?php
                    if($user['tila']!='superadmin') { ?>
                        <input type="hidden" name="omistaja" value="<?php echo $user['tunniste'];?>"/>
                        <?php } else { ?>
                        <label for="omistaja"><?php echo _("Omistaja:");?></label><input type="text" name="omistaja" size="40" maxlenght="255" <?php echo returnValues("omistaja");?> />
                    <?php
                    }
                    ?>
                    <fieldset name="tapahtuma">
                        <label for="tnimi"><?php echo _("Tapahtuman nimi:");?> </label><input type="text" name="tnimi" size="40" placeholder="Lautapelaamaan 2014" maxlength="255" <?php echo returnValues("tnimi");?> />
                        <label for="sijainti"><?php echo ("Sijainti:");?> </label><input type="text" name="sijainti" placeholder="Kaapelitehdas, Helsinki" size="40" maxlength="255" <?php echo returnValues("sijainti");?> />
                        <label for="alkupvm"><?php echo ("Tapahtuma alkaa:");?></label><input type="date" name="alkupvm" size="8" maxlength="20" <?php echo returnValues("alkupvm");?> />
                        <label for="loppupvm"><?php echo ("Tapahtuma loppuu:");?></label><input type="date" name="loppupvm" size="8" maxlength="20" <?php echo returnValues("loppupvm");?> />
                    </fieldset>
                    <input type="submit" value="Talleta"/>
            </form>
            <?php include_once("$basepath/view/footer.html");?>
    </body>
</html>