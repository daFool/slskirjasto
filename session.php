<?php
/**
 * Istunnon tila
 *
 * Ensimmäinen ladattava asia aina globals.php:n jälkeen.
 * 
 * Jos lomakkeella tai urlissa on logout, kirjaa käyttäjän pihalle ja sulkee istunnon. Yrittää ensisijaisesti pitää käyttäjää
 * kirjautuneena Googlen avulla.
 * 
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 * */
session_name(SESSION_NAME);
session_set_cookie_params(SESSION_TIMEOUT, SESSION_COOKIEPATH);
session_cache_expire(SESSION_TIMEOUT);
session_cache_limiter("nocache");
session_start();

if(!isset($_SESSION['activity'])) {
    $_SESSION['activity']=time();
    $logout=false;
}
else {
    if (time() - $_SESSION['activity'] > SESSION_TIMEOUT) {
        $logout=true;
    } else {
        $_SESSION['activity']=time();
        $logout=false;
    }
}

if (isset($_REQUEST['logout']) || $logout===true) {
    if(isset($_SESSION['user'])) {
        require_once("$basepath/helpers/database.php");
        $db = new SLSDB();
        $db->log("Käyttäjä {$_SESSION['user']['tunniste']} kirjautui ulos.", __FILE__,__FUNCTION__,__LINE__, "AUDIT");
    }
    
    // Unset all of the session variables.
    $_SESSION = array();
    
    // If it's desired to kill the session, also delete the session cookie.
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
    header("Location: $baseurl");
}
if(!isset($_SESSION['loggedin']) || !$_SESSION['loggedin']) {
    require_once("$basepath/helpers/google_auth.php");

}
?>
