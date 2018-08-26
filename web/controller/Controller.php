<?php
/**
 * Kontrollerien perusluokka
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
 * Controllerien base
 * 
 * @category  Controller
 * @package   SLS
 * @author    Mauri "mos" Sahlberg <mauri.sahlberg@gmail.com>
 * @copyright 2018 Mauri Sahlberg, Helsinki
 * @license   Apache License, Version 2.0 https://opensource.org/licenses/Apache-2.0
 * @link      www.iki.fi/mos
 *
 * Kaikille controllereille yhteiset toiminnot.
 * - Istuntojen hallinta,
 * - Käyttöliittymässä käytetyn Datatables-javascript-toteutuksen
 * vaatiman tietorakenteen populointi.
 **/
class Controller extends \mosBase\Session
{
    /**
     * Konfiguraatio-objekti
     * 
     * @var \mosBase\conf $conf 
     * */
    protected $conf;
    /**
     * Tietokantaolio
     * 
     * @var \mosBase\database $db
     * */
    protected $db;    
    /**
     * Logi
     * 
     * @var \mosBase\log $log
     * */
    protected $log;    
    /**
     * Istunnon konfiguraatio ini-tiedostosta
     *
     * @var array $session 
     * */
    protected $session;    
    /**
     * Table-fetchiä varten esitettävän rivin sarakenimet
     * käytettävän mallin taulussa.
     * 
     * @var array $a 
     * */
    protected $a;    
    /*
     * @var string $username Käyttäjän nimi
     * @var string $userid Käyttäjän käyttäjätunnus
     * @var string $taso Käyttäjän yleinen käyttöoikeustaso
     * */
    private $username;
    private $userid;
    private $taso;
    
    /**
     * Istunnon käyttäjätietojen purku. Käytännössä user sisältää kayttaja-taulun
     * koko rivin, joka on saatu käyttäjätunnuksella hakemalla.
     * 
     * @return Ei mitään
     * */
    private function sessionUser()
    {
        if (isset($_SESSION['user'])) {
            $u = $_SESSION["user"];
            $this->username=$u["nimi"];
            $this->userid=$u["tunniste"];
            $this->taso=$u["tila"];
        } else {
            $this->username=false;
            $this->userid=false;
            $this->taso=false;
        }       
    }
    /**
     * Istunnon omistajan nimi
     * 
     * @return string Käyttäjän nimi
     * */
    protected function getUsername() : string
    {
        $this->sessionUser();
        return $this->username;
    }
    
    /**
     * Istunnon omistajan käyttäjätunnus
     * 
     * @return string Käyttäjätunnus
     * */
    protected function getUserid() : string
    {
        $this->sessionUser();
        return $this->userid;
    }
    
    /**
     * Istunnon omistajan käyttöoikeustaso
     * 
     * @return string Käyttäjätaso
     * */
    protected function getLevel() : string
    {
        $this->sessionUser();
        return $this->taso;
    }
    /**
     * Konstruktori
     * 
     * @param mosBase\Conf     $conf Käytettävä konfiguraatio
     * @param mosBase\Database $db   Käytettävä
     *                               tietokantayhteys
     * @param mosBase\Log      $log  Käytettävä
     *                               logi
     * */
    public function __construct(
        \mosBase\Config $conf,
        \mosBase\Database $db,
        \mosBase\Log $log
    ) {
        $this->conf=$conf;
        $this->db=$db;
        $this->session=$this->conf->get("Session");
        $this->log=$log;
        $this->a = array();
        parent::__construct($this->session, $this->conf->get("General"));
    }
    
    /**
     * Istunnon ylläpito
     *
     * @return Ei mitään
     * */
    public function session()
    {                
        $this->pageStart();
        
        if (isset($_SESSION["kori"])) {
            setcookie(
                $this->session["KORIPIPARI"],
                $_SESSION["kori"],
                time()+$this->session["KORI_TIMEOUT"],
                $this->session["SESSION_COOKIEPATH"]
            );
        }
        if (!isset($_SESSION['loggedin']) || !$_SESSION['loggedin']) {
            $google_client= new \Google_Client();
            $google_client->setAuthConfigFile($this->session["googlejson"]);
            $google_client->setRedirectUri($this->session["REDIRECT_URI"]);
            $google_client->setScopes(
                array('https://www.googleapis.com/auth/userinfo.profile')
            );

            if (isset($_SESSION['access_token'])) {
                $google_client->setAccessToken($_SESSION['access_token']);
            }
        }
    }
    
    /**
     * Sähköpostin lähettäminen
     *
     * Käytetään lähettämään sähköpostia rekisteröityneelle käyttäjälle.
     * Käyttää pear-mail-laajennosta sähköpostinlähettämiseen.
     *
     * @param string $to      Vastaanottajan osoite
     * @param string $subject Sähköpostin otsikko
     * @param string $message muotoilematon sähköposti
     *
     * @return true
     * 
     * @todo Vaikuttaa erittäin epäilyttävältä! Fiksumpi tapa lienee
     * vaihtaa toiseen lähettävään kalikkaan, phpMaileriin!
     * */
    function SLSMail(string $to, string $subject, string $message)
    {
        include_once "Mail.php";
        
        $e = $this->conf->get("Mail");
        $from = $e["from"];
        $host = $e["host"];
        $username = $e["user"];
        $password = $e["password"];
        $email_auth = (boolean)$e["auth"];
        $headers = array ('From' => $from, 'To' => $to, 'Subject' => $subject);
        if ($email_auth) {
            $smtp = Mail::factory(
                'smtp',
                array(
                        'host' => $host,
                        'auth' => true,
                      'username' => $username,
                      'password' => $password
                )
            );
        } else {
            $smtp = Mail::factory('smtp', array('host'=>$host, 'auth'=>false));
        }
        $mail = $smtp->send($to, $headers, $message);  
        if (PEAR::isError($mail)) {
            die("<p>" . $mail->getMessage() . "</p>");
        }
        return true;
    }
    
    /**
     * Sivun aloitus
     * 
     * @param F3 $f3 Fat Free Core objekti
     * 
     * @return Ei mitään?
     * */
    function page($f3)
    {
               /* $kp = new Kori($db);
        $kp->Koripallo(); */
    }
    
    /**
     * Datatables haku
     *
     * @param object $c Model-objekti, jonka tietoja käsitellään
     * 
     * @return json_array Haetut tiedot json-tauluna
     * */
    public function tableFetch($c)
    {
        $draw = $_REQUEST["draw"]??false;
        $start = $_REQUEST["start"]??0;
        $length = $_REQUEST["length"]??10;
        $search = $_REQUEST["search"]??false;
        $order = $_REQUEST["order"]??false;
        $columns = $_REQUEST["columns"]??false;
        $user = $_SESSION["user"]??false;
        
        $od=false;
        if ($order) {
            $od = "";
            $first=true;
            foreach ($order as $o) {
                if (isset($this->a[$o["column"]])) {
                    $od.= $first ? "" : ", ";
                    $od.=$this->a[$o["column"]]." ".$o["dir"];
                    $first=false;
                }
            }
        }
        if ($user) {
            $w = $c->permissionWhere($user["tunniste"], $user["tila"]);
            if ($w!==false) {
                $rivit = $c->tableFetch($start, $length, $od, $search, $w);
            } else {
                $rivit = $c->tableFetch($start, $length, $od, $search);
            }
        } else {
            $rivit = $c->tableFetch($start, $length, $od, $search);
        }
        $data=array();
        $i=0;
        foreach ($rivit["rivi"] as $rivi) {
            $j=0;
            foreach ($this->a as $aa) {
                $v= $rivi[$aa];
                $data[$i][$j++]=$v;
            }
            $i++;
        }        
        $jason = array(
                   "draw"=>$draw,
                   "recordsTotal"=>$rivit["lkm"],
                   "recordsFiltered"=>$rivit["filtered"]
                );
        $jason["data"]=$data;
        return $jason;
    }
}
