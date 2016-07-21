<?php
class Tapahtuma extends Model {
    public function __construct($db) {
        parent::__construct($db, "tapahtuma", array("nimi"), false, "tapahtuma", array("nimi"=>"string", "alkaa"=>"string", "loppuu"=>"string"));
    }
}
?>