<?php
/**
 * Käyttäjät
 *
 * Käyttäjien ylläpito. Ei mitään käyttäjätasotarkistuksia ja
 * datatables-haku olettaa, että sille on suojatusti pureskeltu
 * järjestysehto
 *
 * Käyttäjä voi kirjautua kahta tietä sovellukseen, joko paikallisesti käyttäen (käyttäjätunnus, salasana)-paria
 * tai käyttäen google-autentikaatiota. Jos käyttäjä on kirjautunut, niin hänen tietonsa löytyvät $_SESSION["user"].
 *
 * Käyttäjään liittyy kaksi taulua: kayttaja ja kayttajarooli
 *
 * _kayttaja_
 * <pre>
 * +--------------------+-------------+--------------------------+
 * | Sarake             | Tyyppi      | Selitys                  |
 * +--------------------+-------------+--------------------------+
 * | nimi               | varchar     | Käyttäjän nimi           |
 * | slsjasennumero     | int         | SLS-jäsennumero          |
 * | puhelin            | varchar     | Puhelinnumero            |
 * | sahkoposti         | varchar     | Sähköpostiosoite         |
 * | syntymavuosi       | int         | Käyttäjän syntymävuosi   |
 * | sukupuoli          | varchar     | Käyttäjän sukupuoli      |
 * | tunniste           | varchar     | Käyttäjätunnus           |
 * | vahvistus          | varchar     | Vahvistuskoodi           |
 * | vahvistuslahetetty | timestamp   | Vahvistuskoodi lähetetty |
 * | tila               | varchar     | Käyttäjän "taso"         |
 * | muokattu           | timestamp tz| Rivin muokkaushetki      |
 * | muokkaaja          | varchar     | Riviä muokannut tunnus   |
 * | luotu              | timestamp tz| Rivin luontihetki        |
 * | luoja              | varchar     | Rivin luonut tunnus      |
 * </pre>
 *  Tila voi olla: "lainaaja, prospekti, käyttäjä, superadmin tai admin".
 * _kayttajatunnistus_
 * <pre>
 * +--------------------+-------------+----------------------------------+
 * | Sarake             | Tyyppi      | Selitys                          |
 * +--------------------+-------------+----------------------------------+
 * | kayttaja           | varchar     | Viiteavain käyttäjätauluun       |
 * | tyyppi             | varchar     | Tunnistustyyppi                  |
 * | salaisuusavain     | varchar     | Salasanan hash tai google id     |
 * | salaisuus          | varchar     | Salasana tai Setec Astronomy     |
 * | muokattu           | timestamp tz| Rivin muokkaushetki              |
 * | muokkaaja          | varchar     | Riviä muokannut tunnus           |
 * | luotu              | timestamp tz| Rivin luontihetki                |
 * | luoja              | varchar     | Rivin luonut tunnus              |
 
 * </pre>
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 * */

/**
 * Käyttäjät
 *
 * Käyttäjien lisäys, poisto, muutos jne...
 * */
class SLSUSERS extends mosBase\malli {
    /**
     * Constructor
     * @param object $db Database-handle
     * */
    public function __construct(&$db, &$log) {
        $hakukentat=array();
        parent::__construct($db, $log, "kayttaja", array("primary"=>array("tunniste")));
    }
    
    /**
     * @param int $id Google identifier
     * @return boolean|array False if id was not found otherwise user data as array.
     * */
    public function fetchWithGoogleId($id) {
        $s = "select * from Kayttaja as k join KayttajaTunnistus as kt
        on (k.Tunniste = kt.Kayttaja and kt.tyyppi='Google' and Salaisuusavain=:id)";
        $st = $this->pdoPrepare($s, $this->db);
        $this->pdoExecute($st, array("id"=>$id));
        if($st->rowCount()==0)
            return false;
        $r = $st->fetch(PDO::FETCH_BOTH);
        return $r;                
    }
    
    /**
     * @param string $userid Userid     
     * @return boolean
     * **/
    public function checkUser($userid) {
        $s = "select Tunniste from Kayttaja where Tunniste=:userid;";
        $st = $this->pdoPrepare($s, $this->db);
        $this->pdoExecute($st, array("userid"=>$userid));
        if($st->rowCount()==0) {
            $res = false;
        } else {
            $res = true;
        }
       return $res;
    }
    
    /**
     * Checks to see if given membership number is in use
     * 
     * @param int $jasennumero Membership number to be checked
     * @return mixed existense of membership number in boolean or in json
     * **/
    public function checkMember($jasennumero) {    
        $s = "select Tunniste from Kayttaja where SLSjasenNumero=:jasennumero;";
        $st = $this->pdoPrepare($s, $this->db);
        $this->pdoExecute($st, array("jasennumero"=>$jasennumero));
        if($$st->rowCount()==0) {
            $res = false;
        }
        else
            $res = true;
        return $res;
    }
    
    
    /**
     * @param array $ident User identity information
     * @return boolean
     * */
    public function insertTunniste($ident, $kuka=False) {
        if($kuka==False) {
            $ident["luoja"]="system";
        } else {
            $ident["luoja"]=$kuka;
        }
        $s = "insert into KayttajaTunnistus (Kayttaja, Tyyppi, Salaisuusavain, Salaisuus, luoja)
        values (:Kayttaja, :Tyyppi, :Salaisuusavain, :Salaisuus, :luoja);";
        $st = $this->pdoPrepare($s, $this->db);
        $res = $this->pdoExecute($st, $ident);
        $this->log($ident["luoja"],"Added ident {$ident["tunniste"]}/{$ident["tyyppi"]}",__FILE__,
                    __CLASS__, __LINE__, "AUDIT");
            
        return $res;
    }
    
    /**
     * Local password
     * @param string $salasana password to hash
     * @return array with hashed password and password hash
     * */
    private function salakala($salasana) {
        $suola = openssl_random_pseudo_bytes(5);
        $salasana = openssl_digest($suola.$salasana,"sha256");
        $d = array("Salaisuusavain"=>base64_encode($suola), "Salaisuus"=>$salasana);
        return $d;
    }
    
    /**
     * Register a new user
     *
     * Kutsutaan, kun uusi käyttäjä rekisteröityy järjestelmään
     * @param array $user User details
     * @param array $ident Identification details
     * @return mixed false jos epäonnistui ja string vahviste jos onnistui
     * @uses insertUser insertTunniste salakala SLSMail
     * */
    public function addMember($user, $ident, $kuka=False) {
        if($kuka===False) {
            $user["luoja"]="system";
            $ident["luoja"]="system";
        } else {
            $user["luoja"]=$kuka;
            $ident["luoja"]=$kuka;
        }
        if($ident['method']=="local") {
            $d = $this->salakala($ident["salasana"]);
            $d["Kayttaja"]=$user['ktunnus'];
            $d["Tyyppi"]='local';                                                     
        } else {
            $d = array("Kayttaja"=>$user['ktunnus'],
                        "Tyyppi"=>'Google',
                        "Salaisuusavain"=>$ident['google_id'],
                        "Salaisuus"=>"Setec Astronomy");
        }
        $this->upsert($user);
                
        if(!$this->insertTunniste($d)) {
            $s = "delete from Kayttaja where Tunniste=:tunniste;";
            $st = $this->pdoPrepare($s, $this->db);
            $this->pdoExecute($st, array("tunniste"=>$user['ktunnus']));
            return false;
        }
        $vahviste = openssl_random_pseudo_bytes(5);
        $vahvistus = openssl_digest($vahviste, "sha256");
        $s = "update Kayttaja set Vahvistus=:vahvistus, VahvistusLahetetty=now() where Tunniste=:tunniste;";
        $st = $this->pdoPrepare($s, $this->db);
        $this->pdoExecute($st, array("vahvistus"=>$vahvistus, "tunniste"=>$user['ktunnus']));
        
        return $vahvistus;        
    }
    
    /**
     * Salasanan vaihtaminen
     * @param string $kayttajatunnus Käyttäjätunnus, jonka salasanaa vaihdetaan
     * @param string $salasana, Salasana, johon vaihdetaan
     * */
    public function vaihdaSalasana($kayttajatunnus, $salasana, $kuka=False) {
        if($kuka===False) {
            $kuka="system";
        }
        $s = "select count(*) as lkm from kayttajatunnistus where kayttaja=:kayttajatunnus and tyyppi='local';";
        $st = $this->pdoPrepare($s, $this->db);
        $d = array();
        $d["kayttajatunnus"]=$kayttajatunnus;
        $this->pdoExecute($st, $d);
        $rivi = $st->fetch(\PDO::FETCH_ASSOC);
        if($rivi["lkm"]==0) {
            $s = "insert into kayttajatunnistus (salaisuusavain, salaisuus, luotu, luoja, tyyppi, kayttaja)
                    values (:Salaisuusavain, :Salaisuus, now(), :kuka, 'local', :kayttajatunnus);";
        } else {
            $s = "update KayttajaTunnistus
                set salaisuusavain=:Salaisuusavain, salaisuus=:Salaisuus, muokattu=now(), muokkaaja=:kuka where kayttaja=:kayttajatunnus and tyyppi='local';";
        }
        $d = $this->salakala($salasana);
        $d["kayttajatunnus"]=$kayttajatunnus;        
        $d["kuka"]=$kuka;
        $st = $this->pdoPrepare($s, $this->db);
        $res = $this->pdoExecute($st, $d);
        return $res;
    }
    
    /**
     * Confirm
     * @param string $vahviste Confirmation string
     * @return boolean true if confirmed false if failed
     * */
    public function confirm($vahviste) {
        $s = "update kayttaja set tila='käyttäjä', vahvistus='', vahvistuslahetetty=null where tila='prospekti' and vahvistuslahetetty + interval '1 day' > now() and vahvistus=:vahviste;";
        $st = $this->pdoPrepare($s);
        $this->execute($st, array("vahviste"=>$vahviste));
        $this->log("system", "Confirmed {$vahviste}",__FILE__,
                    __CLASS__, __LINE__, "AUDIT");
                
        if($st->rowCount()==1)
            return true;
        return false;
        
    }
    
    /**
     * Login with local database based authentication
     * @param string $salasana password
     * @param string $ktunnus User id
     * @return boolean;
     * */
    public function checkLocalAuth($salasana, $ktunnus) {
        $s = "select salaisuusavain, salaisuus from kayttajatunnistus where kayttaja=:kayttaja and tyyppi='local';";
        $st = $this->pdoPrepare($s, $this->db);
        $this->pdoExecute($st, array("kayttaja"=>$ktunnus));
        $row = $st->fetch();
        $suola = base64_decode($row["salaisuusavain"]);
        $salasana = openssl_digest($suola.$salasana, "sha256");
        if($row["salaisuus"]!=$salasana)
            return false;
        return true;        
    }
    
    /**
     * Haku käyttäjätunnuksella
     * Käytetään ensisijaisesti paikallisessa sisäänkirjautumisessa
     * @param string $ktunnus Käyttäjätunnus, jota haetaan
     * @return array Palauttaa käyttäjän tiedot
     * */
    public function fetchWithTunnus($ktunnus) {
        $s = "select * from kayttaja where tunniste=:tunniste;";
        $st = $this->pdoPrepare($s, $this->db);
        $this->pdoExecute($st, array("tunniste"=>$ktunnus));
        $row = $st->fetch();
        return $row;
    }
    
    /**
     * Fetch all users from the database
     * @return all rows as an array
     * */
    public function getUsers() {
       return $this->all();
    }
    
    /**
     * Searches users with regexp against one of the allowed search fields.
     * Allowed fields can be found from $fields-array.
     * @param string/regexp $Rex regexp to match against
     * @param string $Field whose contents are searched
     * @return mixed False if nothing was found or an array of matched rows
     * */
    public function findWithRex($Rex, $Field) {
        $fields = array("Nimi", "SLSjasenNumero", "Puhelin", "Sahkoposti","Tunniste", "luotu", "muokattu");
        $match=false;
        foreach($fields as $f) {
            if($f==$Field)
                $match=true;
        }
        if($match===false) {
            return false;
        }
        if($Field=="SLSJasenNumero" || $Field=="luotu" || $Field=="muokattu")
            $op = "=";
        else
            $op = "~*";
        $s = "select * from kayttaja where $Field $op :rex;";
        $st = $this->pdoPrepare($s, $this->db);
        $d = array("rex"=>$Rex);
        $this->pdoExecute($st, $d);
        if($st->rowCount()==0) {
            return false;
        }
           
        $rows = $st->fetchAll();
        if(!is_array($rows))
            $rows = array("0"=>$rows);
        return $rows;
    }
    
    /**
     * Finds users with partial name
     * @param string $part Part to be searched
     * @return mixed false if none was found or an array of matched users - max 5
     * */
    public function searchWithNamePart($part) {
        $part.='%';
        $s = "select nimi, tunniste from kayttaja where nimi ilike :part limit 5;";
        $st = $this->pdoPrepare($s, $this->db);
        $this->pdoExecute($st, array("part"=>$part));
        if($res===false)
            return false;
        $rows = $st->fetchAll(PDO::FETCH_ASSOC);
        if(!is_array($rows))
            $rows = array($row);
        return $rows;
    }
    
    /**
     * Matches users with parts of username. Returns first 10 matches
     * @param string $part Part to be searched with
     * @return mixed False if none was found or an array of at most 10 matches
     * */
    public function searchWithTunnistePart($part) {
        $part.='%';
        $s = "select tunniste from kayttaja where tunniste ilike :part limit 10;";
        $st = $this->pdoPrepare($s, $this->db);
        $this->pdoExecute($st, array("part"=>$part));
        $rows = $st->fetchAll(PDO::FETCH_ASSOC);
        if(!is_array($rows))
            $rows = array($row);
        return $rows;
    }
    
    /**
     * Lainausnäytön käyttäjähaku
     * @param string $kentta Millä kentällä haetaan
     * @param string $arvo Mitä arvoa haetaan
     * @return mixed false jos ei löytynyt, muutoin löytyneet rivit, yleensä yksi
     * */
    public function lainausCheck($kentta, $arvo) {
        $s = "select nimi, tunniste, slsjasennumero from kayttaja where ";
        $d=array();
        switch($kentta) {
            case "nimi":
                list($arvo, $arvo2)=explode(" /", $arvo);
                $arvo2=trim($arvo2);
                $s.=" nimi=:value and tunniste=:value2";
                $d["value"]=$arvo;
                $d["value2"]=$arvo2;
                break;
            case "slsjasennumero":
                $s.=" slsjasennumero=:value";
                $d["value"]=$ravo;
                break;
            case "tunniste":
                $s.="tunniste=:value";
                $d["value"]=$arvo;
                break;
            default :
                return false;
        }
            
        $st = $this->pdoPrepare($s, $this->db);
        $this->pdoExecute($st, $d);
        $rows = $st->fetchAll(PDO::FETCH_ASSOC);
        if(!is_array($rows))
            $rows = array($row);
        if(empty($rows) && $kentta=="slsjasennumero") {
            $s = "select lainaaja as nimi, numero as slsjasennumero, 'undefined' as tunniste, pantti from kortti where palautettu is null and annettu is not null and numero=:value;";
            $d = array("value"=>$arvo);
            $st = $this->pdoPrepare($s, $this->db);
            $this->pdoExecute($st, $d);
            $rows = $st->fetchAll(PDO::FETCH_ASSOC);
            if(!is_array($rows))
                $rows=array($row);
        }
        return $rows;
    }
    
    /**
     * Poista vanhat jäsentiedot
     *
     * Siivoaa vanhat alta, jotta uudet tiedot voi tuoda tiedostosta.
     * */
    public function poistaJasenet()  {
        $s = "delete from kayttaja where slsjasennumero > 90000000 and tila='lainaaja';";
        $st = $this->pdoPrepare($s, $this->db);
        $this->pdoExecute($st, array());
    }
    
    /**
     * Käyttäjätilat
     * */
    public function kayttajaTilat() {
        $s = "select tila from kayttaja group by tila;";
        $st = $this->pdoPrepare($s, $this->db);
        $this->pdoExecute($st, array());
        $tilat = $st->fetchAll(\PDO::FETCH_ASSOC);
        return $tilat;
    }
    
    /** Tauluhaku
     * @param string $w where-ehto
     * @param array $d where-ehdon parametrit
     * @param int $sivu sivu, jota halutaan katsella
     *
     * Palauttaa 25 käyttäjää siltä sivulta, joka pyydettiin
     * */
    public function tauluHaku($w, $d, $sivu) {
        $s = "select count(*) as lkm from kayttaja $w";
        $st = $this->pdoPrepare($s, $this->db);
        $this->pdoExecute($st, $d);
        $rivi= $st->fetch();
        $lkm = $rivi["lkm"];
        $sivuja = round($lkm / 25,0);
        if($sivu > $sivuja)
            $sivu = $sivuja;
        if($sivu < 0)
            $sivu = 0;
        $sivu = $sivu*25;
        $s = "select tunniste, nimi, slsjasennumero, puhelin, sahkoposti, syntymavuosi, tila from kayttaja $w order by nimi asc limit 25 offset :sivu;";
        $st = $this->pdoPrepare($s, $this->db);
        $d["sivu"]=$sivu;
        $this->pdoExecute($st, $d);
        $rivit = $st->fetchAll(\PDO::FETCH_ASSOC);
        $tulos = array("sivuja"=>$sivuja, "rivit"=>$rivit);        
        return $tulos;
    }
}
?>
