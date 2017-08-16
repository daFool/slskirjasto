<?php
$t = array(
    /**
     * twig_templates/page.html
     * */
    /**
     * Navigointi
     * */
    "ShowNav"=>_("Näytä navigaatio"),
    "Lautapelikirjasto"=>_("Lautapelikirjasto"),
    "Etusivu"=>_("Etusivu"),
    "Pelitoiminnot"=>_("Pelitoiminnot"),    
    "Kirjaudu"=>_("Kirjaudu"),
    "Yllapito"=>_("Ylläpito"),
    "Logout"=>_("Kirjaudu ulos"),
    "Kori"=>_("Kori"),
    "Kokoelmat"=>_("Kokoelmatoiminnot"),
    
    /**
     * Pelivalikko
     * */
    "Pelihaku"=>_("Pelihaku"),
    "Tagit"=>_("Tagit"),
    "Arviot"=>_("Arviot"),
    "Peliraportit"=>_("Peliraportit"),
    
    /**
     * Kirjautumisvalikko
     * */
    "LoginPaikallinen"=>_("Paikallinen kirjautuminen"),
    "LoginGoogle"=>_("Google kirjautuminen"),

    /**
    * Kokoelmavalikko
    * */
    "LisaaKokoelma"=>_("Lisää kokoelma"),
    "YllapidaKokoelmia"=>_("Ylläpidä kokoelmia"),
    "Kokoelmaraportit"=>_("Kokoelmaraportit"),
    
    /**
    * Käyttäjäien ylläpito
    * */
    "KayttajaToiminnot"=>_("Käyttäjätoiminnot"),
    "SLSLainaajat"=>("Tuo SLS-lainaajat"),
    "VaihdaSalasana"=>("Vaihda salasana"),
        
    /**
     * Käyttäjän rooli
     * */
    "taikaviitta"=>_("Superuser"),
    "admin"=>_("Admin"),
    "kayttaja"=>_("Käyttäjä"),
    "lainaaja"=>_("Lainaaja"),
    "muggle"=>_("Vieras"),
    
    /**
     * Istunnon tila
     * */
    "SessionStatus"=>_("Ladattu %s, istunto päättyy %s"),
    
    /**
     * Käyttäjän istunto
     * */
    "kirjautumistiedot"=>_("Olet kirjautunut nimellä: %s ja käyttäjätasosi on: %s"),
    "istuntotila"=>_("Istunto on ladattu: %s ja päättyy: %s"),
    
    /**
     * Taulukkojen navigaatiot (DataTables)
     * */
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
       "tSortDescending" => _(": aktivoi järjestääksesi laskevasti"),
       
    /**
     * Etusivu -> index.php
     * */
        "tPELI"=>_("Peli"),
        "tBGGRank"=>_("BGG rank"),
        "tBGG"=>_("BGG"),
        "tKesto" => _("Kesto"),
        "tPelaajia"=>_("Pelaajia"),
        "tVuosi"=>_("Vuosi"),
        "tKokoelmat"=>_("Kokoelmat"),
        "tKokoelma"=>_("Kokoelma"),
        "tLaji"=>_("Laji"),
        "tOmistaja"=> _("Omistaja"),
        "tTapahtuma"=>_("Tapahtuma"),
        "tLisatty"=>_("Lisätty"),
        "tPelit"=>_("Pelit"),
        
    /**
     * Virheilmoituksia, login
     * */
        "ktunnustaisalasanapuuttuu"=>_("Käyttäjätunnus tai salasana puuttui."),
        "ktunnustaisalasanavaarin"=>_("Käyttäjätunnus tai salasana oli väärin."),
        "kayttajatiedotpuuttuvat" => _("Käyttäjä %s kirjautui, muttei käyttäjätietoja"),
        "kayttajakirjautui" => _("Käyttäjä %s kirjautui paikallisesti."),
        "vahvistuslinkki" => _("Vahvistuslinkki: %s"),
        "vahvistajasenyys" => _("Vahvista pelikirjastojäsenyytesi"),
   /**
    * Salasanan vaihtaminen
    * */
   "vaihdasalasanakaytto"=>_("vaihdaSalasana <käyttäjätunnus> <salasana> (%d)\n"),
   "salasanavaihdettucmd"=>_("Salasanan vaihtaminen onnistui %s %s\n"),
   
   /**
    * Pelikokoelman pelit
    * */
   "poistettueilainata" => _("Poistettua peliä ei voi palauttaa tai lainata."),
   "lainattuaeivoideaktivoida" => _("Lainassa olevaa peliä ei voi deaktivoida. Palauta peli ensin."),
   "deaktivoitupeli" => _("Poistettua peliä ei voi poistaa uudestaan."),
   "lisataankoriin" => _("Lisätään koriin, hetkinen..."),
   "lisattiinkoriin" => _("Lisätty onnistuneesti."),
   "eilisattykoriin" => _("Lisäys epäonnistui."),
   "lainattuaeivoimuokata" => _("Lainassa olevaa peliä ei voi muokata. Palauta peli ensin."),
   "kokoelmanpelitt"=> _("Kokoelman %s pelit"),
   "pelitunniste" => _("Kokoelmatunniste"),
   "pelinimi" => _("Nimi"),
   "hylly" => _("Hylly"),
   "paikka" => _("Paikka"),
   "omistaja" => _("Omistaja"),
   "pelintila" => _("Tila"),
   "lisaa" => _("Lisää"),
   "tarrat" => _("Tarrat"),
   "tPalauta" => _("Palauta"),
   "tLainaa" => _("Lainaa"),
   "tPelinTiedot" => _("Pelin tiedot"),
   "tLainattu" => _("Lainattu"),
   "tLainaaja" => _("Lainaaja"),
   "tPalautumishetki" => _("Palautumisarvio"),
   "tLokaatio" => _("Sijainti"),
   "tPeli" => _("Peli"),
   "tJulkaisija" => _("Julkaisija"),
   "tVuosi" => _("Vuosi"),
   "tSuunnittelija" => _("Suunnittelija"),
   "tKesto" => _("Kesto"),
   "tPelaajia" => _("Pelaajia"),
   "tBGG" => _("BGG"),
   "tBGGRank" => _("BGG Rank"),
   "tBGGScore" => _("BGG Score"),
   "tAge" => _("BGG Age"),
   "tPoistaKorista" => _("Poista korista"),
   "tPoista" => _("Poista"),
   "tMuokkaa" => _("Muokkaa"),
   "tKoriin" => _("Koriin"),
   "tSulje" => _("Sulje"),
   "EiPeliId" => _("Peliä annetulla id:llä ei löytynyt."),
   
   /**
    * Lainaus
    * */
   "Kokoelma" => _("Kokoelma"),
   "Lainaaja"=> _("Lainaaja"),
   "LainaajanNimi" => _("Lainaajan nimi"),
   "kayttajatunnus" => _("Käyttäjätunnus"),
   "Jasennumeroviivakoodi" => _("Lautapeliseuran jäsennumero - viivakoodista!"),
   "KayttajaTunniste" => _("Järjestelmän käyttäjätunnus."),
   "Pantti" => _("Lainapantti"),
   "Ajokortti" => _("Ajokortti"),
   "LainanPantti" => _("Lainan pantti. Jokin, jolla on arvoa enemmän kuin pelillä, ajokortti tms."),
   "Lisaa" => _("Lisää"),
   "UusiLainaaja" => _("UusiLainaaja"),
   "Jasennumero" => _("Jäsennumero"),
   "Haetaan" => _("Haetaan, hetkinen..."),
   "LainausOnnistui"=> _("Lainaus onnistui."),
   "LainausFeilasi"=> _("Lainaus epäonnistui."),
   "Palaa" => _("Palaa"),
   "Sulje" => _("Sulje"),
   
   
);
                   
?>