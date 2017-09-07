<?php
class kayttajat extends controller {
    protected $t;
    
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
          }
     }
}
?>