<?php
class vLainaaja extends vRegister {
    
    public function __construct($twig) {
        parent::__construct($twig, "lainaaja");
        
        $paluu=true;
        $m=array();
        foreach(array("collection", "game", "gameid") as $param) {
            if(!isset($_GET[$param]))
                $m[$param]="";
            else
                $m[$param]=html_entity_decode(urldecode($_GET[$param]));
        }
        $this->variables=array_merge($this->variables,$m);
    }
}
?>