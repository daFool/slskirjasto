<?php
/**
* */
class vTuonti extends vPage {
    protected $myvars;
    /**
     * Sivupohja
     *
     * @param object $twig Twig-objekti
     * @param &array $t Tekstit
     * @param object $conf Konfiguraatio
     * */
    public function __construct($twig, &$t, $conf) {
        parent::__construct($twig, $t, $conf);
        $myvars = array("uploadPath" => $this->baseurl."/kayttajat");
        $myvars = array_merge($myvars, $this->variables);
        $this->myvars = $myvars;
        $this->variables=$this->myvars;
    }
}