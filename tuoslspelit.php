<?php
/**
 * Pelien haku anybodystä
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 * */
require_once("globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/collections.php");
require_once("$basepath/helpers/tuoSLS.php");
require_once("$basepath/helpers/games.php");
require_once("$basepath/helpers/lahjoittajat.php");
require_once("$basepath/helpers/collectionGames.php");
require_once("$basepath/helpers/maxrights.php");

$error="";
$slspelit = tuoSLS();
if($slspelit===false) {
    $db->log("SLS-pelien tuonti epäonnistui",__FILE__,__FUNCTION__,__LINE__,"ERROR");
    $error=_("SLS-pelien tuonti epäonnistui.");
} else {
    $dbh = $db->getHandle();
    $games = new SLSGAMES($db);
    $collection=false;
    $col = new SLSCOLLECTIONS($db);
    $don = new SLSLahjoittajat($db);
    $cgames = new SLSCOLLECTIONGAMES($db);
    
    if($col->checkCollection("SLS")) {
        $collection=true;
    }
    $o=0;
    $e=0;
    $ci=0;
    $t=false;
    $previous=false;
    foreach($slspelit as $slspeli) {
        $game=array();
        $game['bgglinkki']=$slspeli['link'];
        $game['nimi']=$slspeli['nimi'];
        $game['julkaisija']="";
        $game['suunnittelija']="";
        $game['vuosi']=-1;
        $t = $games->addGame($game);
        if($t!==false) {
            $o++;
            $previous=$t;
        }
        else 
            $e++;
        if($collection && $previous) {
            $cg["Kokoelma"]="SLS";
            $cg["Peli"]=$previous["tunniste"];
            $cg["Omistaja"]=$_SESSION['user']['tunniste'];
            if(isset($slspeli['lahjoittaja']) && $slspeli['lahjoittaja']!="") {
                $dn = array("nimi"=>$slspeli['lahjoittaja']);
                $res = $don->lisaaLahjoittaja($dn, "");
                $cg['Lahjoittaja']=$slspeli['lahjoittaja'];
            }
            $cg["Huomautus"]=$slspeli["huomautus"];
            $cg["Tunniste"]=$slspeli["id"];
            $cg["Lisaaja"]=$cg["Omistaja"];
            $res = $cgames->add($cg);
            if(!$res) {
                $error = _("Kokoelmapelin lisääminen epäonnistui.");
                break;
            }
            $ci++;
        }   
    }
}
include_once("$basepath/html_base.html");
?>
        <title><?php echo _("Tuo SLS-pelit");?></title>
    </head>
    <body>
        <?php include_once("$basepath/navbar.html");?>
        <div class="container">
            <section class='col-xs-12 col-sm-6 col-md-8'>
                <?php if($error!="") {
                    ?>
                    <div class="error"><?php echo $error;?></div>
                <?php } ?>
                <p><?php printf(_("Tuotiin onnistuneesti %d peliä ja %d merkintää jätettiin käsittelemättä."),$o,$e);?> </p>
                <?php if($collection) { ?>
                <p><?php printf(_("Kokoelmaan SLS lisättiin %d peliä."),$ci);?></p>
                <?php } ?>
            </section>
        </div>
    </body>
</html>