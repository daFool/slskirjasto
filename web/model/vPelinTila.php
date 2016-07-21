<?php
class vPelinTila extends Model {
    
    /**
     * @param object $db SLSDatabase-objekti
     * */
    public function __construct($db) {
        $hakukentat = array("pt_tunniste"=>"string");        
        parent::__construct($db, "vPelinTila", array("pt_tunniste"), false, $hakukentat);
    }
}

?>