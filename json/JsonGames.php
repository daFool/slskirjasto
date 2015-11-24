<?php
class JsonGames extends JsonBase {
    /**
     * Taulun rivin arvojen poikkeuskäsittely
     * @param string $key Sarake
     * @param mixed $value Sarakkeen arvo
     * @return mixed $value Sarakkeen käsitelty arvo
     * */
    public function tableRow($key, $value) {
        if($key=="bgglinkki") {
            $id = substr(strrchr($value,"/"),1);
            $value="<a href=\"$value\" target=\"_blank\">$id</a>";
        }
        return $value;
    }
}
?>