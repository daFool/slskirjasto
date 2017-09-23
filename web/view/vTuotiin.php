<?php
/**
* */
class vTuotiin extends vPage {
    protected $myvars;
    /**
     * Sivupohja
     *
     * @param object $twig Twig-objekti
     * @param &array $t Tekstit
     * @param object $conf Konfiguraatio
     * */
    public function __construct($twig, &$t, $conf, $tulos) {
        parent::__construct($twig, $t, $conf);
        $myvars = array("tulos" => $tulos);
        $myvars = array_merge($myvars, $this->variables);
        $this->myvars = $myvars;
        $this->variables=$this->myvars;
    }
}