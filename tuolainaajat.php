<?php
require_once("globals.php");
require_once("$basepath/helpers/common.php");

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
    $url="{$baseurl}/view/forms/lainaajat.php?";
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
    $virheet=array();
    for($i=1;$i<$lines;$i++) {
        $row = explode(',',$file[$i]);
        $user['nimi']=$row[array_search('etunimi', $keys)]." ".$row[array_search('sukunimi', $keys)];
        $user['jasennumero']=$row[array_search('jasennro', $keys)];
        $user['puhelin']=$row[array_search('puhelinnro', $keys)];
        $user['sahkoposti']=$row[array_search('sahkoposti', $keys)];
        $user['syntymavuosi']=$row[array_search('syntymavuosi', $keys)];
        if($user['syntymavuosi']==$row[array_search('etunimi', $keys)])
            $user['syntymavuosi']=-1;
        $user['sukupuoli']='E';
        $user['tila']='lainaaja';
        $user['ktunnus']=$user['jasennumero'];
        if($users->checkUser($user['ktunnus']) || $users->checkMember($user['jasennumero'])) {
            $s++;
            continue;
        }
        $res = $users->insertUser($user);
        if(!$res) {
            $virheet[$e]=$user;
            $e++;
        }
        else
            $o++;
    }
    return array("onnistui"=>$o, "feilasi"=>$e, "skipattiin"=>$s, "virheet"=>$virheet);
}
if(!isset($_FILES["tiedosto"]["error"]) || !isset($_FILES["tiedosto"]["name"]))
    error("Tiedosto puuttuu?");

if($_FILES["tiedosto"]["error"]!=UPLOAD_ERR_OK)
    error("Tiedoston latausvirhe");
        
$tulos = tuoLainaajat($db, $_FILES["tiedosto"]["tmp_name"]);
include_once("$basepath/view/html_base.html");
?>
    </head>
    <body>
        <?php include_once("$basepath/view/navbar.html"); ?>
        <section class='container'>
            <h1><?php echo _("SLS-tuonti");?></h1>
                  
            <?php if($error!="") { ?>
            <div class="error"><?php echo $error;?></div>
            <?php } ?>
            
            <p><?php echo sprintf(_("Tuotiin onnistuneesti %d lainaajaa, skipattiin %d lainaajaa."), $tulos["onnistui"], $tulos["skipattiin"]);?>
            <?php echo sprintf(_("%d aiheutti virheen."),$tulos["feilasi"]);?></p>
            <?php
                for($i=0;$i<$tulos["feilasi"];$i++) {
                    print_r($tulos["virheet"][$i]);
                    echo "<br/>\n";
                }
            ?>            
        </section>
    </body>
    <?php include("$basepath/view/footer.html");?>
</html>