<?php
/**
 * Pelien tuonti anybodystä
 *
 * @package SLS-Kirjasto
 * @license http://opensource.org/licenses/GPL-2.0
 * @author Mauri "mos" Sahlberg
 *
 * */
//$file=file("http://anybo.dy.fi/pelikirjasto/list_games.php");
if(isset($_REQUEST["json"])) 
    $dump=true;
else
    $dump=false;

function tuoSLS($url="http://anybo.dy.fi/pelikirjasto/") {    
    $file=file($url);
    if(!$file) {
        die("Die Macher!");
    }
    $doc = new DOMDocument();
    $res = $doc->loadHTML('<?xml encoding="UTF-8">'.implode("",$file));
    if(!$res)
        die("Failure!");
    
    $pelit = array();
    $i=0;
    $rows = $doc->getElementsByTagName("tr");
    foreach($rows as $row) {
        if(!$row->hasAttribute("class"))
            continue;
        $class = $row->getAttribute("class");
        if(!$class || $class=="history")
            continue;
        $cels = $row->getElementsByTagName("td");
        foreach($cels as $celnro=>$cel) {
            $celvalue = trim($cel->nodeValue);
            switch($celnro) {
                case 0:
                    $i=$celvalue;
                    $pelit[$i]['id']=$celvalue;
                    $pelit[$i]['huomautus']="";
                    $pelit[$i]['lahjoittaja']="";
                    break;
                case 1:
                    $pelit[$i]['bgg']="";
                    $pelit[$i]['link']="";
                    if($cel->hasChildNodes()) {
                        $link = $cel->getElementsByTagName("a");
                        if($link->length) {
                            $linkki = $link->item(0)->getAttribute("href")." ";
                            $rel='/(.*)\/(.*)/';
                            preg_match($rel,$linkki, $m);
                            $id=trim($m[2]);
                            $link=trim($m[0]);
                            $pelit[$i]['bgg']=$id;
                            $pelit[$i]['link']=$link;
                        }
                    }
                    $pelit[$i]['nimi']=$celvalue;
                    break;
                case 2:
                    $pelit[$i]['lokaatio']=$celvalue;
                    break;
                case 3:
                    $pelit[$i]['huomautus']=$celvalue;
                    $crex='/Courtesy of (.*)/';
                    if(preg_match($crex, $celvalue, $m)) {
                        $pelit[$i]['lahjoittaja']=trim($m[1]);
                        break;
                    }
                    $lrex='/Lahjoittaja:(.*)/';
                    if(preg_match($lrex, $celvalue, $m)) {
                        $pelit[$i]['lahjoittaja']=trim($m[1]);
                    }
                    break;
            }
        }
    }

    return $pelit;
}

if($dump)
    echo json_encode(tuoSLS());
?>