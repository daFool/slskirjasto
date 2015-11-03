<?php
class SLSGEEK {
    // http://www.boardgamegeek.com/xmlapi/boardgame/172933
    private $d; /** @var array $d data from geek as an array **/

/*
 
<yearpublished>2015</yearpublished>
<minplayers>2</minplayers>
<maxplayers>4</maxplayers>
<playingtime>20</playingtime>
<minplaytime>20</minplaytime>
<maxplaytime>20</maxplaytime>
<age>8</age>
<boardgamepublisher objectid="108">Gamewright</boardgamepublisher>
<boardgamedesigner objectid="82201">Darren Kisgen</boardgamedesigner>

<statistics page="1">
<ratings>
<usersrated>121</usersrated>
<average>7.24308</average>
<bayesaverage>5.74647</bayesaverage>
<ranks>
<rank type="subtype" id="1" name="boardgame" friendlyname="Board Game Rank" value="3125" bayesaverage="5.74647"/>
<rank type="family" id="4666" name="abstracts" friendlyname="Abstract Game Rank" value="117" bayesaverage="6.31703"/>
</ranks>
<stddev>1.67423</stddev>
<median>0</median>
<owned>330</owned>
<trading>10</trading>
<wanting>50</wanting>
<wishing>131</wishing>
<numcomments>103</numcomments>
<numweights>8</numweights>
<averageweight>2.25</averageweight>
</ratings>
</statistics>
*/

    function persilja($dom, $tagi) {
        $e = $dom->getElementsByTagName($tagi);
        $v="";
        foreach($e as $py) {
            $v.=" ";
            $v.=$py->nodeValue;
        }
        return $v;
    }

    function rank($dom) {
        $ranks = $dom->getElementsByTagName("rank");    
        foreach($ranks as $rank) {
            if($rank->getAttribute("name")!="boardgame")
                continue;
            return $rank->getAttribute("value");
        }
    }

    function __construct($geekurl) {
        $this->init($geekurl);
    }
    
    function process($m) {
        try {
            $url="http://www.boardgamegeek.com/xmlapi/boardgame/{$m[1]}?stats=1";
            $file = file_get_contents($url);
            if($file===FALSE) {
                $this->d["virhe"]=_("Ei onnistunut, joko timeout tai ei vain ole. {$url}");
                return;
            }
            $dom = new DOMDocument();
            $res = $dom->loadXML($file);
            $year = $this->persilja($dom, "yearpublished");
            $min = $this->persilja($dom, "minplayers");
            $max = $this->persilja($dom, "maxplayers");
            $aika = $this->persilja($dom, "playingtime");
            $julkaisija = $this->persilja($dom, 'boardgamepublisher');
            $suunnittelija = $this->persilja($dom, 'boardgamedesigner');
            $nimi = $this->persilja($dom, 'name');
            $ika = $this->persilja($dom, 'age');
            $score = $this->persilja($dom, 'average');
            
            $this->d["vuosi"]=trim($year);
            $this->d["pelaajia"]=trim("$min -$max");
            $this->d["julkaisija"] = trim($julkaisija);
            $this->d["suunnittelija"] = trim($suunnittelija);
            $this->d["virhe"]=false;
            $this->d["nimi"]=trim($nimi);
            $this->d["aika"]=trim($aika);
            $this->d["bggrank"]=$this->rank($dom);
            $this->d["age"]=trim($ika);
            $this->d["score"]=trim($score);
        }
        catch(Exception $e) {
            die($e->getMessage());
        }
        
    }
    function init($geekurl) {
        $this->d = array();
        $this->d["virhe"]=_("Huono geek-urli");
    
        try {
            $re = '/.*\/([0123456789]+)\/?$/';
            if (preg_match($re, trim($geekurl), $m)) {               
                $this->process($m);
                return;
            }
            
            $re = '/.*\/([0123456789]+)\/.*$/';
            if (preg_match($re, $geekurl, $m)) {
                $this->process($m);
                return;
            }
            die("|{$geekurl}| fail");
        }
        catch(Exception $e) {
            die("WTF? {$e->getMessage()}");
        }
    }
    function getResult() {
        return $this->d;
    }
}
?>