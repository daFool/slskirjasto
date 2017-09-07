<?php
class vKokoelmapelit extends vPage {
    protected $myvars;
    
    public function __construct($twig, &$t, $conf, $collection) {
        parent::__construct($twig, $t, $conf);
        $baseurl = $conf->get("General")["baseurl"];
        $m = array("collectiongamesJSON"=>$baseurl."/collectiongames?mode=tablefetch&collection=".$collection,
                   "kokoelma"=>$collection,
                   "lainaapeli"=>$baseurl."/lainat?mode=uusi&peli=",
                   "palautapeli"=>$baseurl."/lainat?mode=palauta&peli=",
                   "lisaapeli"=>$baseurl."/collectiongames?mode=uusi&collection=".$collection,
                   "poistapeli"=>$baseurl."/collectiongames?mode=poista&peli=",
                   "lisaakoriin"=>$baseurl."/kori?mode=lisaa",
                   "muokkaapeli"=>$baseurl."/collectiongames?mode=muokkaa&kokoelma=".$collection."&peli=",
                   "pelintiedot"=>$baseurl."/collectiongames?mode=pelitiedot&collection=".$collection,
                   "tarratulostus"=>$baseurl."/tarratulostus.php?koko=",
                   "ktunniste"=>$_REQUEST["peli"]??False,
                   "kayttajahaku"=>$baseurl."/kayttajat?mode=search",
                   "kokoelmanpelit"=> sprintf($this->variables["kokoelmanpelitt"], $collection) //htmlentities($collection, ENT_COMPAT|ENT_HTML5, 'UTF-8'))
                  );
        $this->myvars = array_merge($this->variables, $m);
        $this->variables = $this->myvars;
    }
}
?>