<?php
/**
 * @author Mauri "mos" Sahlberg <mauri.sahlberg@gmail.com>
 * @license Apache License, Version 2.0 https://opensource.org/licenses/Apache-2.0
 * @copyright Copyright Mauri Sahlberg 2017, Helsinki
 * */

namespace SLS;

/**
 * Etusivu
 * */
class vEtusivu extends vPage {

    /**
     * Konstruktori
     *
     * @param \Twig_Environment $twig Twig-template-engine
     * @param array             &$t Käännökset
     * @param \mosBase\Config   $conf Konfiguraatio
     * */
    public function __construct(\Twig_Environment $twig, array &$t, \mosBase\Config $conf) {
        parent::__construct($twig, $t, $conf);
        
        $m = array("gamesJSON"=>$this->baseurl."/games?mode=tablefetch",
                   "kokoelmatJSON"=>$this->baseurl."/collections?mode=tablefetch",
                   "collectionGamesMain"=>$this->baseurl."/collectiongames",
        );
        $this->variables = array_merge($this->variables, $m);
    }
}
?>