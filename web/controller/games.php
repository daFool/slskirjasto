<?php
class games extends controller {
    
    public function __construct($f3) {
        $pdo = $f3->get("db");
        $conf = $f3->get("conf");
        $log = $f3->get("log");
        parent::__construct($conf, $pdo, $log);
        $this->a = array("nimi", "bggrank", "bgglinkki", "kesto", "pelaajia",  "vuosi");
     
    }
    
      public function get($f3) {
        $c = new SLSGAMES($this->db, $this->log);
        $mode = $_REQUEST["mode"]??"all";
        switch($mode) {
            case "tablefetch":
                $rivit = $this->tableFetch($c);
                break;
            case "game":
                $rivit = array("tulos"=>"VIRHE");                
                if($c->exists(array("tunniste"=>$_REQUEST["id"]??False))) {
                    $rivi = $c->give();
                    $rivit["data"]=$rivi;
                    $rivit["tulos"]="OK";
                }
                break;
            case "geek":
                $url = $_REQUEST["url"]??False;
                $rivit=array("tulos"=>"VIRHE");
                if($url!==False || preg_match("/^https?://(www)+\.boardgamegeek.com\/boardgame/[0123456789]+/", $url)) {
                    $g = new SLSGEEK($url);
                    $rivit["data"]=$g->getResult();
                    if($rivit["data"]["virhe"]===false)
                        $rivit["tulos"]="OK";
                }
                break;
        }
        header("Content-type: application/json");
        echo json_encode($rivit);
    }
}
?>