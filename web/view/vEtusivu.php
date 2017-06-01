<?php
class vEtusivu extends vPage {
    protected $myvars;
    
    public function __construct($twig) {
        global $url, $db, $basepath, $baseurl;
        parent::__construct($twig);
        $m = array("gamesJSON"=>"$baseurl/json/json_games.php",
                   "kokoelmatJSON"=>"$baseurl/json/json_collections.php",
                   "collectionMain"=>"$baseurl/collection_main.php",
                   "tPELI"=>_("Peli"),
                   "tBGGRank"=>_("BGG rank"),
                   "tBGG"=>_("Kesto"),
                   "tPelaajia"=>_("Pelaajia"),
                   "tVuosi"=>_("Vuosi"),
                   "tKokoelmat"=>_("Kokoelmat"),
                   "tKokoelma"=>_("Kokoelma"),
                   "tLaji"=>_("Laji"),
                   "tOmistaja"=> _("Omistaja"),
                   "tTapahtuma"=>_("Tapahtuma"),
                   "tLisatty"=>_("Lisätty"),
                   "tPelit"=>_("Pelit")
                   );
        $this->myvars = array_merge($this->variables, $m);
        $this->variables = $this->myvars;
    }
}
?>