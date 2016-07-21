<?php
class View {
    protected $db;
    protected $dbc;
    protected $nakyma;    
    
    public function __construct($db, $nakyma) {
        $this->db =$db->getHandle();
        $this->dbc = $db;
        $this->nakyma=$nakyma;
    }
    
    /**
     * @param string $field Kenttä
     * @param mixed $value Arbo
     * @return mixed False jos ei löytynyt, array rivejä jotka löytyivät
     * */
    public function autoComplete($field, $value) {
        try {
            $s = "select $field from {$this->nakyma} where $field ~* :value group by $field order by $field desc";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("value"=>$value));            
            if($res===false || $st->rowCount()==0)
                return false;
            $rivit = $st->fetchAll();
            return $rivit;
        }
        catch(PDOException $e) {
            $db->log($e->getMessage(), __FILE__, __METHOD__,__LINE__,"ERROR");
            return false;
        }
    }
    
    /**
     * @param string $hakukentta Hakukenttä
     * @param string $value Arvo
     * @param string $avainkentta Avainkenttä, jonka arvo haetaan
     * @return mixed False jos ei löytynyt tai löytyi enemmän kuin yksi. Arvo, jos löytyi yksi
     * */
    public function haeAvain($hakukentta, $value, $avainkentta) {
        try {
            $s = "select $avainkentta from {$this->nakyma} where $hakukentta=:value group by $avainkentta";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("value"=>$value));
            if($res===false || $st->rowCount()!=1) {
                return false;
            }
            $rivi = $st->fetch(PDO::FETCH_ASSOC);
            return $rivi[$avainkentta];
        }
        catch(PDOException $e) {
            $db->log($e->getMessage(), __FILE__, __METHOD__,__LINE__,"ERROR");
            return false;
        }
    }
}
?>