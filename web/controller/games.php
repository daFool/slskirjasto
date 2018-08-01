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
                    $nimet = $rivi["nimet"];
                    $julkaisijat = $rivi["julkaisijat"];
                    if($nimet!==null && preg_match("/^{(.*)}$/", $nimet, $m)) {
                        $nimet = explode(',"',$m[1]);
                        foreach($nimet as $i=>$nimi) {
                            if(preg_match('/^"?(.*)"+$/', $nimi, $m)) {
                                $nimet[$i]=$m[1];
                            }                            
                        }
                        $rivit["data"]["nimet"]=$nimet;
                        
                    }
                    if($julkaisijat!==null && preg_match("/^{(.*)}$/", $julkaisijat, $m)) {
                        var_dump($m[1]);
                        die;
                    
                        $julkaisijat = explode(',"',$m[1]);
                         foreach($julkaisijat as $i=>$julkaisija) {
                            if(preg_match('/^"?(.*)"+$/', $julkaisija, $m)) {
                                $julkaisijat[$i]=$m[1];
                            }                            
                        }
                        $rivit["data"]["nimet"]=$nimet;
                        $rivit["data"]["julkaisijat"]=$julkaisijat;
                    }
                    var_dump($julkaisijat);
                    die;
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
    
    function post($f3) {
        $c = new SLSGAMES($this->db, $this->log);
        $data = array();
        foreach($_REQUEST as $i=>$v){
            switch($i) {
                case "nimi":
                case "suunnittelija":
                case "julkaisija":
                case "bgglinkki":
                case "kesto":
                case "pelaajia":
                case "gtin":
                case "vuosi":
                case "bggrank":
                case "bggdate":
                case "age":
                case "score":
                    $d[$i]=$v;
                    break;
                case "tunniste":
                    if($v=="-1")
                        break;
                    $d[$i]=$v;
                    break;
                case "nimet":
                case "julkaisijat":
                    $s = "{";
                    $f = true;
                    foreach($v as $a) {
                        if(!$f)
                            $s.=",";
                        $s.=sprintf("\"%s\"", $a);
                        $f=false;
                    }
                    $s.="}";
                    $d[$i]=$s;
                    break;
            }
        }
        $d["muokkaaja"]=$this->getUserid();
        $d["luoja"]=$d["muokkaaja"];
        $res = $c->upsert($d);
    
        if($res) {
           $tulos = "OK";
        }
        header("Content-type: application/json");
        echo json_encode($tulos);
    }
}
?>