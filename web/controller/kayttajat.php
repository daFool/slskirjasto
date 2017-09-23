<?php
class kayttajat extends controller {
    protected $t;
    
    protected function import(&$f3) {
        $conf = $f3->get("conf");
        $loader = new Twig_Loader_Filesystem($conf->get("Twig")["twigTemplates"]);
        $twig = new Twig_Environment($loader);
        $sivu = new vTuonti($twig, $this->t, $conf);
        $sivu->nayta("tuoLainaajat.html"); 
    }
    
    public function __construct($f3) {
          $pdo = $f3->get("db");
          $conf = $f3->get("conf");
          $log = $f3->get("log");
          parent::__construct($conf, $pdo, $log);
          $this->a = array("tunniste", "nimi", "slsjasennumero", "puhelin", "sahkoposti",  "tila");
          $basepath=$conf->get("General")["basepath"];
          require_once("$basepath/view/language.php");
          $this->t = $t;
    }
    
    public function get($f3) {
        $u = new SLSUSERS($this->db, $this->log);
        $moodi = $_REQUEST["mode"]??"Page";
        switch($moodi) {
           case "search":
                $term = $_REQUEST["term"]??False;
                $result=array();
                if($term!==False) {
                    $r = $u->searchWithNamePart($term);
                    foreach($r as $rl) {
                        array_push($result, $rl["nimi"]." / ".$rl["tunniste"]);
                    }
                }
                header("Content-type: application/json");
                echo json_encode($result);
                break;
            case "tablefetch":                    
                    $rivit = $this->tableFetch($c);
                    header("Content-type: application/json");
                    echo json_encode($rivit);
                    break;
            case "import":                
                $this->import($f3);
                break;
          }
     }
     
     public function post($f3) {
        $method = $_REQUEST["method"]??False;
        switch($method) {
            case "import":
                $this->doImport($f3);
                break;
        }
     }
     
     protected function doImport(&$f3) {
        if(isset($_FILES["tiedosto"]) && $_FILES["tiedosto"]["error"]==UPLOAD_ERR_OK) {
            $tdsto = file($_FILES['tiedosto']['tmp_name']);
            // Etunimi;Sukunimi;Sähköpostiosoite;Jäsennumero;Matkapuhelinnumero;Syntymävuosi
            $a = array();
            $k = new SLSUSERS($this->db, $this->log);
            $k->poistaJasenet();            
            $tulos = array("OK"=>0, "Virhe"=>0);
            foreach($tdsto as $rvnro=>$rivi) {                
                if($rvnro==0)
                    continue;
                list($etunimi, $sukunimi, $sposti, $jasen, $puhelin, $vuosi)=explode(";",$rivi);
                $d=array("nimi"=>sprintf("%s %s", $etunimi, $sukunimi),
                                   "slsjasennumero"=>$jasen,
                                   "sahkoposti"=>$sposti,
                                   "puhelin"=>$puhelin,
                                   "tunniste"=>$jasen,
                                   "tila"=>"lainaaja");
                if(preg_match("/^[12][0123456789]{3}$/", $vuosi)) {
                    $d["syntymavuosi"]=$vuosi;
                }
                try {
                    if($k->upsert($d)===True)
                        $tulos["OK"]++;
                    else
                        $tulos["Virhe"]++;
                } catch(Exception $e) {
                    $tulos["Virhe"]++;
                    continue;
                }
            }
            $conf = $f3->get("conf");   
            $loader = new Twig_Loader_Filesystem($conf->get("Twig")["twigTemplates"]);
            $twig = new Twig_Environment($loader);
            $sivu = new vTuotiin($twig, $this->t, $conf, $tulos);
            $sivu->nayta("tuotiinLainaajat.html");             
        }
     }
}
?>