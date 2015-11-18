<?php
require("globals.php");
require("$basepath/helpers/common.php");

class Viivakoodi {
    private $kuva;
    #code
    public function __construct($fontti, $teksti) {
        $musta = new BCGColor(0,0,0);
        $valkoinen = new BCGColor(255,255,255);
        $kirjasin = new BCGFontFile($fontti,18);
        $koodi = new BCGcode39();
        $koodi->setScale(1);
        $koodi->setThickness(30);
        $koodi->setForegroundColor($musta);
        $koodi->setBackgroundColor($valkoinen);
        $koodi->setFont($kirjasin);
        $koodi->parse($teksti);
        $this->kuva = new BCGDrawing('', $valkoinen);
        $this->kuva->setBarcode($koodi);
        $this->kuva->setDPI(200);
        $this->kuva->draw();
    }
    
    public function viivakoodi() {
        header('Content-type: image/png');
        $this->kuva->finish(BCGDrawing::IMG_FORMAT_PNG);
    }
    
    public function virhe() {
        header('Content-type: image/png');
        $img = imagecreate(200,100);
        $valkoinen = imagecolorallocate($img, 255,255,255);
        $musta = imagecolorallocate($img, 0, 0, 0);
        imagestring($img, 1,10,10, iconv("UTF-8","ISO-8859-15",_("Tarran teko epäonnistui.")), $musta);
        imagepng($img);
        imagedestroy($img);
    }
}

?>