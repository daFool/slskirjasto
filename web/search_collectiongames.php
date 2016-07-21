<?php
require_once("globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/collectionGames.php");

$user = isset($_SESSION['user']) ? $_SESSION['user'] : false;
$loggedin = isset($_SESSION['loggedin']) ? $_SESSION['loggedin'] : false;

if(!$user || !$loggedin) {
    header("Location: $baseurl/index.php");
    die();
}
$fields = array("suunnittelija"=>"Suunnittelija", "nimi"=>"Nimi", "lisatty"=>"Lisatty", "kesto"=>"Kesto", "pelaajia"=>"Pelaajia", "omistaja"=>"omistaja",
    "lisaaja"=>"lisaaja", "lahjoittaja"=>"Lahjoittaja", "gtin"=>"GTIN", "kokoelma"=>"Kokoelma");
$cgs = new SLSCOLLECTIONGAMES($db);
$error = "Ei hakuehtoa.";
if(!isset($_POST["kokoelma"])) {
    $error = "Ei valittua kokoelmaa";
} else {
    foreach($fields as $field=>$value) {
        if(isset($_POST[$field]) && $_POST[$field]!="") {
            $result = $cgs->findWithRex($_POST[$field], $value, $_POST["kokoelma"]);
            $ehto = htmlspecialchars($value);
            $value = htmlspecialchars($_POST[$field]);
            if($result===False) {
                $error = "Haku $ehto ~* $value, {$_POST['kokoelma']} ei palauttanut ainuttakaan käyttäjää.";            
            } else 
                $error=false;
            break;
        }
    }
}
?>
<!DOCTYPE "html">
<html lang="fi">
    <head>
        <meta charset="UTF-8"/>
        <link rel="stylesheet" href="<?php echo "$baseurl/";?>css/twitter_bootstrap.css"/>
    </head>
    <body>
        <hgroup>
            <h1>Pelihaku</h1>
          </hgroup>
        <header>
          <a href="<?php echo $baseurl;?>/index.php?logout=true">Logout</a>
          <a href="<?php echo $baseurl;?>/index.php">Etusivu</a>      
        </header>
        <article>
            <?php if($error!="") {
                ?>
                <div class="error"><?php echo $error;?></div>
            <?php } else {
                echo "<p>Haku $ehto ~* $value palautti ".count($result)." peli.</p>\n"; 
                ?>
            <table name="users" class="users">
                <thead>
                    <tr><?php foreach($fields as $name) echo "<th>$name</th>\n";?></tr>
                </thead>
                <tbody>
                    <?php foreach($result as $row) {
                        echo "<tr>";
                        foreach($fields as $name=>$value)
                            echo "<td>{$row[strtolower($value)]}</td>\n";
                        echo "</tr>\n";
                    }
            }
                    ?>
                </tbody>
            </table>
        </article>
    </body>
</html>