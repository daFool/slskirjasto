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
 * +--------------------+-----------+--------------------------+
 * | Sarake             | Tyyppi    | Selitys                  |
 * +--------------------+-----------+--------------------------+
 * | nimi               | varchar   | Käyttäjän nimi           |
 * | slsjasennumero     | int       | SLS-jäsennumero          |
 * | puhelin            | varchar   | Puhelinnumero            |
 * | sahkoposti         | varchar   | Sähköpostiosoite         |
 * | syntymavuosi       | int       | Käyttäjän syntymävuosi   |
 * | sukupuoli          | varchar   | Käyttäjän sukupuoli      |
 * | tunniste           | varchar   | Käyttäjätunnus           |
 * | vahvistus          | varchar   | Vahvistuskoodi           |
 * | vahvistuslahetetty | timestamp | Vahvistuskoodi lähetetty |
 * | tila               | varchar   | Käyttäjän "taso"         |
 * | lisatty            | timestamp | Käyttäjän lisätty        |
 * </pre>
 * _kayttajatunnistus_
 * <pre>
 * +--------------------+-----------+----------------------------------+
 * | Sarake             | Tyyppi    | Selitys                          |
 * +--------------------+-----------+----------------------------------+
 * | kayttaja           | varchar   | Viiteavain käyttäjätauluun       |
 * | tyyppi             | varchar   | Tunnistustyyppi                  |
 * | salaisuusavain     | varchar   | Salasanan hash tai google id     |
 * | salaisuus          | varchar   | Salasana tai Setec Astronomy     |
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
class SLSUSERS {
   /** @var handle Database handle **/
    private $db;
    /** @var object SLS Database **/
    private $dbc;
    
    /**
     * Constructor
     * @param object $db Database-handle
     * */
    public function __construct($db) {
        $this->db = $db->getHandle();
        $this->dbc = $db;
        
    }
    /**
     * @param int $id Google identifier
     * @return boolean|array False if id was not found otherwise user data as array.
     * */
    public function fetchWithGoogleId($id) {
        try {
            $s = "select * from Kayttaja as k join KayttajaTunnistus as kt
            on (k.Tunniste = kt.Kayttaja and kt.tyyppi='Google' and Salaisuusavain=:id)";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("id"=>$id));
            if($res===false)
                return $res;
            if($st->rowCount()==0)
                return false;
            $r = $st->fetch(PDO::FETCH_BOTH);
            return $r;            
        }
        catch(PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
    /**
     * @param string $userid Userid
     * @param string $type Boolean or json result
     * @return mixed existense of userid either in boolean or in json
     * **/
    public function checkUser($userid, $type="boolean") {
        try {
            $s = "select Tunniste from Kayttaja where Tunniste=:userid;";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("userid"=>$userid));
            if($res===false || $st->rowCount()==0) {
                $res = false;
            } else {
                $res = true;
            }
            switch($type) {
                case "boolean":
                    return $res;
                default :
                    $res = array("result"=>$res);
                    return json_encode($res);
            }
        } catch(PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
    /**
     * Checks to see if given membership number is in use
     * 
     * @param int $jasennumero Membership number to be checked
     * @param string $type Boolean or json result
     * @return mixed existense of membership number in boolean or in json
     * **/
    public function checkMember($jasennumero, $type="boolean") {
        try {
            $s = "select Tunniste from Kayttaja where SLSjasenNumero=:jasennumero and tila<>'lainaaja';";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("jasennumero"=>$jasennumero));
            if($res===false || $st->rowCount()==0) {
                $res = false;
            }
            else
                $res = true;
            switch($type) {
                case "boolean" :
                    return $res;
                default:
                    $res = array("result"=>$res);
                    return json_encode($res);
            }
        }
        catch(PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
    /**
     * This "insert user" is meant for actually inserting someone into Kayttaja table
     * there is a higher level funtion insertMember that processes full user data
     * @param array $user data to be insterted
     * @return boolean
     * */
    public function insertUser ($user) {                        
            $s = "insert into Kayttaja (Nimi, SLSJasenNumero, Puhelin, Sahkoposti,
            syntymavuosi, Sukupuoli, Tunniste, Tila) values
            (:nimi, :numero, :puhelin, :email, :syntymavuosi, :sukupuoli, :tunniste, :tila);";
            
            if(!isset($user['tila']))
                $user['tila']="prospekti";
            
            $d = array("nimi"=>$user['nimi'],
                       "puhelin"=>$user['puhelin'],
                       "email"=>$user['sahkoposti'],
                       "syntymavuosi"=>$user['syntymavuosi'],
                       "sukupuoli"=>$user['sukupuoli'],
                       "tunniste"=>$user['ktunnus'],
                       "tila"=>$user['tila']);
            
            
            if(!isset($user['jasennumero']) || $user['jasennumero']=='' || !preg_match("/[123456789][0-9]+/", $user['jasennumero'])){
                $s = "insert into Kayttaja (Nimi, SLSJasenNumero, Puhelin, Sahkoposti, syntymavuosi, Sukupuoli, Tunniste, Tila) values
                (:nimi, nextval('pseudojasen'), :puhelin, :email, :syntymavuosi, :sukupuoli, :tunniste, :tila);";
            } else {
                $d["numero"]=$user['jasennumero'];
            }
            try {
                $st = $this->db->prepare($s);
                $res = $st->execute($d);
                $this->dbc->log("Added user {$user["nimi"]}/{$user["tunniste"]}",__FILE__,
                               __CLASS__, __LINE__, "AUDIT");
                return $res;
            }
            catch(PDOException $e) {
                die("Programming error: {$e->getMessage()}");
            }
        
        
    }
    
    /**
     * @param array $ident User identity information
     * @return boolean
     * */
    public function insertTunniste($ident) {
        $s = "insert into KayttajaTunnistus (Kayttaja, Tyyppi, Salaisuusavain, Salaisuus)
        values (:Kayttaja, :Tyyppi, :Salaisuusavain, :Salaisuus);";
        try {
            $st = $this->db->prepare($s);
            $res = $st->execute($ident);
            $this->dbc->log("Added ident {$ident["tunniste"]}/{$ident["tyyppi"]}",__FILE__,
                               __CLASS__, __LINE__, "AUDIT");
                
            return $res;
        }
        catch(PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
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
     * @param array $user User details
     * @param array $ident Identification details
     * @return boolean
     * @uses insertUser insertTunniste salakala SLSMail
     * */
    public function addMember($user, $ident) {
        try {
            global $baseurl;
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
            if(!$this->insertUser($user))
                return false;
            if(!$this->insertTunniste($d)) {
                $s = "delete from Kayttaja where Tunniste=:tunniste;";
                $st = $this->db->prepare($s);
                $st->execute(array("tunniste"=>$user['ktunnus']));
                return false;
            }
            $vahviste = openssl_random_pseudo_bytes(5);
            $vahvistus = openssl_digest($vahviste, "sha256");
            $s = "update Kayttaja set Vahvistus=:vahvistus, VahvistusLahetetty=now() where Tunniste=:tunniste;";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("vahvistus"=>$vahvistus, "tunniste"=>$user['ktunnus']));
            $message="Vahvistuslinkki: $baseurl/vahvistus.php?vahviste=$vahvistus";
            $to = $user['sahkoposti'];
            $subject = "Vahvista pelikirjastojäsenyytesi";
            $headers = "From: webmaster@claymountain.com\r\nReply-To: mos@iki.fi";
            return SLSMail($to, $subject, $message, $headers);            
        }
        catch(PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
    /**
     * Salasanan vaihtaminen
     * @param string $kayttajatunnus Käyttäjätunnus, jonka salasanaa vaihdetaan
     * @param string $salasana, Salasana, johon vaihdetaan
     * @return boolean False jos epäonnistui, True jos onnistui
     * */
    public function vaihdaSalasana($kayttajatunnus, $salasana) {
        try {
            $s = "update KayttajaTunnistus set salaisuusavain=:Salaisuusavain, salaisuus=:Salaisuus where kayttaja=:kayttajatunnus and tyyppi='local';";
            $d = $this->salakala($salasana);
            $d["kayttajatunnus"]=$kayttajatunnus;
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
            return $res;
        } catch(PDOException $e) {
            die("Ohjelmointivirhe {$e->getMessage()}");
        }
    }
    
    /**
     * Confirm
     * @param string $vahviste Confirmation string
     * @return boolean true if confirmed false if failed
     * */
    public function confirm($vahviste) {
        try {
            $s = "update kayttaja set tila='käyttäjä', vahvistus='', vahvistuslahetetty=null where tila='prospekti' and vahvistuslahetetty + interval '1 day' > now() and vahvistus=:vahviste;";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("vahviste"=>$vahviste));
            $this->dbc->log("Confirmed {$vahviste}",__FILE__,
                               __CLASS__, __LINE__, "AUDIT");
                
            if($st->rowCount()==1)
                return true;
            return false;
        }
        catch (PDOException $e) {
            die("Programmming error: {$e->getMessage()}");
        }
        
    }
    
    /**
     * Login with local database based authentication
     * @param string $salasana password
     * @param string $ktunnus User id
     * @return boolean;
     * */
    public function checkLocalAuth($salasana, $ktunnus) {
        try {
            $s = "select salaisuusavain, salaisuus from kayttajatunnistus where kayttaja=:kayttaja and tyyppi='local';";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("kayttaja"=>$ktunnus));
            if($res===false)
                return false;
            $row = $st->fetch();
            
            $suola = base64_decode($row["salaisuusavain"]);
            $salasana = openssl_digest($suola.$salasana, "sha256");
            if($row["salaisuus"]!=$salasana)
                return false;
            return true;
                            
        }
        catch (PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
    /**
     * Haku käyttäjätunnuksella
     * Käytetään ensisijaisesti paikallisessa sisäänkirjautumisessa
     * @param string $ktunnus Käyttäjätunnus, jota haetaan
     * @return array Palauttaa käyttäjän tiedot
     * */
    public function fetchWithTunnus($ktunnus) {
        try {
            $s = "select * from kayttaja where tunniste=:tunniste;";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("tunniste"=>$ktunnus));
            if($res===false)
                return false;
            $row = $st->fetch();
            return $row;
        }
        catch(PDOException $e) {
            die(sprintf(_("Ohjelmointivirhe: %s"),$e->getMessage()));
        }
    }
    
    /**
     * Fetch all users from the database
     * @return all rows as an array
     * */
    public function getUsers() {
        try {
            $s = "select * from kayttaja;";
            $st = $this->db->prepare($s);
            $res = $st->execute();
            if($res===false)
                return false;
            $rows = $st->fetchAll();
            return $rows;
        }
        catch(PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
    /**
     * Searches users with regexp against one of the allowed search fields.
     * Allowed fields can be found from $fields-array.
     * @param string/regexp $Rex regexp to match against
     * @param string $Field whose contents are searched
     * @return mixed False if nothing was found or an array of matched rows
     * */
    public function findWithRex($Rex, $Field) {
        try {
            $fields = array("Nimi", "SLSjasenNumero", "Puhelin", "Sahkoposti", "syntymavuosi", "sukupuoli", "Tunniste", "Tila", "lisatty");
            $match=false;
            foreach($fields as $f) {
                if($f==$Field)
                    $match=true;
            }
            if($match===false) {
                return false;
            }
            if($Field=="syntymavuosi")
                $op = "=";
            else
                $op = "~*";
            $s = "select * from kayttaja where $Field $op :rex;";
            $st = $this->db->prepare($s);
            $d = array("rex"=>$Rex);
            $res = $st->execute($d);
            if(!$res || $st->rowCount()==0) {
                return false;
            }
           
            $rows = $st->fetchAll();
            if(!is_array($rows))
                $rows = array("0"=>$rows);
            return $rows;
        }
        catch(PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
    /**
     * Finds users with partial name
     * @param string $part Part to be searched
     * @return mixed false if none was found or an array of matched users - max 5
     * */
    public function searchWithNamePart($part) {
        try {
            $part.='%';
            $s = "select nimi, tunniste from kayttaja where nimi ilike :part limit 5;";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("part"=>$part));
            if($res===false)
                return false;
            $rows = $st->fetchAll(PDO::FETCH_ASSOC);
            if(!is_array($rows))
                $rows = array($row);
            return $rows;
        }
        catch (PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
    /**
     * Matches users with parts of username. Returns first 10 matches
     * @param string $part Part to be searched with
     * @return mixed False if none was found or an array of at most 10 matches
     * */
    public function searchWithTunnistePart($part) {
        try {
             $part.='%';
            $s = "select tunniste from kayttaja where tunniste ilike :part limit 10;";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("part"=>$part));
            if($res===false)
                return false;
             $rows = $st->fetchAll(PDO::FETCH_ASSOC);
            if(!is_array($rows))
                $rows = array($row);
            return $rows;
        }
        catch (PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
    /**
     * Search users with partial membership number
     * @param string $part Part of membership number to look for
     * @return mixed False if none was found or an array of matches max 10 matches
     * */
    public function searchWithJasennumeroPart($part) {
        try {
             $part.='%';
            $s = "select slsjasennumero from kayttaja where slsjasennumero ilike :part limit 10;";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("part"=>$part));
            if($res===false)
                return false;
             $rows = $st->fetchAll(PDO::FETCH_ASSOC);
            if(!is_array($rows))
                $rows = array($row);
            return $rows;
        }
        catch (PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
    /**
     * Lainausnäytön käyttäjähaku
     * @param string $kentta Millä kentällä haetaan
     * @param string $arvo Mitä arvoa haetaan
     * @return mixed false jos ei löytynyt, muutoin löytyneet rivit, yleensä yksi
     * */
    public function lainausCheck($kentta, $arvo) {
        try {
            $s = "select nimi, tunniste, slsjasennumero from kayttaja where ";
            switch($kentta) {
                case "nimi":
                    $s.=" nimi=:value";
                    break;
                case "slsjasennumero":
                    $s.=" slsjasennumero=:value";
                    break;
                case "tunniste":
                    $s.="tunniste=:value";
                    break;
                default :
                    return false;
            }
            
            $st = $this->db->prepare($s);
            $res = $st->execute(array("value"=>$arvo));
            if($res===false)
                return false;
            
             $rows = $st->fetchAll(PDO::FETCH_ASSOC);
             
            if(!is_array($rows))
                $rows = array($row);
            return $rows;
        }
        catch (PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
      /**
     * Haku datatablesia varten
     * @param int $start Rivi, jolta alkaen palautetaan
     * @param int $length Kuinka munta riviä palautetaan
     * @param string $order järjestysehto DANGER WILL ROBINSSON!
     * @param string $search "globaali" hakuehto
     * @return array lkm, montako riviä saatiin - ei tarvita
     * kayttajat, rivit jotka saatiin
     * riveja, montako riviä kannassa kaiken kaikkiaan on
     * filtered, montako riviä kannassa on hakuehdolla kaiken kaikkiaan
     * */
    public function tableFetch($start, $length, $order, $search) {
        try {
            $ds = false;
            $tulos = array("lkm"=>0, "kayttajat"=>array(), "riveja"=>0, "filtered"=>0);
            $so="";
            $v="";
            if(isset($search["value"])) {
                $v = $search["value"];
                $so = "where (nimi ~* :v or tunniste ~* :v)";
                $ds = true;
            }
            $base="select nimi, tunniste, tila, lisatty, slsjasennumero, puhelin, sahkoposti, syntymavuosi, sukupuoli, vahvistus from kayttaja $so";
            $d = array("length"=>$length, "start"=>$start);
            if($order !== false) {
                $s = "$base order by $order limit :length offset :start;";              
            } else {
                $s = "$base limit :length offset :start;";
            }
            if($ds) 
                $d["v"]=$v;
            
            $m = "$s ($v)";
            $this->dbc->log($m, __FILE__, __CLASS__,__LINE__,"DEBUG");
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
            if(!$res || $st->rowCount()==0) {
                return $tulos;
            }
            $kayttajat = $st->fetchAll();
            $s = "select count(*) as lkm from kayttaja;";
            $st = $this->db->prepare($s);
            $res = $st->execute();
            if(!$res || $st->rowCount()==0) {
                return $tulos;
            }
            $row = $st->fetch();
            $tulos["lkm"]=$row["lkm"];
            $tulos["kayttajat"]=$kayttajat;
            $tulos["riveja"]=count($kayttajat);
            $tulos["filtered"]=$row["lkm"];
            if($ds) {
                $s = "select count(*) as lkm from kayttaja $so;";
                $st = $this->db->prepare($s);
                $res = $st->execute(array("v"=>$v));
                if($res && $st->rowCount()>0) {
		    $a=$st->fetch();
                    $tulos["filtered"]=$a["lkm"];
                }
            }
            return $tulos;
        }
        catch(PDOException $e) {
            die("Programming error: {$e->getMessage()}");
        }
    }
    
    /**
     * Käyttäjän tietojen päivittäminen
     * @param array $user - päivitettävät tiedot
     * @param boolean
     * @uses vaihdaSalasana
     * */
    public function update($user) {
        try {
            $d=array();
            $alku = "update kayttaja set ";
            $eka=true;
            $loppu = " where tunniste=:tunniste;";
            foreach($user as $k=>$v) {
                switch($k) {
                    case "salasana":
                        $this->vaihdaSalasana($user["tunniste"], $user["salasana"]);
                        break;
                    case "tunniste":
                        $d["tunniste"]=$v;
                        break;
                    case "nimi":
                    case "slsjasennumero":
                    case "puhelin":
                    case "sahkoposti":
                    case "syntymavuosi":
                    case "sukupuoli":
                    case "tila":
                        if(!$eka) {
                            $alku.=", ";
                        }
                        $eka=false;
                        $alku.="$k=:$k";
                        $d[$k]=$v;
                        break;
                }
            }
            $s=$alku.$loppu;
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
            $this->dbc->log("Päivitettiin käyttäjän {$user["tunniste"]} tietoja", __FILE,
                            __METHOD__,__LINE__,"AUDIT");
            return $res;
        }
        catch(PDOException $e) {
            die("Ohjelmointivirhe {$e->getMessage()}");
        }
    }
}
?>
