<?php
class kortit extends controller {
    protected $t;
    
    public function __construct($f3) {
        $pdo = $f3->get("db");
        $conf = $f3->get("conf");
        $log = $f3->get("log");
        parent::__construct($conf, $pdo, $log);
        $this->a = array("numero", "lainaaja", "pantti", "annettu", "palautettu");
        $basepath=$conf->get("General")["basepath"];
        require_once("$basepath/view/language.php");
        $this->t=$t;
        $this->kentat=array("numero", "lainaaja", "pantti", "annettu", "palautettu");
    }
    
    public function get($f3) {
        $k = new Kortti($this->db, $this->log);
        $moodi = $_REQUEST["mode"]??"Page";
        switch($moodi) {
            case "tableFetch":
                $this->tauluHaku($f3);
                break;
            case "page":
                $this->sivu($f3);
                break;
        }
    }
    
     protected function sivu(&$f3) {
        $conf = $f3->get("conf");
        $loader = new Twig_Loader_Filesystem($conf->get("Twig")["twigTemplates"]);
        $twig = new Twig_Environment($loader);
        $sivu = new vPage($twig, $this->t, $conf);
        $sivu->nayta("kortti.html"); 
    }
    
     function tauluHaku($f3) {
        $ehto = $_REQUEST["ehto"]??"";
        $sivu = $_REQUEST["sivu"]??0;        
        $w ="";
        $d =  array();
        if($ehto !="") {
            $ehtos="%".$ehto."%";    
            if(ctype_digit($ehto)) {                
                $w = "where lainaaja ilike :e or pantti ilike :f or numero=:g";
                $d=array("e"=>$ehtos, "f"=>$ehtos, "g"=>$ehto);
            }
            else {
                $w = "where lainaaja ilike :e or pantti ilike :f";
                $d=array("e"=>$ehtos, "f"=>$ehtos); 
            }
        }
        $filtteri=$_REQUEST["filtteri"]??"kaikki";
        switch($filtteri) {
            case "kaikki":
                break;
            case "kaytossa":
                if($w=="") 
                    $w="where ";                                
                else
                    $w.=" and ";
                $w.="annettu is not null";
                break;
            case "vapaa":
                if($w=="")
                    $w="where ";
                else
                    $w.=" and ";
                $w.="annettu is null";
                break;
        }
        $sivu=is_int($sivu)?0:$sivu;
        $sivu=(int)$sivu;
        $k = new Kortti($this->db, $this->log);
        $rivit = $k->tauluhaku($w, $d, $sivu);
        header("Content-type: application/json");
        echo json_encode($rivit);
     }
     
     public function post($f3) {
        $mode = $_REQUEST["mode"]??False;
        $k = new Kortti($this->db, $this->log);
        switch($mode) {
            case "Palauta":
                $d=array();
                $kortti=$_REQUEST["kortti"]??False;
                if($kortti===False || !ctype_digit($kortti)) {
                    $res="ERROR";
                } else {
                    $d["numero"]=$kortti;
                    
                    $d["luoja"]=$_SESSION['user']['nimi'];
                    $d["muokkaaja"]=$d["luoja"];
                    $nyt = new DateTime();
                    $d["palautettu"]=$nyt->format("Y-m-d H:i:s");
                    $d["lainattu"]=null;
       
                    $r = $k->upsert($d);
                    if($r===False)
                        $res="ERROR";
                    else
                        $res="OK";
                }
                break;
            case "Anna":
                $d=array();
                $kortti=$_REQUEST["kortti"]??False;
                $lainaaja=$_REQUEST["lainaaja"]??False;
                $pantti=$_REQUEST["pantti"]??False;
                if($kortti===False || $lainaaja===False || $pantti===False || !ctype_digit($kortti)) {
                    $res="ERROR";
                } else {
                    $d["numero"]=$kortti;
                    $d["lainaaja"]=$lainaaja;
                    $d["pantti"]=$pantti;
                    
                    $d["luoja"]=$_SESSION['user']['nimi'];
                    $d["muokkaaja"]=$d["luoja"];
                    $nyt = new DateTime();
                    $d["annettu"]=$nyt->format("Y-m-d H:i:s");
       
                    $r = $k->upsert($d);
                    if($r===False)
                        $res="ERROR";
                    else
                        $res="OK";
                }
                break;
            case "uusia":
                $alkaen = $_REQUEST["alkaen"]??False;
                $loppuen = $_REQUEST["loppuen"]??False;
                if($alkaen===False || $loppuen===False || !ctype_digit($alkaen) || !ctype_digit($loppuen) || $alkaen>$loppuen) {
                    $res="ERROR";
                } else {                    
                    for($i=$alkaen;$i<=$loppuen;$i++) {
                        $d=array("numero"=>$i);
                        $k->upsert($d);                    
                    }
                    $res="OK";
                }
                break;
            default:
                var_dump($mode);
                $res="ERROR";
        }
        header("Content-type: application/json");
        echo json_encode($res);
        die;
     }
}
?>