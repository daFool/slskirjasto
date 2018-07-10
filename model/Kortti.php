<?php
class Kortti extends mosBase\malli {

    public function __construct(&$db, &$log) {
        parent::__construct($db, $log, "kortti", array("primary"=>array("numero")));
    }
    
       /** Tauluhaku
     * @param string $w where-ehto
     * @param array $d where-ehdon parametrit
     * @param int $sivu sivu, jota halutaan katsella
     *
     * Palauttaa 25 korttia siltä sivulta, joka pyydettiin
     * */
    public function tauluHaku($w, $d, $sivu) {
        $s = "select count(*) as lkm from kortti $w";
        $st = $this->pdoPrepare($s, $this->db);
        $this->pdoExecute($st, $d);
        $rivi= $st->fetch();
        $lkm = $rivi["lkm"];
        $sivuja = round($lkm / 25,0);
        if($sivu > $sivuja)
            $sivu = $sivuja;
        if($sivu < 0)
            $sivu = 0;
        $sivu = $sivu*25;
        $s = "select numero, lainaaja, pantti, annettu, palautettu from kortti $w order by numero asc limit 25 offset :sivu;";
        $st = $this->pdoPrepare($s, $this->db);
        $d["sivu"]=$sivu;
        $this->pdoExecute($st, $d);
        $rivit = $st->fetchAll(\PDO::FETCH_ASSOC);
        $tulos = array("sivuja"=>$sivuja, "rivit"=>$rivit);        
        return $tulos;
    }
}
?>