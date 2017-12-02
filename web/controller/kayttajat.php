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
    
    protected function sivu(&$f3) {
        $conf = $f3->get("conf");
        $loader = new Twig_Loader_Filesystem($conf->get("Twig")["twigTemplates"]);
        $twig = new Twig_Environment($loader);
        $sivu = new vPage($twig, $this->t, $conf);
        $sivu->nayta("kayttajat.html"); 
    }
    
    protected function newUser(&$f3, $moodi) {
        $conf = $f3->get("conf");
        $loader = new Twig_Loader_Filesystem($conf->get("Twig")["twigTemplates"]);
        $twig = new Twig_Environment($loader);
        $sivu = new vRegister($twig, $this->t, $conf, $moodi);
        $sivu->nayta("register.html");        
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
          $this->kentat=array("tunniste", "uusitunniste", "nimi", "slsjasennumero", "puhelin", "sahkoposti", "syntymavuosi", "tila", "sukupuoli");
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
            case "searchKtunnus":
                $term = $_REQUEST["term"]??False;
                $result=array();
                if($term!==False) {
                    $r = $u->searchWithTunnistePart($term);
                    if($r !== false) {
                        foreach($r as $r1) {
                            array_push($result, $r1["tunniste"]);
                        }                        
                    }                    
                }
                header("Content-type: application/json");
                echo json_encode($result);
                break;

            case "tableFetch":                    
                    $rivit = $this->tauluHaku($f3);
                    break;
            case "import":                
                $this->import($f3);
                break;
            case "page":
                $this->sivu($f3);
                break;
            case "newUser":
            case "newCustomer":
            case "register":
                $this->newUser($f3, $moodi);
                break;
            case "tilat":
                $rivit = $u->kayttajaTilat();
                foreach($rivit as $i=>$rivi) {
                    switch($rivi["tila"]) {
                        case "superadmin":
                            $rivit[$i]["text"]=_("Taikaviitta");
                            break;
                        case "admin":
                            $rivit[$i]["text"]=_("Ylläpitäjä");
                            break;
                        case "käyttäjä":
                            $rivit[$i]["text"]=_("Käyttäjä");
                            break;
                        case "lainaaja":
                            $rivit[$i]["text"]=_("Lainaaja");
                            break;
                        case "prospekti":
                            $rivit[$i]["text"]=_("Prospekti");
                            break;
                    }
                }
                array_push($rivit, array("text"=>_("Kaikki"), "tila"=>"kaikki"));
                header("Content-type: application/json");
                echo json_encode($rivit);
                break;
          }
     }
     
     public function post($f3) {
        $method = $_REQUEST["method"]??False;
        switch($method) {
            case "import":
                $this->doImport($f3);
                break;
            case "password":
                $this->password($f3);
                break;
            case "newUser":
                $this->uusi($f3, "käyttäjä");
                break;
            default:
                $this->save($f3);
                break;
        }
     }
     
     protected function uusi(&$f3, $tila) {
        $result= array("tulos"=>"ERROR");
        $d = array();
        $d["nimi"]=$_REQUEST["nimi"]??False;
        $d["slsjasennumero"]=$_REQUEST["jasennumero"]??null;
        if(!preg_match("/^[0-9]+$/",$d["slsjasennumero"]))
            $d["slsjasennumero"]=null;    
        $d["tunniste"]=$_REQUEST["ktunnus"]??False;
        $d["tila"]=$tila;
        $d["sahkoposti"]=$_REQUEST["email"]??False;
        $d["syntymavuosi"]=$_REQUEST["syntymavuosi"]??null;
        if(!preg_match("/^[12][0-9]{3}$/", $d["syntymavuosi"]))
            $d["syntymavuosi"]=null;
        $d["sukupuoli"]=$_REQUEST["sukupuoli"]??null;
        $salasana=$_REQUEST["salasana"]??False;
        
        if($d["nimi"]!==False && $d["tunniste"]!==False && $d["sahkoposti"]!==False && $salasana!==False) {
            $k = new SLSUSERS($this->db, $this->log);
            if(!$k->exists($d)) {
                $res = $k->upsert($d);
                if($res) {
                    $res = $k->vaihdaSalasana($d["tunniste"], $salasana, $_SESSION["user"]["tunniste"]??False);
                    if(!$res) {
                        $k->delete($d);
                        $result["tulos"]="PASSWORD";
                    }
                }
                if($res)
                    $result["tulos"]="OK";
            }
        }
        header("Content-type: application/json");
        echo json_encode($result);
        return;
     }
     
     protected function save(&$f3) {
        $k = new SLSUSERS($this->db, $this->log);
        $tulos = array("status"=>"ERROR");
        $kentat = array("tunniste", "uusitunniste", "nimi", "slsjasennumero", "puhelin", "sahkoposti", "syntymavuosi", "tila");
        $ok=True;
        $d = array();
        foreach($kentat as $kentta) {
            if(!isset($_REQUEST[$kentta])) {
                $ok=False;
                $this->log->log($_SESSION["user"]["tunniste"], sprintf("%s puuttuu", $kentta),__FILE__,__METHOD__,__LINE__,"ERROR");
            } else {                
                $d[$kentta]=$_REQUEST[$kentta]=="null"?null:$_REQUEST[$kentta];
            }
        }
        if($ok) {
            if($d["uusitunniste"]==$d["tunniste"]) {
                unset($d["uusitunniste"]);
                $res = $k->upsert($d);
            } else {
                $res = $k->deleteinsert($d);
            }
            if($res===True) {
                $tulos["status"]="OK";
            } 
        }
        header("Content-type: application/json");
        echo json_encode($tulos);
        return;
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
     
     function tauluHaku($f3) {
        $ehto = $_REQUEST["ehto"]??"";
        $filtteri = $_REQUEST["filtteri"]??"kaikki";
        $sivu = $_REQUEST["sivu"]??0;        
        $w ="";
        $d =  array();
        if($ehto !="") {
            $ehto.="%";
            if(is_int($ehto)) {
                $w = "where nimi ilike :e or sahkoposti ilike :f or slsjasennumero=:g or tunniste ilike :h or puhelin ilike :i";
                $d=array("e"=>$ehto, "f"=>$ehto, "g"=>$ehto, "h"=>$ehto, "i"=>$ehto);
            }
            else
                $w = "where nimi ilike :e or sahkoposti ilike :f or tunniste ilike :h or puhelin ilike :i";
                $d=array("e"=>$ehto, "f"=>$ehto, "h"=>$ehto, "i"=>$ehto);
        }
        switch($filtteri) {
            case "kaikki":
                break;
            default:
                $d["tila"]=$filtteri;
                if($w=="")
                    $w = "where tila=:tila";
                else
                    $w.=" and tila=:tila";
        }
        $sivu=is_int($sivu)?0:$sivu;
        $sivu=(int)$sivu;
        $k = new SLSUSERS($this->db, $this->log);
        $rivit = $k->tauluhaku($w, $d, $sivu);
        header("Content-type: application/json");
        echo json_encode($rivit);
     }
     
     public function delete($f3) {
        $tulos = "ERROR";
        $tunniste=file_get_contents("php://input");        
        $k = new SLSUSERS($this->db, $this->log);
        $res = $k->delete(array("tunniste"=>$tunniste));
        if($res)
            $tulos="OK";
        header("Content-type: application/json");
        echo json_encode($tulos);
     }
     
     protected function password($f3) {
        $tulos = "ERROR";
        $salasana = $_REQUEST["salasana"]??False;
        $tunniste = $_REQUEST["tunniste"]??False;
        if($salasana!==False && $tunniste!==False) {
            $k = new SLSUSERS($this->db, $this->log);
            $res = $k->vaihdaSalasana($tunniste, $salasana, $_SESSION["user"]["tunniste"]??False);
            if($res===True) {
                $tulos="OK";
            }
        }
        header("Content-type: application/json");
        echo json_encode($tulos);
     }
}
?>