<?php
class login extends controller {
    public function __construct($f3) {
        $pdo = $f3->get("db");
        $conf = $f3->get("conf");
        $log = $f3->get("log");
        parent::__construct($conf, $pdo, $log);
    }
    
    public function get($f3) {
        $method = $_REQUEST["method"]??"local";
        if($method=="local") {
            $loader = new Twig_Loader_Filesystem($this->conf->get("Twig")["twigTemplates"]);
            $twig = new Twig_Environment($loader);
            $basepath = $this->conf->get("General")["basepath"];
            require_once("$basepath/view/language.php");
            $sivu = new vLogin($twig, $t, $this->conf);
            $sivu->nayta("login.html");     
        }
    }
    
    public function post($f3) {
        $salasana = $_POST['salasana']??false;
        $ktunnus = $_POST['ktunnus']??false;
        $baseurl = $this->conf->get("General")["baseurl"];
        $basepath = $this->conf->get("General")["basepath"];
        require("$basepath/view/language.php");
        if($salasana===false || $ktunnus===false) {
            $virhe = sprintf("%s/login?virhe=%s",$baseurl,$t["ktunnustaisalasanapuuttuu"]);
            $f3->reroute($virhe);
            die;
        }
    
        $users = new SLSUSERS($this->db, $this->log);
        if($users->checkLocalAuth($salasana, $ktunnus)===false) {
            $virhe = sprintf("%s/login?virhe=%s", $baseurl, $t["ktunnustaisalasanavaarin"]);
            $f3->reroute($virhe);
            die;
        }
        $_SESSION["loggedin"]=true;
        $_SESSION["user"]=$users->fetchWithTunnus($ktunnus);
        if($_SESSION['user']===false) {
            $m = sprintf($t["kayttajatiedotpuuttuvat"], $ktunnus);
            $this->log->log($ktunnus, $m, __FILE__, __FUNCTION__, __LINE__, "ERROR");
            die($m);
        }
        $this->log->log($ktunnus, sprintf($t["kayttajakirjautui"], $ktunnus),__FILE__,__FUNCTION__,__LINE__, "AUDIT");
        $f3->reroute($baseurl);
        die;
       
    }
}

?>