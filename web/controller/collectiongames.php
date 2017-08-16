<?php
class collectiongames extends controller {
     protected $t;
     
     public function __construct($f3) {
          $pdo = $f3->get("db");
          $conf = $f3->get("conf");
          $log = $f3->get("log");
          parent::__construct($conf, $pdo, $log);
          $this->a = array("tunniste", "nimi", "hylly", "paikka", "omistaja",  "tila");
          $basepath=$conf->get("General")["basepath"];
          require_once("$basepath/view/language.php");
          $this->t = $t;
    }
    
     public function get($f3) {
          $kokoelma = $_REQUEST["collection"]??False;
          if($kokoelma===False) {
               $f3->reroute($this->conf->get("General")["baseurl"]);
               die;
          }
          $g = new SLSCOLLECTIONGAMES($this->db, $this->log);
          $moodi = $_REQUEST["mode"]??"Page";
          switch($moodi) {
               case "Page":
                    $this->sivu($f3, $kokoelma);
                    break;
               case "tablefetch":                    
                    $g->setKokoelma($kokoelma);
                    $rivit = $this->tableFetch($g);
                    header("Content-type: application/json");
                    echo json_encode($rivit);
                    break;
               case "pelitiedot":
                    $rivi = $g->pelinTila($_REQUEST["id"]);
                    if($rivi===False) {
                         $result = array("Virhe"=>$this->t["EiPeliId"]);
                    } else {
                         $result = array("Virhe"=>"OK", "data"=>$rivi);
                    }                   
                    header("Content-type: application/json");
                    echo json_encode($result);
                    break;
          }
     }
     
     protected function sivu(&$f3, $kokoealma) {
          $conf = $f3->get("conf");
          $db=$f3->get("db");
          $log=$f3->get("log");
          $loader = new Twig_Loader_Filesystem($conf->get("Twig")["twigTemplates"]);
          $twig = new Twig_Environment($loader);
          $basepath = $conf->get("General")["basepath"];          
          $sivu = new vKokoelmapelit($twig, $this->t, $conf, $kokoealma);
          $sivu->nayta("kokoelmapelit.html");    
     }
    
}
?>