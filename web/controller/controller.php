<?php
/**
 * @author Mauri "mos" Sahlberg <mauri.sahlberg@gmail.com>
 * @license Apache License, Version 2.0 https://opensource.org/licenses/Apache-2.0
 * @copyright Copyright Mauri Sahlberg 2017, Helsinki
 * */

/**
 * Controllerien base
 *
 * Kaikille controllereille yhteiset toiminnot.
 * - Istuntojen hallinta,
 * - Käyttöliittymässä käytetyn Datatables-javascript-toteutuksen vaatiman tietorakenteen populointi.
 * */
class controller {
    /**
     * @var mosBase\conf $conf Konfiguraatio-objekti
     * */
    protected $conf;
    /**
     * @var mosBase\database $db Tietokantaolio
     * */
    protected $db;
    
    /*
     * @var mosBase\log $log Logi
     * */
    protected $log;
    
    /*
     * @var array $session Istunnon konfiguraatio ini-tiedostosta
     * */
    protected $session;
    
    /*
     * @var array $a Table-fetchiä varten esitettävän rivin sarakenimet alla olevan mallin taulussa
     * */
    
    /**
     * Konstruktori
     * @param mosBase\conf $conf Käytettävä konfiguraatio
     * @param mosBase\database $db Käytettävä tietokantayhteys
     * @param mosBase\log $log Käytettävä logi
     * */
    public function __construct(\mosBase\config $conf, \mosBase\database $db, \mosBase\log $log) {
        $this->conf=$conf;
        $this->db=$db;
        $this->session=$this->conf->get("Session");
        $this->log=$log;
        $this->a = array();
    }
    
    /**
     * Istunnon ylläpito
     * */
    public function session() {                
        session_name($this->session["SESSION_NAME"]);
        session_start();
        session_set_cookie_params($this->session["SESSION_TIMEOUT"], $this->session["SESSION_COOKIEPATH"]);
        if(isset($_SESSION["kori"])) {
            setcookie($this->session["KORIPIPARI"], $_SESSION["kori"], time()+$this->session["KORI_TIMEOUT"],$this->session["SESSION_COOKIEPATH"]);
        }
        if(!isset($_SESSION['activity'])) {
            $_SESSION['activity']=time();
            $logout=false;
        }
        else {
            if (time() - $_SESSION['activity'] > $this->session["SESSION_TIMEOUT"]) {
                $logout=true;
            } else {
                $_SESSION['activity']=time();
                $logout=false;
            }
        }

        if (isset($_REQUEST['logout']) || $logout===true) {
            if(isset($_SESSION['user'])) {
                $this->log->log($_SESSION["user"]["tunniste"],"Käyttäjä {$_SESSION['user']['tunniste']} kirjautui ulos.", __FILE__,__FUNCTION__,__LINE__, "AUDIT");
            }
            // Unset all of the session variables.
            $_SESSION = array();
    
            // If it is desired to kill the session, also delete the session cookie.
            // Note: This will destroy the session, and not just the session data!
            if (ini_get("session.use_cookies")) {
                $params = session_get_cookie_params();
                setcookie(session_name(), '', time() - 42000,
                    $params["path"], $params["domain"],
                    $params["secure"], $params["httponly"]
                );
            }

            // Finally, destroy the session.
            session_destroy();
            header("Location: ".$this->conf->get("General")["baseurl"]);
        }
        if(!isset($_SESSION['loggedin']) || !$_SESSION['loggedin']) {
            $google_client= new Google_Client();
            $google_client->setAuthConfigFile($this->session["googlejson"]);
            $google_client->setRedirectUri($this->session["REDIRECT_URI"]);
            $google_client->setScopes(array('https://www.googleapis.com/auth/userinfo.profile'));

            if (isset($_SESSION['access_token'])) {
              $google_client->setAccessToken($_SESSION['access_token']);
            }
        }
    }
    
    /**
     * Sähköpostin lähettäminen
     *
     * Käytetään lähettämään sähköpostia rekisteröityneelle käyttäjälle. Käyttää pear-mail-laajennosta sähköpostin
     * lähettämiseen.
     *
     * @todo Vaikuttaa erittäin epäilyttävältä! Fiksumpi tapa lienee vaihtaa toiseen lähettävään kalikkaan, phpMaileriin!
     * 
     * @param string $to Osoite, jonne postia lähetetään
     * @param string $otsikko Sähköpostin otsikko
     * @param string $message muotoilematon sähköposti
     * @return true
     * */
    function SLSMail(string $to, string $subject, string $message) {
        require_once "Mail.php";
        
        $e = $this->conf->get("Mail");
        $from = $e["from"];
        $host = $e["host"];
        $username = $e["user"];
        $password = $e["password"];
        $email_auth = (boolean)$e["auth"];
        $headers = array ('From' => $from,   'To' => $to,   'Subject' => $subject);
        if($email_auth) 
            $smtp = Mail::factory('smtp',   array ('host' => $host,     'auth' => true,     'username' => $username,     'password' => $password));
        else
            $smtp = Mail::factory('smtp', array('host'=>$host, 'auth'=>false));
            
        $mail = $smtp->send($to, $headers, $message);  
        if (PEAR::isError($mail)) {   die("<p>" . $mail->getMessage() . "</p>");  }
        return true;
    }
    
    /**
     * Sivun aloitus
     * @param F3 $f3 Fat Free Core objekti
     * */
    function page($f3) {
               /* $kp = new Kori($db);
        $kp->Koripallo(); */
        
 
    }
    
    /**
     * Datatables haku
     *
     * @param object $c Model-objekti, jonka tietoja käsitellään
     * */
    function tableFetch($c) {
        $draw = $_REQUEST["draw"]??false;
        $start = $_REQUEST["start"]??0;
        $length = $_REQUEST["length"]??10;
        $search = $_REQUEST["search"]??false;
        $order = $_REQUEST["order"]??false;
        $columns = $_REQUEST["columns"]??false;
        $user = $_SESSION["user"]??false;
        
       $od=false;
        if($order) {
            $od = "";
            $first=true;
            foreach($order as $o) {
                if(isset($this->a[$o["column"]])) {
                    $od.= $first ? "" : ", ";
                    $od.=$this->a[$o["column"]]." ".$o["dir"];
                    $first=false;
                }
            }
        }
        if($user) {
            $w = $c->permissionWhere($user["tunniste"], $user["tila"]);
            if($w!==False)
                $rivit = $c->tableFetch($start, $length, $od, $search, $w);
            else
                $rivit = $c->tableFetch($start, $length, $od, $search);
        }
        else
        {
            $rivit = $c->tableFetch($start, $length, $od, $search);
        }
        $data=array();
        $i=0;
        
        foreach($rivit["rivit"] as $rivi) {
            $j=0;
            foreach($this->a as $aa) {
                $v= $rivi[$aa];
                $data[$i][$j++]=$v;
            }
            $i++;
        }        
        $jason = array("draw"=>$draw, "recordsTotal"=>$rivit["lkm"], "recordsFiltered"=>$rivit["filtered"]);   
        $jason["data"]=$data;
        return $jason;
    }
}
?>