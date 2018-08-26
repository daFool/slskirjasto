<?php
namespace SLS;

class Pelintila extends \mosBase\Malli
{
    public function __construct(\mosBase\Database $db, \mosBase\Log $log) {        
        parent::__construct($db, $log, "vPelintila", array("primary"=>array("pt_tunniste")));
    }
}
?>