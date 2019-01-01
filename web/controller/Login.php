<?php
/**
 * Paikallinen kirjautuminen
 *
 * PHP version 7.1
 * 
 * Paikallinen kirjautuminen, perustuen käyttäjätunnukseen ja salasanaan.
 *
 * Käyttäjä voi kirjautua kahta tietä sovellukseen,
 * joko paikallisesti käyttäen (käyttäjätunnus, salasana)-paria
 * tai käyttäen google-autentikaatiota. Jos käyttäjä on kirjautunut,
 * niin hänen tietonsa löytyvät $_SESSION["user"].
 *
 * @category  Model
 * @package   SLS-Kirjasto
 * @author    Mauri "daFool" Sahlberg <mauri.sahlberg@lautapeliseura.fi>
 * @copyright 2018 Mauri Sahlberg, Helsinki
 * @license   GPL-2.0 http://opensource.org/licenses/GPL-2.0
 * @link      http://www.github.com/daFool/slskirjasto
 **/
namespace SLS;

/**
 * Paikallinen kirjautuminen
 *
 *
 * @category  Model
 * @package   SLS-Kirjasto
 * @author    Mauri "daFool" Sahlberg <mauri.sahlberg@lautapeliseura.fi>
 * @copyright 2018 Mauri Sahlberg, Helsinki
 * @license   GPL-2.0 http://opensource.org/licenses/GPL-2.0
 * @link      http://www.github.com/daFool/slskirjasto
 **/
class Login extends controller
{
    /**
     * Konstruktori
     * 
     * @param object Fat Free Core
     * */
    public function __construct($f3)
    {
        $pdo = $f3->get("db");
        $conf = $f3->get("conf");
        $log = $f3->get("log");
        parent::__construct($conf, $pdo, $log);
    }
    
    /**
     * Kirjautumislomakkeen esittäminen
     *
     * Varsinainen esitettävä lomake renderöidään twigillä vLoginin alta ja löytyy
     * tiedostosta login.html
     * 
     * @param object $f3 Fat Free Core
     *
     * @uses vLogin->nayta
     **/
    public function get($f3)
    {
        $method = $_REQUEST["method"]??"local";
        if($method=="local") {
            $loader = new \Twig_Loader_Filesystem($this->conf->get("Twig")["twigTemplates"]);
            $twig = new \Twig_Environment($loader);
            $basepath = $this->conf->get("General")["basepath"];
            require_once("$basepath/view/language.php");
            $sivu = new vLogin($twig, $t, $this->conf);
            $sivu->nayta("login.html");     
        }
    }
    
    /**
     * Käyttäjätunnuksen ja salasanan tarkistaminen
     *
     * Post-requestin parametrit salasana ja käyttäjätunnus.
     * 
     * @param object $f3 Fat Free Core
     *
     * @uses SLSUSERS::checkLocalAuth
     * @uses SLSUSERS::exists
     * 
     * */
    public function post($f3)
    {
        $salasana = $_POST['salasana']??false;
        $ktunnus = $_POST['ktunnus']??false;
        $baseurl = $this->conf->get("General")["baseurl"];
        $basepath = $this->conf->get("General")["basepath"];
        require("$basepath/view/language.php");
        if ($salasana===false || $ktunnus===false) {
            $virhe = sprintf("%s/login?virhe=%s",$baseurl,$t["ktunnustaisalasanapuuttuu"]);
            $f3->reroute($virhe);
            die;
        }
    
        $users = new SLSUSERS($this->db, $this->log);
        if ($users->checkLocalAuth($salasana, $ktunnus)===false) {
            $virhe = sprintf("%s/login?virhe=%s", $baseurl, $t["ktunnustaisalasanavaarin"]);
            $f3->reroute($virhe);
            die;
        }
        $_SESSION["loggedin"]=true;
        if ($users->exists(array(SLSUSERS::KÄYTTÄJÄTUNNUS=>$ktunnus))) {
            $_SESSION['user']=$users->give();
        } else {
            $_SESSION['user']=false;
            $m = sprintf($t["kayttajatiedotpuuttuvat"], $ktunnus);
            $this->log->l($ktunnus, $m, __FILE__, __FUNCTION__, __LINE__, "ERROR");
            die($m);
        }
        $this->log->l($ktunnus, sprintf($t["kayttajakirjautui"], $ktunnus),__FILE__,__FUNCTION__,__LINE__, "AUDIT");
        $f3->reroute($baseurl);
        die;       
    }
}
