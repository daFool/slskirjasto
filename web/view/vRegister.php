<?php
class vRegister extends vPage {
    protected $myvars;
    
    public function __construct($twig, &$t, $conf, $mika) {     
        parent::__construct($twig, $t, $conf);
        $myvars = array("moodi"=>$mika);
        $myvars = array_merge($myvars, $this->variables);
        $this->myvars=$myvars;
        $this->variables = $this->myvars;
    }
}
?>