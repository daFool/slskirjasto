<?php
/**
 * @author Mauri "mos" Sahlberg <mauri.sahlberg@gmail.com>
 * @license Apache License, Version 2.0 https://opensource.org/licenses/Apache-2.0
 * @copyright Copyright Mauri Sahlberg 2018, Helsinki
 * */

namespace SLS;

/**
 * Sivun esittäminen
 *
 * Kaikkille sivuille yhteiset käyttöliittymäkomponentit
 * */
class vPage {
    
    /**
     * @var Twig_Environment $twig Twig-template engine
     * */
    private $twig;
    /**
     * @var array $variables Templaten muuttujat
     * */
    protected $variables;
    /**
     * @var string $baseurl Sivuosoitteen alkuosa
     * */
    protected $baseurl;
    
    /**
     * @var string $basepath Tiedostojärjestelmän polku
     * */
    protected $basepath;
    
    /**
     * @var mosBase\config Konfiguraatio
     * */
    protected $conf;
    
    /**
     * Sivupohja
     *
     * @param Twig_Environment  $twig Twig-objekti
     * @param &array            $t Tekstit
     * @param \mosBase\Config   $conf Konfiguraatio
     * */
    public function __construct(\Twig_Environment $twig, array &$t, \mosBase\Config $conf) {       
        $this->twig = $twig;
        $v = array();
        $this->baseurl = $conf->get("General")["baseurl"];
        $this->basepath = $conf->get("General")["basepath"];
        $this->conf=$conf;    
        /**
         * Pelivalikko
         * @var array $p
         * */
        $p = array("0"=>array("url"=>"{$this->baseurl}/controller/games/search", "teksti"=>$t["Pelihaku"]),
                   "1"=>array("url"=>"{$this->baseurl}/controller/tags", "teksti"=>$t["Tagit"]),
                   "2"=>array("url"=>"{$this->baseurl}/controller/reviews", "teksti"=>$t["Arviot"]),
                   "3"=>array("url"=>"{$this->baseurl}/congroller/games/reports", "teksti"=>$t["Peliraportit"]));
        
        $kirjautunut = isset($_SESSION["loggedin"]) ? $_SESSION["loggedin"] : false;
        
        /**
         * Kirjautumisvalikko
         * @var array $k
         * */
        $k = array("0"=>array("url"=>$this->baseurl."/login?method=local", "teksti"=>$t["LoginPaikallinen"]),
                   "1"=>array("url"=>$this->baseurl."/login?method=google", "teksti"=>$t["LoginGoogle"]));
        
        /**
         * Kokoelmavalikko
         * @var array $ko
         * */
        $ko = array("0"=>array("url"=>"{$this->baseurl}/controller/collections/add", "teksti"=>$t["LisaaKokoelma"]),
                    "1"=>array("url"=>"{$this->baseurl}/controller/collections", "teksti"=>$t["YllapidaKokoelmia"]),
                    "2"=>array("url"=>"{$this->baseurl}/controller/collections/reports", "teksti"=>$t["Kokoelmaraportit"]));
        
        /**
         * Käyttäjien ylläpito
         * @var array $s
         * */
        $s = array("0"=>array("url"=>"{$this->baseurl}/kayttajat?mode=page", "teksti"=>$t["Kayttajat"]),
                   "1"=>array("url"=>"{$this->baseurl}/kayttajat?mode=import", "teksti"=>$t["SLSLainaajat"]),
                   "2"=>array("url"=>"{$this->baseurl}/kortit?mode=page", "teksti"=>$t["Kortit"]));
        
        $y = array("0"=>array("url"=>"{$this->baseurl}/kayttajat?mode=password", "teksti"=>$t["VaihdaSalasana"]));
        
        $rooli = $_SESSION['user'][SLSUSERS::KÄYTTÄJÄTASO]??SLSUSERS::VOLDEMORT;
 
        $tiedot="";
        $ladattu="";
        if($kirjautunut) {
            $nimi = $_SESSION['user'][SLSUSERS::NIMI];
            $nyt = new \DateTime();
            $kuolee = new \DateTime();
            $kuolee->setTimestamp($this->conf->get("Session")["SESSION_TIMEOUT"]+time());
            $ladattu = sprintf($t["istuntotila"], $nyt->format('Y-m-d H:i:s'), $kuolee->format('Y-m-d H:i:s'));
            $kirjatumistiedot = sprintf($t["kirjautumistiedot"], $nimi, _($rooli));            
        }
        
        $tl= array("baseurl"=>$this->baseurl,
                                 "pelitoiminnot"=>$p,
                                 "kirjautunut"=>$kirjautunut,
                                 "kirjautumiset"=>$k,
                                 "kokoelmat"=>$ko,
                                 "rooli"=>$rooli,
                                 "superit"=>$s,
                                 "yllapito"=>$y,
                                 "ladattu"=>$ladattu,
                                 "basepath"=>$this->basepath,                                 
                                 );
        $this->variables=array_merge($tl, $t);
        $this->variables["kirjautumistiedot"]=$kirjatumistiedot;
        
    }
    
    /**
     * Sivun näyttäminen twigillä
     * @param string $sivu Sivutemplate-tiedoston nimi
     * */
    public function nayta($sivu) {
        $this->twig->loadTemplate($sivu);
        echo $this->twig->render($sivu, $this->variables);
    }
    
    /**
     * Pelin tilatiedot korista
     * @param boolean $koritila ovatko tiedot korista
     * @todo Onko tämä metodi tarpeen ja kuuluukohan se ylipäätänsä tänne?
     * */
    public function pelinTila(boolean $koritila) {
        $this->variables["jsonPelinTila"]="$baseurl/json/json_pelinTila.php";
        $this->variables["tPelinTiedot"]=_("Pelin tiedot");
        $this->variables["tLainattu"]=_("Lainattu");
        $this->variables["tLainaaja"]=_("Lainaaja");
        $this->variables["tPalautumishetki"]=_("Arvioitu palautumishetki");
        $this->variables["tLokaatio"]=_("Hylly / Paikka / Laatikko");
        $this->variables["tPeli"]=_("Peli");
        $this->variables["tJulkaisija"]=_("Julkaisija");
        $this->variables["tVuosi"]=_("Vuosi");
        $this->variables["tSuunnittelija"]=_("Suunnittelija");
        $this->variables["tKesto"]=_("Kesto");
        $this->variables["tPelaajia"]=_("Pelaajia");
        $this->variables["tBGG"]=_("BGG");
        $this->variables["tBGGRank"]=_("BGG Rank");
        $this->variables["tBGGScore"]=_("BGG Score");
        $this->variables["tAge"]=_("Ikä");
        $this->variables["tLainaa"]=_("Lainaa");
        $this->variables["tPalauta"]=_("Palauta");
        $this->variables["tPoista"]=_("Poista");
        $this->variables["tDeaktivoi"]=_("Deaktivoi");
        $this->variables["tPoistaKorista"]=_("Poista korista");
        $this->variables["tMuokkaa"]=_("Muokkaa");
        $this->variables["tKoriin"]=_("Koriin");
        $this->variables["tSulje"]=_("Sulje");
        if($koritila) {
            $this->variables["koritila"]==true;
        }
        else
            $this->variables["koritila"]=false;
    }
}
?>