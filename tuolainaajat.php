<?php
require_once("globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/users.php");

$user = isset($_SESSION['user']) ? $_SESSION['user'] : false;
$loggedin = isset($_SESSION['loggedin']) ? $_SESSION['loggedin'] : false;

if(!$user || !$loggedin || $user['tila']!='superadmin') {
    header("Location: $baseurl/index.php");
    die();
}
$error="";

function error($message) {
    global $baseurl;
    $a = array("ktunnus", "nimi", "puhelin", "jasennumero", "sahkoposti", "sukupuoli", "syntymavuosi");
    $url="{$baseurl}/forms/lainaajat.php?";
    $params="error=$message";
    header("Location: {$url}{$params}");
    die();
}

function tuoLainaajat($db, $tdsto) {
    $file = file($tdsto);
    if(!$file) {
        return sprintf(_("Tiedosto %s ei auennut."),$tdsto);
    }
    $users = new SLSUSERS($db);
    $keys = explode(',',$file[0]);
    $lines = count($file);
    $o=0;
    $e=0;
    $s=0;
    for($i=1;$i<$lines;$i++) {
        $row = explode(',',$file[$i]);
        $user['nimi']=$row[array_search('etunimi', $keys)]." ".$row[array_search('sukunimi', $keys)];
        $user['jasennumero']=$row[array_search('jasennro', $keys)];
        $user['puhelin']=$row[array_search('puhelinnro', $keys)];
        $user['sahkoposti']=$row[array_search('sahkoposti', $keys)];
        $user['syntymavuosi']=$row[array_search('syntymavuosi', $keys)];
        $user['sukupuoli']='E';
        $user['tila']='lainaaja';
        $user['ktunnus']=$user['jasennumero'];
        if($users->checkUser($user['ktunnus']) || $users->checkMember($user['jasennumero'])) {
            $s++;
            continue;
        }
        $res = $users->insertUser($user);
        if(!$res)
            $e++;
        else
            $o++;
    }
    return array("onnistui"=>$o, "feilasi"=>$e, "skipattiin"=>$s);
}
if(!isset($_FILES["tiedosto"]["error"]) || !isset($_FILES["tiedosto"]["name"]))
    error("Tiedosto puuttuu?");

if($_FILES["tiedosto"]["error"]!=UPLOAD_ERR_OK)
    error("Tiedoston latausvirhe");
        
$tulos = tuoLainaajat($db, $_FILES["tiedosto"]["tmp_name"]);
include_once("$basepath/html_base.html");
?>
    </head>
    <body>
        <?php include_once("navbar.html"); ?>
        <section class='container'>
            <div class="row">
              <section class='col-xs-12 col-sm-6 col-md-6'>
                <section>
                        <h1><?php echo _("SLS-tuonti");?></h1>
                  
                        <?php if($error!="") {
                        ?>
                            <div class="error"><?php echo $error;?></div>
                        <?php } ?>
                        <p><?php echo sprintf(_("Tuotiin onnistuneesti %d lainaajaa, skipattiin %d lainaajaa."), $tulos["onnistui"], $tulos["skipattiin"]);?>
                        <?php echo sprintf(_("%d aiheutti virheen."),$tulos["feilasi"]);?></p>            
                </section>
              </section>
            </div>
        </section>
    </body>
</html>