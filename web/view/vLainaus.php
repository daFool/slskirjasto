<?php
class vLainaus extends vPage {
    protected $myvars;
    
    public function __construct($twig, &$t, $conf) {
        
        parent::__construct($twig, $t, $conf);
        $baseurl = $conf->get("General")["baseurl"];
        
        $this->myvars=array();
        $tarkistettu="false";
        
        $params = array("collection", "tunniste", "peli", "ktunnus", "vlainaaja", "slsjasennumero");
        foreach($params as $param) {
            if(isset($_REQUEST[$param])) {
                if($param=="tunniste")
                    $this->myvars["jaska"]=$_REQUEST[$param];
                $this->myvars[$param]=html_entity_decode(urldecode($_REQUEST[$param]));
                if($param=="ktunnus")
                    $tarkistettu="true";
            }
            else
                $this->myvars[$param]="";
        }
        $this->myvars["tarkistettu"]=$tarkistettu;

        $this->variables=array_merge($this->variables, $this->myvars);        
    }
}
?>