<?php
/**
 * Kokoelman luominen - vastakappale formille
 *
 * forms/collection.php kutsuu tätä php-skriptaa.
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

require_once("globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/minrights.php");

/**
 * Virhe lomakkeen käsittelyssä.
 *
 * Palauttaa takaisin lomakkeelle virheilmoituksen kera, säästäen lomakkeen arvot.
 * @param string $message virheilmoitus
 * */
function error($message) {
    $a = array("nimi", "laji", "tnimi", "sijainti", "alkupvm", "loppupvm");
    $url="view/forms/collection.php?error=$message";
    $params="";
    foreach($a as $i) {
        if(isset($_POST[$i])) {
            $params.="&$i=".urlencode($_POST[$i]);
        }
    }
    header("Location: {$url}{$params}");
    die();
}
$collection=array();
$collection['nimi']=isset($_POST['nimi']) ? $_POST['nimi'] : false;
if($collection['nimi']===false) {
    error(_("Huono kokoelman nimi"));
}

$col = new SLSCOLLECTIONS($db);
if($col->checkCollection($collection['nimi'])!==false)
    error(_("Tällä nimellä on jo kokoelma."));

$collection['laji']=isset($_POST['laji']) ? $_POST['laji'] : false;
if($collection['laji']===false) {
    error(_("Kokoelmalaji on pakollinen tieto"));
}

if($_SESSION['user']['tila']=='superadmin') {
    $u = new SLSUSERS($db);
    if(isset($_POST['omistaja'])) {
        $omistaja = $_POST['omistaja'];
        $onko = $u->checkUser($omistaja);
        if($onko) {
            $collection['omistaja']=$omistaja;
        }
        else
            error(_("Omistajaa $omistaja ei ole kannassa."));
    }
} else
    $collection['omistaja']=$_SESSION['user']['tunniste'];

if($collection['laji']==1)
    $collection['tapahtuma']=array();
else {
    $tnimi = isset($_POST['tnimi']) ? $_POST['tnimi'] : false;
    
    if($tnimi===false)
        error(_("Tapahtumakokoelmassa tapahtuman nimi on pakollinen tieto."));
    
    if($col->checkEvent($tnimi))
        error(_("Tapahtuma on jo olemassa."));
    
    $collection['tapahtuma']['nimi']=$tnimi;
    $sijainti = isset($_POST['sijainti']) ? $_POST['sijainti'] : false;
    if(!$sijainti)
        error(_("Tapahtuman kaikki kentät ovat pakollisia!"));
    $collection['tapahtuma']['sijainti']=$sijainti;
    
    $alkaa = isset($_POST['alkupvm']) ? $_POST['alkupvm'] : false;
    if(!$alkaa) 
        error(_("Tapahtuman alkuhetki on pakollinen tieto!"));
    $collection['tapahtuma']['alkaa']=$alkaa;
    
    $loppuu = isset($_POST['loppupvm']) ? $_POST['loppupvm'] : false;
    if(!$loppuu)
        error(_("Tapahtuman loppuhetki on pakollinen tieto!"));
    
    $collection['tapahtuma']['loppuu']=$loppuu;
}
$res = $col->addCOllection($collection);
if(!$res) {
    error(_("Kokoelman lisääminen epäonnistui."));
}
include_once("$basepath/view/html_base.html");
?>
    <title><?php echo _("Kokoelman lisääminen");?></title>

    </head>
    <body>
        <?php include_once("$basepath/view/navbar.html");?>
        <div class="container"
	    <section class='col-xs-12 col-sm-6 col-md-8'>
                <h2><?php echo _("Kokoelma luotu onnistuneesti");?></h2>
            </section>
        </div>
        <?php include_once("$basepath/view/footer.html");?>
    </body>
</html>