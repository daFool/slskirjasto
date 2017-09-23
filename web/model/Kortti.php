<?php
class Kortti extends mosBase\malli {

    public function __construct(&$db, &$log) {
        parent::__construct($db, $log, "kortti", array("primary"=>array("id")));
    }
}
?>