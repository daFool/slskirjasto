<?php
/**
 * Javascript-palvelu, joka tuottaa listauksen korin peleistä
 * 
 * @uses globals.php
 * @uses database.php
 * @package SLS-Kirjasto
 * @subpackage Kori
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 **/
require_once("../globals.php");
require_once("$basepath/helpers/common.php");

class KorinPelit extends JsonBase {
     /**
     * Table-fetch alla olevaan luokkaan
     *
     * Jos käyttäjätiedot ovat tiedossa, käytetään niitä.
     * 
     * @param int $start Mistä rivistä aloitetaan
     * @param int $length Kuinka monta riviä haetaan
     * @param string $od Järjestysehto
     * @param string $search Globaali hakuehto
     * 
     * @return mixed False, jos mitään ei löytynyt ja array rivejä, jos löytyi.
     * */
    protected function fetch($start,  $length, $od, $search) {
        $rivit = $this->l->tableFetchGames($start, $length, $od, $search);
        return $rivit;
    }
    
}

$a = array("tunniste", "nimi", "hylly", "paikka", "omistaja", "tila", "kokoelma");
$k = new Kori($db);
$kori = isset($_REQUEST["kori"]) ? $_REQUEST["kori"] : "-1";
$k->asetaKori($kori);
$jb = new KorinPelit($a, $k);

$jason = $jb->tableFetch();
header("Content-type: application/json");
echo json_encode($jason);
?>