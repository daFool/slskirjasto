<?php
class Oikeudet extends Model {
    protected $avaimet;
    
    public function __construct($db) {
        parent::__construct($db, "kayttajarooli", array("kohde", "kayttaja", "kohdeavains", "kohdeavaini"),false, array("tunniste"=>"string", "kohde"=>"string", "roolinimi"=>"string" ));        
    }
    
    public function exists($data) {
        try {
            $tavoite=3;
            $loytyi=0;
            $found=false;
            $this->clear();
            
            $d=array();
            $s = "select * from {$this->perustaulu} where ";
            foreach($this->avain as $avain) {
                if(isset($data[$avain])) {
                    $d[$avain]=$data[$avain];
                    if($loytyi>0)
                        $s.=" and ";
                    $loytyi++;
                    $s.="$avain=:$avain";
                }
            }
            if($loytyi!=$tavoite)
                return false;
            $st = $this->db->prepare($s);
            $st->execute($d);
            if(count($rows)>1) {
                $m="Eheys on rikki? {$this->perustaulu} ($s):".count($rows);
                $this->dbc->log($m, __FILE__, __METHOD__,__LINE__,"ERROR");
                return true;
            }
            if(count($rows)==1) {
                $this->cache = $rows[0];
                $this->empty = false;
                return true;
            }
            
            return false;                    
        }
        catch(PDOException $e) {
            print_r($s);
            print_r($d);
            die("Kantavirhe {$e->getMessage()}");
        }        
    }
    
    /**
     * Onko oikeuksia?
     * @param string $kuka Käyttäjän tunniste
     * @param string $rooli Haettava rooli
     * @param string $kohde Kohteen nimi
     * @param array $kohdeavain tyyppi ja arvo
     * @return boolean
     * */
    public function hasRole($kuka, $rooli, $kohde, $kohdeavain) {
        $d = array("kayttaja"=>$kuka, "roolinimi"=>$rooli, "kohde"=>$kohde);
        if($kohdeavain["tyyppi"]=="string")
            $d["kohdeavains"]=$kohdeavain["arvo"];
        else
            $d["kohdeavaini"]=$kohdeavain["arvo"];
        return $this->exists($d);
    }
    
    public function tableFetch($start, $length, $order, $search, $kohde) {
        $w = array();
        if($kohde["taulu"]=="kokoelma") {
            
            $w["w"] = "where kohde='kokoelma' and kohdeavains='{$kohde["avain"]}'";
            $w["gb"] = "";
        }
        return parent::tableFetch($start, $length, $order, $search, $w);
    }
}

?>