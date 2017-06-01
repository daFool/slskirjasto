<?php

class APIBase {
    protected function jsonVirhe($teksti) {
        $tulos=json_encode(array("tulos"=>$teksti));
        header("Content-type: application/json");
        echo $tulos;
        die();
    }
    
    /**
     * Käsittelee $_POST taulukon
     * @param string $nimi mitä muuttujaa etsitään
     * @param mixed $default oletusarvo, jos ei löydy
     * @param boolean $pakollinen, onko pakollinen arvo
     * @param string $virhe, virheilmoitus, jos parametri puuttuu
     * @return mixed $_POST-arvo tai default-arvo
     * */
    protected function processPOST($nimi, $default, $pakollinen, $virhe) {
        if(!isset($_POST[$nimi]) && $pakollinen)
            $this->jsonVirhe($virhe);
        return isset($_POST[$nimi]) && trim(urldecode($_POST[$nimi]))!="" ? urldecode($_POST[$nimi]) : $default;
    }
    
}