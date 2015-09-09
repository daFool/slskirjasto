<?php
class SLSDONOR {
  /** @var handle Database handle **/
    private $db;
    /** @var object SLS Database **/
    private $dbc;
    /** @var object Current game(s)
     * */
    
    /**
     * Constructor
     * @param object $db Database-handle
     * */
    public function __construct($db) {
        $this->db = $db->getHandle();
        $this->dbc = $db;
        
    }
    
    /**
     * Add donor
     * @param array $donor Donor information as an array
     * @return boolean False if failed
     * */
    public function add($donor) {
        try {
            $s = "insert into Lahjoittaja (nimi";
            $sv = "values (:nimi";
            $v = array("nimi"=>$donor['nimi']);
            if(isset($donor["Verkkoosoite"])) {
                $s.=", verkkoosoite";
                $sv.=", :verkkoosoite";
                $v['verkkoosoite']=$donor['verkkoosoite'];
            }
            $s.=") $sv);";
            $st = $this->db->prepare($s);
            $res = $st->execute($v);
            if(!$res || $st->rowCount()!=1)
                return false;
            return true;
        } catch(PDOException $e) {
            die("Programming error {$e->getMessage()}");
        }
    }
}
?>