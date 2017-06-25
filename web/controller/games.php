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
        }
        header("Content-type: application/json");
        echo json_encode($rivit);
    }
}
?>