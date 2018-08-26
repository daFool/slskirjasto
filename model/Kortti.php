<?php
/**
 * Lainauskortit
 *
 * PHP version 7.1
 *
 * @category  Model
 * @package   SLS-Kirjasto
 * @author    Mauri "daFool" Sahlberg <mauri.sahlberg@lautapeliseura.fi>
 * @copyright 2018 Mauri Sahlberg, Helsinki
 * @license   GPL-2.0 http://opensource.org/licenses/GPL-2.0
 * @link      http://www.github.com/daFool/slskirjasto
 */

namespace SLS;

/**
 *  Lainauskortit
 *
 * @category  Model
 * @package   SLS-Kirjasto
 * @author    Mauri "daFool" Sahlberg <mauri.sahlberg@lautapeliseura.fi>
 * @copyright 2018 Mauri Sahlberg, Helsinki
 * @license   GPL-2.0 http://opensource.org/licenses/GPL-2.0
 * @link      http://www.github.com/daFool/slskirjasto
 *
 * <pre>
 * +--------------------+-------------+----------------------------------+
 * | Sarake             | Tyyppi      | Selitys                          |
 * +--------------------+-------------+----------------------------------+
 * | numero             | int         | Lainauskortin avain/numero       |
 * | lainaaja           | varchar     | Kortinhaltijan nimi              |
 * | pantti             | varchar     | Kortin pantti                    |
 * | annettu            | timestamp tz| Kortin antohetki                 |
 * | palautettu         | timestamp tz| Kortin palautushetki             |
 * | muokattu           | timestamp tz| Rivin muokkaushetki              |
 * | muokkaaja          | varchar     | Riviä muokannut tunnus           |
 * | luotu              | timestamp tz| Rivin luontihetki                |
 * | luoja              | varchar     | Rivin luonut tunnus              |
 **/

class Kortti extends \mosBase\Malli
{
    /**
     * Konstruktori
     *
     * @param \mosBase\Database $db  Tietokanta
     * @param \mosBase\Log      $log Logi
     * */
    public function __construct(\mosBase\Database $db, \mosBase\Log $log)
    {
        parent::__construct($db, $log, "kortti", array("primary"=>array("numero")));
    }
    
     /**
      * Tauluhaku
      *
      * @param string $w    where-ehto
      * @param array  $d    where-ehdon parametrit
      * @param int    $sivu sivu, jota halutaan katsella
      *
      * @return array Palauttaa 25 korttia siltä sivulta, joka pyydettiin
      * */
    public function tauluHaku(string $w, array $d, int $sivu)
    {
        $s = "select count(*) as lkm from kortti $w";
        $st = $this->pdoPrepare($s, $this->db);
        $this->pdoExecute($st, $d);
        $rivi= $st->fetch();
        $lkm = $rivi["lkm"];
        $sivuja = round($lkm / 25, 0);
        if ($sivu > $sivuja) {
            $sivu = $sivuja;
        }
        if ($sivu < 0) {
            $sivu = 0;
        }
        $sivu = $sivu*25;
        $s = "select numero, lainaaja, pantti, annettu, palautettu
            from kortti $w order by numero asc limit 25 offset :sivu;";
        $st = $this->pdoPrepare($s, $this->db);
        $d["sivu"]=$sivu;
        $this->pdoExecute($st, $d);
        $rivit = $st->fetchAll(\PDO::FETCH_ASSOC);
        $tulos = array("sivuja"=>$sivuja, "rivit"=>$rivit);        
        return $tulos;
    }
}
