<?php
class vPage {
    
    private $twig;
    protected $variables;
    protected $baseurl;
    protected $basepath;
    
    /**
     * Sivupohja
     *
     * @param object $twig Twig-objekti
     * @param &array $t Tekstit
     * @param object $conf Konfiguraatio
     * */
    public function __construct($twig, &$t, $conf) {       
        $this->twig = $twig;
        $v = array();
        $this->baseurl = $conf->get("General")["baseurl"];
        $this->basepath = $conf->get("General")["basepath"];
        
        /**
         * Pelivalikko
         * @var array $p
         * */
        $p = array("0"=>array("url"=>"$baseurl/controller/games/search", "teksti"=>$t["Pelihaku"]),
                   "1"=>array("url"=>"$baseurl/controller/tags", "teksti"=>$t["Tagit"]),
                   "2"=>array("url"=>"$baseurl/controller/reviews", "teksti"=>$t["Arviot"]),
                   "3"=>array("url"=>"$baseurl/congroller/games/reports", "teksti"=>$t["Peliraportit"]));
        
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
        $ko = array("0"=>array("url"=>"$baseurl/controller/collections/add", "teksti"=>$t["LisaaKokoelma"]),
                    "1"=>array("url"=>"$baseurl/controller/collections", "teksti"=>$t["YllapidaKokoelmia"]),
                    "2"=>array("url"=>"$baseurl/controller/collections/reports", "teksti"=>$t["Kokoelmaraportit"]));
        
        /**
         * Käyttäjäien ylläpito
         * @var array $s
         * */
        $s = array("0"=>array("url"=>"$baseurl/controller/users", "teksti"=>$t["Kayttajat"]),
                   "1"=>array("url"=>"$baseurl/controller/customers/import", "teksti"=>$t["SLSLainaajat"]));
        
        $y = array("0"=>array("url"=>"$baseurl/controller/users/password", "teksti"=>$t["VaihdaSalasana"]));
        
        $rooli = $_SESSION['user']['tila']??"muggle";
 
        $tiedot="";
        $ladattu="";
        if($kirjautunut) {
            $nimi = $_SESSION['user']['nimi'];
            $nyt = new DateTime();
            $kuolee = new DateTime();
            $kuolee->setTimestamp(SESSION_TIMEOUT+time());
            $ladattu = sprintf($t["istuntotila"], $nyt->format('Y-m-d H:i:s'), $kuolee->format('Y-m-d H:i:s'));
        }
        
        $tl= array("baseurl"=>$this->baseurl,
                                 "pelitoiminnot"=>$p,
                                 "kirjautunut"=>$kirjautunut,
                                 "kirjautumiset"=>$k,
                                 "kokoelmat"=>$ko,
                                 "rooli"=>$rooli,
                                 "superit"=>$s,
                                 "yllapito"=>$y,
                                 "kirjautumistiedot"=>sprintf($t["kirjautumistiedot"], $nimi??"",$t["rooli"]),
                                 "ladattu"=>$ladattu,
                                 "basepath"=>$this->basepath,
                                 );
        $this->variables=array_merge($tl, $t);
    }
    
    public function nayta($sivu) {
        $this->twig->loadTemplate($sivu);
        echo $this->twig->render($sivu, $this->variables);
    }
    
    public function pelinTila($koritila) {
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