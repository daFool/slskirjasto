<?php
class JsonOikeudet extends JsonBase {
    private $id;    /** @var string $id Kokoelman id. **/
    private $taulu;
    
    public function __construct($sarakkeet, $malli, $id, $taulu) {
        $this->id = $id;
        $this->taulu = $taulu;
        parent::__construct($sarakkeet, $malli);
    }
    
    public function fetch($start, $length, $od, $search) {
        $a = array();
        if($this->taulu=="kokoelma") {
            $a["taulu"]=$this->taulu;
            $a["avain"]=$this->id;
        }
        $rivit = $this->l->tableFetch($start, $length, $od, $search, $this->id);
        return $rivit; 
    }
}
?>