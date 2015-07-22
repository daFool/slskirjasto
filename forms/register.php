<?php
/**
 * Käyttäjäksi rekisteröityminen
 *
 * @uses globals.php
 * @uses common.php
 * @uses collections.php
 * @uses users.php
 * 
 * @package SLS-Kirjasto
 * @subpackage Javascript-palvelut
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 * */
require_once("../globals.php");
require_once("$basepath/helpers/common.php");
if(isset($_REQUEST['register_method']))
    $register_method=$_REQUEST['register_method'];

if(isset($_REQUEST['register_type']))
    $register_type=$_REQUEST['register_type'];
else
    $register_type="Käyttäjä";

if($register_type!="Käyttäjä")
    require_once("$basepath/helpers/minrights.php");
/**
 * Populoi lomakkeen
 *
 * Populoi lomakkeen kentät paluuarvoilla.
 * @param string $field Populoitava kenttä
 * @return mixed Kentän arvo
 * */
function returnValues($field) {
    $res="";
    if(isset($_GET[$field])) {
        $t = htmlspecialchars($_GET[$field]);
        $res=" value=\"$t\"";
    }
    return $res;
}   
include_once("$basepath/html_base.html");
?>

    <title><?php echo _("Käyttäjäksi/lainaajan rekisteröityminen/lisääminen");?></title>
</head>

<body>
    <?php include_once("$basepath/navbar.html");?>
    <section class='container'>
        <div class="row">
            <section class="col-xs-12 col-sm-6 col-md-6">
                <h2><?php echo ($register_type=="Käyttäjä" ? _("Rekisteröidy") : _("Uusi lainaaja"));?> </h2>
                <?php
                if(isset($_GET['error'])) {
                    $error = $_GET['error'];
                ?>
                <div class="virhe">
                    <?php echo htmlspecialchars($error);?>
                </div>
                <?php
                }
                ?>
                <form method="post" name="uusikayttaja" action="<?php echo "$baseurl/uusikayttaja.php";?>">
                    <label for="ktunnus"><?php echo _("Käyttäjätunnus: ")?>
                        <input type="text" name="ktunnus" size="20" required placeholder="Geek2" maxlength="255"
                        <?php echo returnValues('ktunnus');?>/>
                    </label>
                    <label for="nimi"><?php echo _("Nimi: ");?>
                        <input type="text" name="nimi" size="40" required placeholder="<?php echo _("Matti Meikäläinen");?>" maxlength="255"
                        <?php echo returnValues("nimi");?>/>
                    </label>
                    <label for="puhelin"><?php echo _("Puhelinnumero: ");?>
                        <input type="text" name="puhelin" size="20" placeholder="+358 12 123 1234" pattern="+[1234567890]{1,3}[ 123456789]{1,16}"
                        maxlength="20"/ <?php echo returnValues("puhelin");?>/>
                    </label>
                    <label for="sahkoposti"><?php echo _("Sähköpostiosoite: ");?>
                        <input type="email" name="sahkoposti" size="40" maxlength="255" placeholder="<?php echo _("Anonyymi.Pelaaja@joku.org");?>"
                        <?php echo returnValues("sahkoposti");?>/>
                    </label>
                    <label for="syntymavuosi"><?php echo _("Syntymävuosi: ");?>
                        <input type="number" min="1900" max="2030" step="1" name="syntymavuosi" placeholder="1971"
                        <?php echo returnValues("syntymavuosi");?>/>
                    </label>
                    <?php
                    $m = '<option value="'._("M").'">';
                    $n = '<option value="'._("N").'">';
                    $o = '<option value="'._("O").'">';
                    $t = '<option value="T" selected>'; 
                    if(isset($_GET["sukupuoli"])) {
                        switch($_GET["sukupuoli"]) {
                            case _("M"):
                                $m = '<option value="'._("M").'" selected>';
                                $t = '<option value="T">'; 
                                break;
                            case _("N"):
                                $n = '<option value="'._("N").'" selected>';
                                $t = '<option value="T">'; 
                                break;
                            case "O":
                                $m = '<option value="'._("O").'" selected>';
                                $t = '<option value="T">'; 
                                break;
                        }
                    }
                    ?>
                    <label for="sukupuoli"><?php echo _("Sukupuoli: ");?>
                        <select name="sukupuoli">
                            <?php echo $m; echo _("Mies");?></option>
                            <?php echo $n; echo _("Nainen");?></option>
                            <?php echo $o; echo _("Oma valinta");?></option>
                            <?php echo $t; echo _("Ei tiedossa");?></option>
                        </select>
                    </label>
                    <?php
                    if($register_method=="local" && $register_type=='Käyttäjä') {
                    ?>
                        <label for="salasana">Salasana: </label>
                        <input type="password" name="salasana" maxlength="140"/>
                        <label for="salasana2">Salasana uudestaan:</label>
                        <input type="password" name="salasana2" maxlength="140"/>
                        <input type="hidden" name="register_method" value="local"/>
                    <?php } ?>
                    <label for="jasennumero"><?php echo _("Lautapeliseuran jäsennumero: ");?>
                        <input type="number" size="8" name="jasennumero" maxlength="8" placeholder="90500123"
                        <?php echo returnValues("jasennumero");?>/>
                    </label>
                    <input type="submit" name="<?php echo _("Lähetä");?>"/>
                    <input type="reset" name="<?php echo _("Nollaa");?>"/>
                    <input type="hidden" name="registration_type" value="<?php echo htmlspecialchars($register_type);?>"/>
                </form>
            </section>
        </div>
    </section>
    <?php include_once("$basepath/footer.html");?>
</body>
</html>
