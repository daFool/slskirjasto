<?php
class collections extends controller {
    protected $pdo;
    
    public function __construct($f3) {
        $pdo = $f3->get("db");
        $conf = $f3->get("conf");
        $log = $f3->get("log");
        parent::__construct($conf, $pdo, $log);
        $this->a = array("nimi", "laji", "omistaja", "tapahtuma", "lisatty");
        
    }

    public function get($f3) {
        $c = new SLSCOLLECTIONS($this->db, $this->log);
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