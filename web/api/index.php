<?php
require("../globals.php");
require("$basepath/helpers/common.php");
$f3=require("$basepath/vendor/bcosca/fatfree-core/base.php");
$f3->set('AUTOLOAD',"$basepath/api/");
$f3->map('/kayttaja/@toiminta/@maare','APIKayttajat');
$f3->map('/laina/@toiminta/@maare', 'APILainat');
$f3->route('GET /',
           function() {
                die(_("Sivistysaukko, täällä ei ole mitään nähtävää"));
           }
          );
$f3->run();
?>