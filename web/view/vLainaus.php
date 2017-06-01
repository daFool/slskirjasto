<?php
class vLainaus extends vPage {
    protected $myvars;
    
    public function __construct($twig) {
        global $url, $db, $basepath, $baseurl;
        parent::__construct($twig);
        $this->myvars=array();
        $tarkistettu="false";
        
        $params = array("collection", "tunniste", "peli", "ktunnus", "vlainaaja", "slsjasennumero");
        foreach($params as $param) {
            if(isset($_REQUEST[$param])) {
                if($param=="tunniste")
                    $this->myvars["jaska"]=$_REQUEST[$param];
                $this->myvars[$param]=html_entity_decode(urldecode($_REQUEST[$param]));
                if($param=="ktunnus")
                    $tarkistettu="true";
            }
            else
                $this->myvars[$param]="";
        }
        $this->myvars["tarkistettu"]=$tarkistettu;
        $this->myvars["Kokoelma"]=_("Kokoelma");
        $this->myvars["Peli"]=_("Peli");
        $this->myvars["Kokoelmatunniste"]=_("Kokoelmatunniste");
        $this->myvars["Lainaaja"]=_("Lainaaja");
        $this->myvars["LainaajanNimi"]=_("Lainaajan nimi");        
        $this->myvars["Tunniste"]=_("Käyttäjätunnus");
        $this->myvars["Jasennumeroviivakoodi"]=_("Lautapeliseuran jäsennumero - viivakoodissa!");
        $this->myvars["KayttajaTunniste"]=_("Järjestelmän käyttäjätunnus.");
        $this->myvars["Pantti"]=_("Lainapantti");
        $this->myvars["Ajokortti"]=_("Ajokortti");
        $this->myvars["LainanPantti"]=_("Lainan pantti. Jokin jolla on arvoa enemmän kuin pelillä, ajokortti tms.");
        $this->myvars["Lisaa"]=_("Lisää");
        $this->myvars["uusi"]=_("uusi");
        $this->myvars["lainaaja"]=_("lainaaja");
        $this->myvars["Lainaa"]=_("Lainaa");
        $this->myvars["jasennumero"]=_("Jäsennumero");
        $this->myvars["Haetaan"]=_("Haetaan, hetki.");
        $this->myvars["LainausOnnistui"]=_("Lainaus onnistui.");
        $this->myvars["LainausFeilasi"]=_("Lainaus epäonnistui.");
        $this->myvars["Palaa"]=_("Palaa");
        $this->myvars["tSulje"]=_("Sulje");
        $this->variables=array_merge($this->variables, $this->myvars);        
    }
}
?>