<?php
class vLogin extends vPage {
    protected $myvars;
    
    public function __construct($twig, &$t, &$conf) {
        global $url, $db, $basepath, $baseurl;
        parent::__construct($twig, $t, $conf);
        $myvars = array("Kirjaudu"=>_("Kirjaudu"),
                        "kayttajatunnus"=>_("Käyttäjätunnus"),
                        "salasana"=>_("Salasana"),
                        "rekisteroidy"=>_("Rekisteröidy"),
                        "error"=>isset($_REQUEST["virhe"]) ? true : false,
                        "errormsg"=>isset($_REQUEST["virhe"]) ? htmlspecialchars($_REQUEST["virhe"]) : "",
                        "localregister"=>"$baseurl/login/localRegister.php");
        $this->myvars = array_merge($this->variables, $myvars);
        $this->variables = $this->myvars;
    }
}
?>