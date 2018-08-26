<?php
/**
 * @author Mauri "mos" Sahlberg <mauri.sahlberg@gmail.com>
 * @license Apache License, Version 2.0 https://opensource.org/licenses/Apache-2.0
 * @copyright Copyright Mauri Sahlberg 2017, Helsinki
 * */

namespace SLS;
 
/**
 * Kokoelmien pelit
 * */
class Collectiongames extends Controller
{
     /**
      * @var array $t Tekstit
      * */
     protected $t;
     
     /**
      * Konstruktori
      * @param Base Fat Free Coren base
      * */
     public function __construct(\Base $f3) {
          $pdo = $f3->get("db");
          $conf = $f3->get("conf");
          $log = $f3->get("log");
          parent::__construct($conf, $pdo, $log);
          $this->a = array("kokoelmapeli", "nimi", "hylly", "paikka", "omistaja",  "tila");
          $basepath=$conf->get("General")["basepath"];
          require_once("$basepath/view/language.php");
          $this->t = $t;
    }
    
     /**
      * Get-request
      *
      * @param Base $f3 Fat Free Core base
      * Jos requestin "mode" on:
      * - Page, niin ollaaan kokoelman lainaus-sivulla ja esitetään valittuna olevan kokoelman pelit Datatables-taulussa
      * - tablefetch, niin täydennellään kokoelman pelit Datatables-tauluun Ajax-kutsun pää
      * - pelitiedot, niin palautetaan annetun pelin tilatiedot, ajax-kutsun pää
      * - muokkaa, halutaan muokata kokoelman pelin tietoja, kutsutaan muokaa-metodia
      * 
      * */
     public function get(\Base $f3) {
          $kokoelma = $_REQUEST["collection"]??False;
          $g = new SLSCOLLECTIONGAMES($this->db, $this->log);
          $moodi = $_REQUEST["mode"]??"Page";
          if (($moodi=="Page" || $moodi=="tablefetch") && $kokoelma===False) {
               $f3->reroute($this->conf->get("General")["baseurl"]);
               die;
          }         
      
          switch ($moodi) {
               case "Page":
                    $this->sivu($f3, $kokoelma);
                    break;
               case "tablefetch":                    
                    $g->setKokoelma($kokoelma);
                    $rivit = $this->tableFetch($g);
                    header("Content-type: application/json");
                    echo json_encode($rivit);
                    break;
               case "pelitiedot":
                    $pt_tunniste = isset($_REQUEST["id"]) ? urldecode($_REQUEST["id"]) : false;
                    $pt = new Pelintila($this->db, $this->log);
                    if ($pt->exists(array("pt_tunniste"=>$pt_tunniste))) {
                         $rivi = $pt->give();
                    } else {
                         $rivi = false;
                    }
                    if (!$rivi) {
                         $result = array("Virhe"=>$this->t["EiPeliId"]);
                    } else {
                         $result = array("Virhe"=>"OK", "data"=>$rivi);
                    }                   
                    header("Content-type: application/json");
                    echo json_encode($result);
                    break;
               case "muokkaa":
                    $this->muokkaaPeli($f3, $_REQUEST["peli"]);
                    break;
               case "kokoelmapeli":
                    $rivi = $g->kokoelmaPeli($_REQUEST["id"]);
                    if($rivi===False) {
                         $result = array("Virhe"=>$this->t["EiPeliId"]);
                    } else {
                         $result = array("Virhe"=>"OK", "data"=>$rivi);
                    }                   
                    header("Content-type: application/json");
                    echo json_encode($result);
                    break;
               default:
                
                    die("Kilroy");
          }
     }
     
     /**
      * Kokoelman pelilistaus
      *
      * @param Base $f3 Fat Free Coren Base
      * @param string $kokoelma Käsiteltävän kokoelman tunniste
      * */
     protected function sivu(\Base $f3, string $kokoealma) {
          $conf = $f3->get("conf");
          $db=$f3->get("db");
          $log=$f3->get("log");
          $loader = new \Twig_Loader_Filesystem($conf->get("Twig")["twigTemplates"]);
          $twig = new \Twig_Environment($loader);
          $basepath = $conf->get("General")["basepath"];          
          $sivu = new vKokoelmapelit($twig, $this->t, $conf, $kokoealma);
          $sivu->nayta("kokoelmapelit.html");    
     }
     
     protected function muokkaaPeli($f3, $kokoelmapeli) {
          $conf = $f3->get("conf");
          $db=$f3->get("db");
          $log=$f3->get("log");
          $loader = new \Twig_Loader_Filesystem($conf->get("Twig")["twigTemplates"]);
          $twig = new \Twig_Environment($loader);
          $basepath = $conf->get("General")["basepath"];          
          $sivu = new vKokoelmapelit($twig, $this->t, $conf, $kokoealma);
          $sivu->nayta("game.html");    
     }
    
}
