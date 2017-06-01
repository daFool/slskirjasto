<?php
class vPage {
    
    private $twig;
    protected $variables;
    
    /**
     * Sivupohja
     *
     * @param object $twig Twig-objekti
     * */
    public function __construct($twig) {
        global $url, $db, $basepath, $baseurl;
        
        $this->twig = $twig;
        $v = array();
        $v["baseurl"]=$baseurl;
        $t= array("ShowNav"=>_("Näytä navigaatio"),
                  "Lautapelikirjasto"=>_("Lautapelikirjasto"),
                  "Pelitoiminnot"=>_("Pelitoiminnot"),
                  "Etusivu"=>_("Etusivu"),
                  "Kirjaudu"=>_("Kirjaudu"),
                  "Ylläpito"=>_("Ylläpito"),
                  "Logout"=>_("Kirjaudu ulos"),
                  "Kori"=>_("Kori"),
                  "Kokoelmat"=>_("Kokoelmat")
                 );
        /**
         * Pelivalikko
         * @var array $p
         * */
        $p = array("0"=>array("url"=>"$baseurl/view/forms/gamesearch.php", "teksti"=>_("Pelihaku")),
                   "1"=>array("url"=>"#", "teksti"=>_("Tagit")),
                   "2"=>array("url"=>"#", "teksti"=>_("Arviot")),
                   "3"=>array("url"=>"#", "teksti"=>_("Peliraportit")));
        $kirjautunut = isset($_SESSION["loggedin"]) ? $_SESSION["loggedin"] : false;
        
        /**
         * Kirjautumisvalikko
         * @var array $k
         * */
        $k = array("0"=>array("url"=>"$baseurl/login/localLogin.php", "teksti"=>_("Paikallinen kirjautuminen")),
                   "1"=>array("url"=>$url, "teksti"=>_("Google kirjautuminen")));
        
        /**
         * Kokoelmavalikko
         * @var array $ko
         * */
        $ko = array("0"=>array("url"=>"$baseurl/view/forms/collection.php?method=add", "teksti"=>_("Lisää kokoelma")),
                    "1"=>array("url"=>"$baseurl/view/collectionyp.php", "teksti"=>_("Ylläpidä kokoelmia")),
                    "2"=>array("url"=>"#", "teksti"=>_("Kokoelmaraportit")));
        
        /**
         * Käyttäjäien ylläpito
         * @var array $s
         * */
        $s = array("0"=>array("url"=>"$baseurl/view/forms/kayttajat.php", "teksti"=>_("Käyttäjät")),
                   "1"=>array("url"=>"$baseurl/view/forms/lainaajat.php", "teksti"=>_("Tuo SLS-lainaajat")));
        
        $y = array("0"=>array("url"=>"$baseurl/view/forms/salasana.php", "teksti"=>_("Vaihda salasana")));
        $rooli = isset($_SESSION['user']['tila']) ? $_SESSION["user"]["tila"] : "jästi";
        $kp = new Kori($db);
        $kp->Koripallo();
 
        $tiedot="";
        $ladattu="";
        if($kirjautunut) {
            $nimi = $_SESSION['user']['nimi'];
            $nyt = new DateTime();
            $kuolee = new DateTime();
            $kuolee->setTimestamp(SESSION_TIMEOUT+time());
            $ladattu = sprintf(_("Ladattu %s, istunto päättyy %s"), $nyt->format('Y-m-d H:i:s'), $kuolee->format('Y-m-d H:i:s'));
        }
        
        $this->variables = array("baseurl"=>$baseurl,
                                 "T"=>$t,
                                 "pelitoiminnot"=>$p,
                                 "kirjautunut"=>$kirjautunut,
                                 "kirjautumiset"=>$k,
                                 "kokoelmat"=>$ko,
                                 "rooli"=>$rooli,
                                 "superit"=>$s,
                                 "yllapito"=>$y,
                                 "kirjautumistiedot"=>_("Olet kirjautunut nimellä:"),
                                 "nimi"=>isset($nimi) ? $nimi : "",
                                 "tasoteksti"=>_(" ja käyttäjätasosi on:"),
                                 "taso"=>$rooli,
                                 "ladattu"=>$ladattu,
                                 "basepath"=>$basepath,
                                 "tLengthMenu"=>_("Näytä _MENU_ riviä sivulla"),
                                 "tZeroRecords"=>_("Ei rivejä"),
                                 "tInfo"=>_("Sivu _PAGE_ / _PAGES_"),
                                 "tInfoEmpty"=>_("Ei rivejä"),
                                 "tInfoFiltered" => _("suodatettu, suodattamattomista _MAX_"),
                                 "tInfoPostFix" => _(""),
                                 "tloadingRecords" => _("Ladtaan..."),
                                 "tProcessing" => _("Käsitellään..."),
                                 "tSearch" => _("Hae:"),
                                 "tFirst" => _("Ensimmäinen"),
                                 "tLast" => _("Viimeinen"),
                                 "tNext" => _("Seuraava"),
                                 "tPrevious" => _("Edellinen"),
                                 "tSortAscending" => _(": aktivoi järjestääksesi nousevasti"),
                                 "tSortDescending" => _(": aktivoi järjestääksesi laskevasti")
                                 );
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