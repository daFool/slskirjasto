<?php
class vRegister extends vPage {
    protected $myvars;
    
    public function __construct($twig, $kumpi) {
        global $url, $db, $basepath, $baseurl;
        parent::__construct($twig);
        $vals = array("ktunnus", "nimi", "puhelin", "email", "syntymavuosi", "jasennumero");
        $f=array();
        foreach($vals as $v) {
            $f[$v]=isset($_REQUEST[$v]) ? sprintf("value=\"%s\"",str_replace('"','',htmlspecialchars($_REQUEST[$v]))) :"";
        }
        $f["sukupuoli"]=isset($_REQUEST["sukupuoli"]) ? htmlspecialchars($_REQUEST["sukupuoli"]) : "";
        $su = array(
                    array("arvo"=>"E", "teksti"=>_("Ei tiedossa")),
                    array("arvo"=>"O", "teksti"=>_("Oma valinta")),
                    array("arvo"=>"M", "teksti"=>_("Mies")),
                    array("arvo"=>"N", "teksti"=>_("Nainen")));
        
        $myvars = array("kaytossa"=>_("Käytössä"),
                        "rekisteroityminen"=>_("Rekisteröityminen"),
                        "vapaa"=>_("Vapaa"),
                        "kohde"=>"",
                        "kayttajatunnus"=>_("Käyttäjätunnus:"),
                        "ktunnus_ohje"=>_("Käyttäjän yksilöllinen tunniste järjestelmässä, pakollinen. Max 255 merkkiä."),
                        "Nimi"=>_("Nimi:"),
                        "nimip"=>"Jaska Jokunen",
                        "nimi_ohje"=>_("Käyttäjän nimi, pakollinen. Max 255 merkkiä."),
                        "Puhelinnumero"=>_("Puhelinnumero:"),
                        "puhelin_ohje" => _("Käyttäjän puhelinnumero."),                         
                        "Sahkoposti"=>_("Sähköpostiosoite:"),
                        "sahkoposti_ohje"=>_("Käyttäjän sähköpostiosoite. Pakollinen."),
                        "Syntymavuosi"=>_("Syntymävuosi:"),
                        "syntymavuosi_ohje"=>_("Käyttäjän syntymävuosi."),
                        "Sukupuoli"=>_("Käyttäjän sukupuoli:"),
                        "sukupuoli_ohje"=>_("Valitse sukupuoli tai jätä valitsematta."),
                        "Jasennumero"=>_("Jäsennumero:"),
                        "jasennumero_ohje"=>_("Lautapeliseuran jäsennumero"),
                        "Salasana"=>_("Salasana:"),
                        "salasana_ohje"=>_("Kirjautumissalasana"),
                        "SalasanaU"=>_("Salasana uudestaan:"),
                        "talleta"=>_("Talleta"),
                        "nollaa"=>_("Nollaa"),
                        "rekisteroidy"=>_("Rekisteröidy"),
                        "error"=>isset($_REQUEST["virhe"]) ? true : false,
                        "errormsg"=>isset($_REQUEST["virhe"]) ? htmlspecialchars($_REQUEST["virhe"]) : "",
                        "kayttaja"=>$kumpi=="lainaaja" ? false : true,
                        "sukupuolet"=>$su,
                        "Onnistui"=>_("Vahvista rekisteröitymisesi"),
                        "lahetetty"=>_("Antamaasi sähköpostiosoitteeseen on lähetetty vahvistuslinkki, jolla tunnuksesi aktivoituu. "),
                        "Sulje"=>_("Sulje"));
        
        $myvars = array_merge($myvars, $this->variables);
        $myvars = array_merge($myvars, $f);
        $this->myvars=$myvars;
        $this->variables = $this->myvars;
    }
}
?>