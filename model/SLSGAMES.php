<?php
/**
 * Pelit
 *
 * @author Mauri "mos" Sahlberg <mauri.sahlberg@gmail.com>
 * @license Apache License, Version 2.0 https://opensource.org/licenses/Apache-2.0
 * @copyright Copyright Mauri Sahlberg 2017, Helsinki
 * 
 * */

 namespace SLS;
 
 /**
  * Pelien rajapinta
  *
  * Pelien tallettaminen, etsiminen, muuttaminen ja poistaminen.
  * */
class SLSGAMES extends \mosBase\Malli {
    /**
     * @var array $games Hakutulos
     * */
    private $games;
    
    public const NIMI="nimi";
    public const SUUNNITTELIJA="suunnittelija";
    public const JULKAISIJA="julkaisija";
    public const BGGLINKKI="bgglinkki";
    public const KESTO="kesto";
    public const PELAAJIA="pelaajia";
    public const VIIVAKOODI="gtin";
    public const AVAIN="tunniste";
    public const BGGRANK="bggrank";
    public const BGGTUOTU="bggdate";
    public const IKÄ="age";
    public const ARVOSANA="score";
    public const NIMET="nimet";
    public const JULKAISIJAT="julkaisijat";
    
    public static $sarakkeet=[ NIMI, SUUNNITTELIJA, JULKAISIJA, BGGLINKKI, KESTO, PELAAJIA, VIIVAKOODI, AVAIN, BGGRANK, BGGTUOTU, IKÄ, ARVOSANA, NIMET, JULKAISIJAT ];
    /**
     * Konstruktori
     *
     * Asetetaan hakukentät
     * 
     * @param mosBase\database $db Database-handle
     * @param mosBase\log $log
     * */
    public function __construct(\mosBase\Database $db, \mosBase\Log $log) {
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
