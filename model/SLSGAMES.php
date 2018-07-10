<?php
/**
 * Pelit
 *
 * @author Mauri "mos" Sahlberg <mauri.sahlberg@gmail.com>
 * @license Apache License, Version 2.0 https://opensource.org/licenses/Apache-2.0
 * @copyright Copyright Mauri Sahlberg 2017, Helsinki
 * 
 * */

 /**
  * Pelien rajapinta
  *
  * Pelien tallettaminen, etsiminen, muuttaminen ja poistaminen.
  * */
class SLSGAMES extends mosBase\malli {
    /**
     * @var array $games Hakutulos
     * */
    private $games;
    /**
     * Konstruktori
     *
     * Asetetaan hakukentät
     * 
     * @param mosBase\database $db Database-handle
     * @param mosBase\log $log
     * */
    public function __construct(\mosBase\database $db, \mosBase\log $log) {
        $hakukentat=array();
        
        $hakukentat[0]["tyyppi"]="string";
        $hakukentat[0]["nimi"]="nimi";        
       
        $hakukentat[1]["tyyppi"]="string";
        $hakukentat[1]["nimi"]="suunnittelija";        
        
        $hakukentat[2]["tyyppi"]="string";
        $hakukentat[2]["nimi"]="julkaisija";        
        
        $hakukentat[3]["tyyppi"]="string";
        $hakukentat[3]["nimi"]="gtin";        
        
        $hakukentat[4]["tyyppi"]="int";
        $hakukentat[4]["nimi"]="kesto";        
        
        $hakukentat[5]["tyyppi"]="string";
        $hakukentat[5]["nimi"]="pelaajia";        
        
        $hakukentat[6]["tyyppi"]="int";
        $hakukentat[6]["nimi"]="tunniste";
        
        $hakukentat[7]["tyyppi"]="stringA";
        $hakukentat[7]["nimi"]="nimet";
        
        $hakukentat[8]["tyyppi"]="stringA";
        $hakukentat[8]["nimi"]="julkaisijat";
        
        parent::__construct($db, $log, "peli", array("primary"=>array("tunniste")), "", $hakukentat);            
    }
    
    public function permissionWhere($kuka, $taso) {
        if($taso=='superadmin')
            return False;
        return $w="julkisuus='avoin' or omistaja='$kuka'";
    }
}
?>
