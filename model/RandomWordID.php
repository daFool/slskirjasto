<?php
class RandomWordID {
    private $wordList;
    private $wordCount;
    
    /**
     * Constructor for random word class
     * @param string $wordListFile Path to the word file
     * */
    public function __construct($wordListFile) {
        $this->wordList = file($wordListFile);
        if($this->wordList===false) {
            die("WTF?");
            throw new Exception("Tiedosto $wordListFile ei auennut");
        }
        $this->wordCount=count($this->wordList);
    }
    
    /**
     * Generates one word-based pseudorandom identifier
     * @param string $base Base to append to chosen word;
     * */
    public function give($base="") {
        $index = mt_rand(0, $this->wordCount-1);
        return trim($base.$this->wordList[$index]);
    } 
}
?>