<?php
/**
 * Materialisoitu näkymä vPelintila
 *
 * PHP version 7.1
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
 * Kokoelmapelin tilanne
 *
 * @category  Model
 * @package   SLS-Kirjasto
 * @author    Mauri "daFool" Sahlberg <mauri.sahlberg@lautapeliseura.fi>
 * @copyright 2018 Mauri Sahlberg, Helsinki
 * @license   GPL-2.0 http://opensource.org/licenses/GPL-2.0
 * @link      http://www.github.com/daFool/slskirjasto
 */

class Pelintila extends \mosBase\Malli
{
    /**
     * Konstruktori
     *
     * @param \mosBase\Database $db  Tietokanta
     * @param \mosBase\Log      $log Logi
     *
     * @todo Materialisoidun näkymän päivittäminen!
     * */
    public function __construct(\mosBase\Database $db, \mosBase\Log $log)
    {        
        parent::__construct(
            $db,
            $log,
            "vPelintila",
            array("primary"=>array("pt_tunniste"))
        );
    }
}
?>