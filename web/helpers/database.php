<?php
/**
 * Tietokanta
 *
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 * */

/**
 * Tietokantarajapinta
 *
 * Tietokannan käsitteleminen, logaus.
 * _logi_
 * <pre>
 * +----------+-----------+----------------------------------------+
 * | Sarake   | Tyyppi    | Selite                                 |
 * +----------+-----------+----------------------------------------+
 * | kuka     | varchar   | Kenen tapahtuma, viiteavain kayttajaan |
 * | koska    | timestamp | Koska logattu tapahtuma tapahtui       |
 * | mita     | text      | Mitä tapahtui                          |
 * | tiedosto | varchar   | Mikä tiedosto aiheutti                 |
 * | mika     | varchar   | Mikä metodi aiheutti                   |
 * | rivi     | int       | Millä rivillä                          |
 * | luokka   | varchar   | Minkä tason logauksesta on kyse        |
 * +----------+-----------+----------------------------------------+
 * </pre>
 * */

class SLSDB {
    /** @var object PDO-objekti, joka sisältää kantayhteyden. **/
    private $dbh;   
    
    /**
     * Konstruktori
     *
     * Yrittää luoda PDO-objektin ja avata kantayhteyden. Kantayhteyden tiedot haetaan
     * käyttäen globaaleja muuttujia $dsn, $dbuser ja $dbpassword.
     *
     * @throws Exception jos kantayhteys ei aukea.
     * 
     * */
    public function __construct(){
        try {
            global $dsn, $dbuser, $dbpassword;
            $this->dbh = new PDO($dsn, $dbuser, $dbpassword);
            if($this->dbh===false) {
                throw new Exception("Database $dsn did not open $dbpassword!");
            }
        }
        catch(PDOException $e) {
            die("Database $dsn did not open: {$e->getMessage()} $dbuser/$dbpassword");
        }
    }
    
    /**
     * PDO-objekti
     *
     * Palauttaa pdo-objektin
     * @return object PDO-objekti
     * */
    public function getHandle() {
        return $this->dbh;
    }
    
    /**
     * Tietokantalogi
     *
     * Kirjoittaa tauluun Logi. Jos käyttäjällä ei ole istuntoa auki, eikä $_SESSION['user'] sisällä
     * käyttäjän tietoja, merkitsee käyttäjäksi anonymous.
     * 
     * @param string $viesti Vapaa logiviesti
     * @param string $tiedosto Tiedosto, joka generoi viestin
     * @param string $mika funktio/luokka, joka generoi viestin
     * @param int $rivi rivinumero, joka generoi viestin
     * @param string $luokka minkätyyppisestä viestistä on kyse
     * @return void Kuolee mikäli logaus epäonnistuu
     * */
    
    public function log($viesti, $tiedosto, $mika, $rivi, $luokka="DEBUG") {
        try {
            global $basepath;
            
            if(isset($_SESSION['user'])) {
                $kuka = $_SESSION['user']['tunniste'];
            }
            else
                $kuka = "anonymous";
            $users = new SLSUSERS($this);
            $d =array("mita"=>$viesti, "tiedosto"=>$tiedosto, "mika"=>$mika, "rivi"=>$rivi, "luokka"=>$luokka);
            if(!$users->checkUser($kuka)) {
                $s ="insert into Logi (mita, tiedosto, mika, rivi, luokka) values (:mita, :tiedosto, :mika, :rivi, :luokka);";                
            } else {
                $s = "insert into Logi (kuka, mita, tiedosto, mika, rivi, luokka) values (:kuka, :mita, :tiedosto, :mika, :rivi, :luokka);";
                $d["kuka"]=$kuka;
            }
            $st = $this->dbh->prepare($s);
            $res = $st->execute($d);
            if(!$res) {
                die("Programming error!");
            }
        }
        catch(PDOException $e) {
            die("Programmming error: {$e->getMessage()}");
        }
    }
}
?>