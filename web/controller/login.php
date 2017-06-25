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
}

?>