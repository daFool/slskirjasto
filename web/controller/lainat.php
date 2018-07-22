<?php
class lainat extends controller {
    protected $t;
    protected $peli;
    
    protected function sivu($f3, $pid) {
        $conf = $f3->get("conf");
        $loader = new Twig_Loader_Filesystem($conf->get("Twig")["twigTemplates"]);
        $twig = new Twig_Environment($loader);
        $res = $this->peli->lainaTiedot($pid);
        $this->t["collection"]=$res["kokoelma"];
        $this->t["peli"]=$res["peli"];
        $this->t["tunniste"]=$res["id"];
        $this->t["tarkistettu"]="false";
        $this->t["kokoelmaid"]=$res["kokoelmaid"];
        $sivu = new vPage($twig, $this->t, $conf);
        $sivu->nayta("lainaus.html"); 
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
          $this->peli = new SLSCOLLECTIONGAMES($pdo, $log);
        
    }
    
    public function get($f3) {
        $moodi = $_REQUEST["mode"]??"uusi";
        switch($moodi) {            
            case "uusi":
                $peli = $_REQUEST["peli"]??False;
                if($peli) {
                    $this->sivu($f3, $peli);
                }
                else {
                    
                }
                break;
            case "lainauscheck":
                $mika=$_REQUEST["mika"]??False;
                $arvo=$_REQUEST["term"]??False;
                $u = new SLSUSERS($this->db, $this->log);
                if($mika!==False &&  $arvo !==False) {
                    switch($mika) {
                        case "lainaaja":
                            $mika="nimi";                       
                            break;
                        case "tunniste":
                            break;
                        case "jasennumero":
                            $mika="slsjasennumero";
                            break;
                        default:
                            $mika=False;
                            break;
                                
                    }
                    if($mika!==False) {
                        $res=$u->lainausCheck($mika, $arvo);
                        header("Content-type: application/json");
                        echo json_encode($res);                        
                    }                            
                }
          }
     }
     
     function post($f3) {
        $kokoelma = $_REQUEST["kokoelma"]??False;
        $lainaaja = $_REQUEST["lainaaja"]??False;
        $pantti = $_REQUEST["pantti"]??False;
        $numero = $_REQUEST["numero"]??False;
        $peli = $_REQUEST["peli"]??False;
        $tulos = array("tulos"=>"ERR");
        $mode=$_REQUEST["mode"]??False;
        $lainaid=$_REQUEST["lainaid"]??False;
        
        if($mode=="palauta" && $lainaid!==False) {
            $l = new SLSLainat($this->db, $this->log);
            $res = $l->palauta($lainaid);
            if($res["Tulos"]=="Virhe") {
                $tulos["viesti"]=$this->t[$res["Viesti"]];
            } else {
                $tulos["tulos"]="OK";
                if($res["kortilla"]===True)
                    $tulos["viesti"]=sprintf($this->t["PelinPalautusOnnistui"], $res["peli"]);
                else {
                    $tulos["viesti"]=sprintf($this->t["PelinPalautusPantilla"], $res["peli"], $res["lainaaja"], $res["pantti"]);
                }
            }
            
        }
        if($kokoelma!==False || $lainaaja!==False || $pantti!==False || $numero!==False || $peli!==False) {
            $l = new SLSLainat($this->db, $this->log);
            $res = $l->Lainaa($peli, $kokoelma, $lainaaja, $pantti, $numero);
            if($res !== False) {
                $tulos["tulos"]="OK";    
            }
        }
        header("Content-type: application/json");
        echo json_encode($tulos); 
     }
}
?>