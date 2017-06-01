<?php
class APILainat extends APIBase {
    private $lainat;
    
    public function __construct() {
        global $db;
        try {
            $this->lainat = new SLSLainat($db);
            if(!$this->lainat) {
                die("WTF?");
            }
        }
        catch(Exception $e) {
            die("{$e->getMessage()}");
        }
        
    }
        
    protected function lainaa($pelitunniste) {
        // käyttäjätunniste
        // kokoelma
        // pantti
        $kokoelma = $this->processPOST("kokoelma", "", true, _("Kokoelman nimi puuttuu!"));
        $lainaaja = $this->processPOST("lainaaja", "", true, _("Lainaajan käyttäjätunnus puuttuu!"));
        $pantti = $this->processPOST("pantti", "", true, _("Pantti puuttuu!"));        
        $tulos = $this->lainat->Lainaa($pelitunniste, $kokoelma, $lainaaja, $pantti);    
        header("Content-type: application/json");
        if($tulos) {
            echo json_encode(array("tulos"=>_("OK"), "teksti"=>_("Lainattu onnistuneesti")));
        } else
            echo json_encode(array("tulos"=>_("Virhe"), "teksti"=>_("Lainaus epäonnistui.")));
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
            case "lainaa":
                $this->lainaa($params["maare"]);
                break;            
        }
        $this->jsonVirhe(_("Valui lävitse, tuntematon pyyntö: {$params["toiminta"]}"));
    }
    function put() {}
    function delete() {}
}
?>