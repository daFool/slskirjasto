<?php
/**
 * Käyttöoikeudet
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
 * Käyttäjien lisäoikeudet
 *
 * <pre>
 * +----------------------+-------------+----------------------------------+
 * | Sarake               | Tyyppi      | Selitys                          |
 * +----------------------+-------------+----------------------------------+
 * | Kohde                | varchar     | Mihin oikeus on?                 |
 * | Kayttaja             | varchar     | Kenelle oikeus on?               |
 * | Roolinimi            | varchar     | Mikä oikeus                      |
 * | Kohdeavaini          | int         | Kohdetaulun avain, jos integer   |
 * | Kahdeavains          | varchar     | Kohdetaulun avain, jos string    |
 * </pre>
 *
 * @category  Model
 * @package   SLS-Kirjasto
 * @author    Mauri "daFool" Sahlberg <mauri.sahlberg@lautapeliseura.fi>
 * @copyright 2018 Mauri Sahlberg, Helsinki
 * @license   GPL-2.0 http://opensource.org/licenses/GPL-2.0
 * @link      http://www.github.com/daFool/slskirjasto
 **/
class Oikeudet extends \mosBase\Malli {
     
    /**
     * Constructor
     * 
     * @param \mosBase\Database $db  Database
     * @param \mosBase\Log      $log Log
     * */
    public function __construct(\mosBase\Database $db, \mosBase\Log $log) 
    {
    }
}