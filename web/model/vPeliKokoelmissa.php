<?php
class vPeliKokoelmissa extends View {
    public function __construct($db) {
        parent::__construct($db, "vPeliKokoelmissa");
    }
    
    /**
     * @param string $peli Pelin nimi
     * @return mixed False jos ei löydy, array kokoelmia, joissa peli on.
     * */
    public function select2($peli) {
        try {
            $s = "select kokoelma from vPelikokoelmissa where nimi=:peli group by kokoelma;";
            $st = $this->db->prepare($s);
            $res = $st->execute(array("peli"=>$peli));
            if($res===false or $st->rowCount()<1)
                return false;
            $rivit = $st->fetchAll(PDO::FETCH_ASSOC);
            return $rivit;
        }
        catch(PDOException $e) {
            $this->dbc->log($e->getMessage(), __FILE__,__METHOD__,__LINE__, "Error");
            return false;
        }
    }
    
    /**
     * @param string $peli Tuotavan pelin nimi
     * @param string $kokoelma Kokoelman nimi, josta tuodaan
     * @return mixed False jos ei onnistunut, pelin tiedot jos onnistui
     * */
    public function tuoKokoelmasta($peli, $kokoelma) {
        try {
            $s = "select * from vPeliKokoelmissa where nimi=:peli and kokoelma=:kokoelma limit 1;";
            $d = array("peli"=>$peli, "kokoelma"=>$kokoelma);
            $st = $this->db->prepare($s);
            $res = $st->execute($d);
            if($res===false || $st->rowCount()!=1)
                return false;
            $rivi = $st->fetch(PDO::FETCH_ASSOC);
            return $rivi;
        }
        catch(PDOException $e) {
            $this->dbc->log($e->getMessage(), __FILE__,__METHOD__,__LINE__,"ERROR");
            return false;
        }
    }
}
?>