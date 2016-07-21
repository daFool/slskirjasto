<?php
require ("globals.php");
require ("$basepath/helpers/common.php");
require ("$basepath/helpers/maxrights.php");

$kentat = array("nimi", "slsjasennumero", "puhelin", "sahkoposti", "syntymavuosi", "sukupuoli", "tila", "tunniste", "salasana");

$d=array();
$virhe="";

foreach($kentat as $i) {
    if(!isset($_POST[$i])) {
        $virhe.="{$i} on asettamaton! WTF?";
        continue;
    }
    if($_POST[$i]!="")
        $d[$i]=$_POST[$i];
}

$users = new SLSUSERS($db);
$res = $users->update($d);

require("$basepath/view/html_base.html");
?>
        <title><?php echo _("Käyttäjän tallentaminen");?></title>
    </head>
    <body>
        <?php require("$basepath/view/navbar.html");?>
        <div class="container">
            <h2><?php echo $res ? sprintf(_("Käyttäjän %s talletus onnistui"),$nimi) : sprintf(_("Käyttäjän %s talletus epäonnistui"), $nimi);?></h2>
        </div>
        <?php require("$basepath/view/footer.html");?>
    </body>
</html>