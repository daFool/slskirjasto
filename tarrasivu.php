<?php

?>
<!doctype html>
    <html lang="fi">
        <head>
            <title>Tarratesti</title>
            <style>
                body {
                    width: 210mm;
                    margin: 0mm;
                }
                
                .labelTL {
                    width: 45mm;
                    height: 22mm;
                    padding: 10mm 0mm 0mm 10mm;
                    margin: 0mm;
                    /* border: solid thin; */
                    float: left;
                }
                
                .labelL {
                    width: 45mm;
                    height: 30mm;
                    padding: 10mm 0mm 0mm 10mm;
                    margin: 0mm;
                    /* border: solid thin; */
                    float: left;
                }
                
                .label {
                    width: 55mm;
                    height: 30mm;
                    padding: 10mm 0mm 0mm 10mm;
                    margin: 0mm;
                    /* border: solid thin; */
                    float: left;
                }
                
                .labelU {
                    width: 55mm;
                    height: 22mm;
                    padding: 10mm 0mm 0mm 10mm;
                    margin: 0mm;
                    /* border: solid thin; */
                    float: left;
                }
                
            </style>
        </head>
        <body>
            <?php
            for($i=0;$i<21;$i++) {
                $k=sprintf("daFool%04d", $i);
                switch($i) {
                    case 0:
                    case 18:
                        $c="labelTL";
                        break;
                    case 1:
                    case 2:
                    case 19:
                    case 20:
                        $c="labelU";
                        break;
                    default:
                        if($i%3==0)
                            $c="labelL";
                        else
                            $c="label";
                        break;
                }
                ?>
                <div class="<?php echo $c;?>"><img src="tarratesti.php?teksti=<?php echo $k;?>"></div>
                <?php
            }
            ?>
        </body>
    </html>