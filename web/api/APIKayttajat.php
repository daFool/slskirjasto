<?php
class APIKayttajat {
    private $users;
    
    public function __construct() {
        global $db;
        try {
            $this->users = new SLSUSERS($db);
            if(!$this->users) {
                die("WTF?");
            }
        }
        catch(Exception $e) {
            die("{$e->getMessage()}");
        }
        
    }
    /**
     * Etsintä tunnuksen osalla
     * @param string $what Mitä etsitään
     * @return json array suoraan selaimelle
     * */
    protected function taydennaKtunnus($what) {
        $result = $this->users->searchWithTunnistePart(urldecode($what));
        if($result === false)
            $result=array();
        else {
            $r = array();
           foreach($result as $r1) {
               array_push($r, $r1["tunniste"]);
           }
           $result=$r;
        }
        header("Content-type: application/json");
        echo json_encode($result);
        die();

    }
    
    /**
     * Etsintä nimen osalla
     * @param string $what Mitä etsitään
     * @return json array suoraan selaimelle
     * */
    protected function taydennaNimi($what) {
        $result = $this->users->searchWithNamePart(urldecode($what));
        if($result === false)
            $result=array();
        else {
            $r = array();
           foreach($result as $r1) {
               array_push($r, $r1["nimi"]." / ".$r1["tunniste"]);
           }
           $result=$r;
        }
        header("Content-type: application/json");
        echo json_encode($result);
        die();

    }
    
    private function jsonVirhe($teksti) {
        $tulos=json_encode(array("tulos"=>$teksti));
        header("Content-type: application/json");
        echo $tulos;
        die();
    }
    
    /**
     * Käsittelee $_POST taulukon
     * @param string $nimi mitä muuttujaa etsitään
     * @param mixed $default oletusarvo, jos ei löydy
     * @param boolean $pakollinen, onko pakollinen arvo
     * @param string $virhe, virheilmoitus, jos parametri puuttuu
     * @return mixed $_POST-arvo tai default-arvo
     * */
    private function processPOST($nimi, $default, $pakollinen, $virhe) {
        if(!isset($_POST[$nimi]) && $pakollinen)
            $this->jsonVirhe($virhe);
        return isset($_POST[$nimi]) && trim(urldecode($_POST[$nimi]))!="" ? urldecode($_POST[$nimi]) : $default;
    }
    
    /**
     * Uuden käyttäjän rekisteröityminen
     * @param string $ktunnus käyttäjätunnus, joka lisätään
     * Loput tiedot löytyvät $_POST-muuttujasta
     * @return json vastaus, joko OK tai virheilmoitusteksti
     * */
    protected function newUser($ktunnus) {
        global $db;
        
        if($ktunnus===false || $this->users->checkUser($ktunnus)) {
            $this->jsonVirhe(_("Käyttäjätunnus puuttuu tai on jo käytössä jollakulla"));            
        }
        $nimi = $this->processPOST("nimi", false, true, _("Käyttäjän nimi puuttuu."));
        $puhelin = $this->processPOST("puhelin", "", false,"");
        $numero = $this->processPOST("jasennumero", 0, false, "");
        if($numero>0 || $this->users->checkMember($numero)) {
            $this->jsonVirhe(_("Jäsennumero on käytössä toisella käyttäjällä!"));
        }
        $email = $this->processPOST("email",false, true, _("Sähköpostiosoite puuttuu."));
        $syntymavuosi = $this->processPOST("syntymavuosi",1, false, "");
        $sukupuoli = $this->processPOST("sukupuoli", "E", false, "");
        $salasana = $this->processPOST("salasana", "", true, _("Salasana puuttuu"));
        $salasana2 = $this->processPOST("salasana2", false, true, _("Salasana on annettava kahdesti"));
        if($salasana != $salasana2) {
            $this->jsonVirhe(_("Salasanat eivät täsmää."));
        }
        $tila="prospekti";
        $user = array("nimi"=>$nimi,
                      "puhelin"=>$puhelin,
                      "sahkoposti"=>$email,
                      "syntymavuosi"=>$syntymavuosi,
                      "sukupuoli"=>$sukupuoli,
                      "ktunnus"=>$ktunnus,
                      "jasennumero"=>$jasennumero,
                      "salasana"=>$salasana,
                      "tila"=>$tila
                      );
        $ident = array("method"=>"local", "salasana"=>$salasana);
        $result = $this->users->insertUser($user);
        if(!$result) {
            $this->jsonVirhe(_("Käyttäjän lisääminen epäonnistui."));
            $db->log(_("Käyttäjän {$ktunnus} lisääminen epäonnistui."), __FILE__,__METHOD__,__LINE__,"ERROR");
        }
        $db->log(_("Käyttäjä {$ktunnus} {$nimi} rekisteröityi."),__FILE__,__METHOD__,__LINE__,"AUDIT");
        $tulos = "OK";
        $teksti = _("Antamaasi sähköpostiosoitteeseen on lähetetty vahvistuslinkki, jolla tunnuksesi aktivoituu.");
    
        header("Content-type: application/json");        
        echo json_encode(array("tulos"=>$tulos, "teksti"=>$teksti));
        die();
    }
   
    /**
     * Uuden lainaajan lisääminen
     * @param string $ktunnus käyttäjätunnus, joka lisätään
     * Loput tiedot löytyvät $_POST-muuttujasta
     * @return json vastaus, joko OK tai virheilmoitusteksti
     * */
    protected function newCustomer($ktunnus) {
        global $db;
        
        if($ktunnus===false || $this->users->checkUser($ktunnus)) {
            $this->jsonVirhe(_("Käyttäjätunnus puuttuu tai on jo käytössä jollakulla"));            
        }
        $nimi = $this->processPOST("nimi", false, true, _("Käyttäjän nimi puuttuu."));
        $puhelin = $this->processPOST("puhelin", "", false,"");
        $numero = $this->processPOST("jasennumero", 0, false, "");
        if($numero>0 || $this->users->checkMember($numero)) {
            $this->jsonVirhe(_("Jäsennumero on käytössä toisella käyttäjällä!"));
        }
        $email = $this->processPOST("email","", false, "");
        $syntymavuosi = $this->processPOST("syntymavuosi",1, false, "");
        $sukupuoli = $this->processPOST("sukupuoli", "E", false, "");
        $tila="lainaaja";
        $user = array("nimi"=>$nimi,
                      "puhelin"=>$puhelin,
                      "sahkoposti"=>$email,
                      "syntymavuosi"=>$syntymavuosi,
                      "sukupuoli"=>$sukupuoli,
                      "ktunnus"=>$ktunnus,
                      "jasennumero"=>$jasennumero,
                      "tila"=>$tila
                      );
        $ident = array("method"=>"local", "salasana"=>$salasana);
        $result = $this->users->insertUser($user);
        if(!$result) {
            $this->jsonVirhe(_("Käyttäjän lisääminen epäonnistui."));
            $db->log(_("Käyttäjän {$ktunnus} lisääminen epäonnistui."), __FILE__,__METHOD__,__LINE__,"ERROR");
        }
        $db->log(_("Käyttäjä {$ktunnus} {$nimi} rekisteröityi."),__FILE__,__METHOD__,__LINE__,"AUDIT");
        $tulos = "OK";
        $teksti = _("Lainaaja lisätty.");
        $d=$this->users->fetchWithTunnus($ktunnus);
        header("Content-type: application/json");        
        echo json_encode(array("tulos"=>$tulos, "teksti"=>$teksti, "ktunnus"=>$d["tunniste"], "nimi"=>$d["nimi"], "slsjasennumero"=>$d["slsjasennumero"]));
        die();
    }
   
    
    public function get($f3, $params) {
        switch($params["toiminta"]) {
            case "taydenna":
                switch($params["maare"]) {
                    case "ktunnus":
                        if(!isset($_GET["term"]))
                            $this->jsonVirhe(_("Haettava käyttäjätunnus puuttuu!"));
                        $this->taydennaKtunnus($_GET["term"]);
                        break;
                    case "lainaaja":
                    case "nimi":
                        if(!isset($_GET["term"]))
                            $this->jsonVirhe(_("Haettava nimi puuttuu!"));
                        $this->taydennaNimi($_GET["term"]);
                        break;
                }
                break;
            case "lainauscheck":
                if(!isset($_GET["term"]))
                    $this->jsonVirhe(_("Haettava termi puuttuu!"));
                $term = urldecode($_GET["term"]);
             
                switch($params["maare"]) {
                    case "lainaaja":
                    case "nimi":
                        if(strpos($term,"/")==false)
                            $this->jsonVirhe(_("Haettava nimi puuttuu!"));
                    
                        list($foo, $ktunnus)=explode("/",$term);
                        $ktunnus=trim($ktunnus);
                        $result = $this->users->lainausCheck("tunniste",$ktunnus);
                        break;
                    case "ktunnus":
                        $result = $this->users->lainausCheck("tunniste",$$term);
                        break;
                    case "slsjasennumero":
                        $result = $this->users->lainausCheck("slsjasennumero",$term);
                        break;
                    default:
                        $this->jsonVirhe(_("Tuntematon määre"));
                        break;
                }
                if($result == false || count($result)>1)
                    $result=array();
                header("Content-type: application/json");
                echo json_encode($result);
                die;                
        }
        $this->jsonVirhe(_("Valui lävitse, tuntematon pyyntö"));
    }
    
    
    function post($fs , $params) {
        switch($params["toiminta"]) {
            case "newUser":
                $this->newUser($params["maare"]);
                break;
            case "newCustomer":
                $this->newCustomer($params["maare"]);
                break;
        }
        $this->jsonVirhe(_("Valui lävitse, tuntematon pyyntö: {$params["toiminta"]}"));
    }
    function put() {}
    function delete() {}
}
?>