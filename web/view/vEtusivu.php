<?php
class vEtusivu extends vPage {
    protected $myvars;
    
    public function __construct($twig, &$t, $conf) {
        parent::__construct($twig, $t, $conf);
        $m = array("gamesJSON"=>$this->baseurl."/games?mode=tablefetch",
                   "kokoelmatJSON"=>$this->baseurl."/collections?mode=tablefetch",
                   "collectionMain"=>$this->baseurl."/collection",
        );
        $this->myvars = array_merge($this->variables, $m);
        $this->variables = $this->myvars;
    }
}
?>