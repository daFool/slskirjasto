<?php
require_once("globals.php");
require_once("$basepath/helpers/common.php");
require_once("$basepath/helpers/users.php");

$user = isset($_SESSION['user']) ? $_SESSION['user'] : false;
$loggedin = isset($_SESSION['loggedin']) ? $_SESSION['loggedin'] : false;

if(!$user || !$loggedin) {
    header("Location: $baseurl/index.php");
    die();
}
$fields = array("ktunnus"=>"Tunniste", "nimi"=>"Nimi", "puhelin"=>"Puhelin", "sahkoposti"=>"Sahkoposti", "syntymavuosi"=>"syntymavuosi", "sukupuoli"=>"sukupuoli",
    "jasennumero"=>"SLSjasenNUmero");
$users = new SLSUSERS($db);
$error = "Ei hakuehtoa.";

foreach($fields as $field=>$value) {
    if(isset($_POST[$field]) && $_POST[$field]!="") {
        $result = $users->findWithRex($_POST[$field], $value);
        $ehto = htmlspecialchars($value);
        $value = htmlspecialchars($_POST[$field]);
        if($result===False) {
            $error = "Haku $ehto ~* $value ei palauttanut ainuttakaan käyttäjää.";            
        } else 
            $error=false;
        break;
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
            <h1>Käyttäjähaku</h1>
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
                echo "<p>Haku $ehto ~* $value palautti ".count($result)." käyttäjää.</p>\n"; 
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