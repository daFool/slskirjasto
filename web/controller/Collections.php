<?php
/**
 * Kokoelmien perusluokka
 *
 * PHP Version 7.1
 * 
 * @category  Controller
 * @package   SLS
 * @author    Mauri "mos" Sahlberg <mauri.sahlberg@gmail.com>
 * @copyright 2018 Mauri Sahlberg Helsinki
 * @license   Apache License, Version 2.0 https://opensource.org/licenses/Apache-2.0
 * @link      www.iki.fi/mos
 * */

 namespace SLS;
 
 /**
  * Pelikokoelmat
  *
  * @category  Controller
  * @package   SLS
  * @author    Mauri "mos" Sahlberg <mauri.sahlberg@gmail.com>
  * @copyright 2018 Mauri Sahlberg, Helsinki
  * @license   Apache License, Version 2.0 https://opensource.org/licenses/Apache-2.0
  * @link      www.iki.fi/mos
  **/
class Collections extends Controller
{   
    /**
     * Konstruktori
     *
     * @param Base $f3 Fat Free Core Base
     * */
    public function __construct(\Base $f3)
    {
        $pdo = $f3->get("db");
        $conf = $f3->get("conf");
        $log = $f3->get("log");
        parent::__construct($conf, $pdo, $log);
        $this->a = array("id", "nimi", "omistaja", "tapahtuma", "luotu");        
    }

    /**
     * Get-request
     *
     * Pyynnön mode-parametri kontrolloi mitä näytetään:
     * - tablefetch hakee kaikki kokoelmat, joihin katsovalla henkilöllä on katseluoikeus
     *
     * @param Base $f3 Fat Free Core Base
     * @uses SLSCOLLECTIONS
     * */
    public function get($f3) {
        $c = new SLSCOLLECTIONS($this->db, $this->log);
        $mode = $_REQUEST["mode"]??"all";
        switch($mode) {
            case "tablefetch":
                $rivit = $this->tableFetch($c);
                break;
        }
        header("Content-type: application/json");
        echo json_encode($rivit);
    }
}
