<html lang="fi">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <script src="http://code.jquery.com/jquery-1.11.1.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <title><?php echo _("Tarratulostus");?></title>
        <style>
                body {
                    width: 240mm;
                    margin: 0mm;
                }
                
                .labelTL {
                    width: 70mm;
                    height: 40mm;
                    padding: 20mm 0mm 0mm 20mm;
                    margin: -17mm 0mm 0mm -15mm ;
 //                   background-color: rgb(252,251,250); 
                    float: left;
                }
                
                .labelL {
                    width: 70mm;
                    height: 48mm;
                    padding: 5mm 0mm 0mm 20mm;
                    margin: 0mm 0mm 0mm -15mm;
//                    background-color: rgb(248,255,255);
                    float: left;
                }
                
                .label {
                    width: 72mm;
                    height: 48mm;
                    padding: 5mm 0mm 0mm 10mm;
                    margin: 0mm;
 //                   background-color: rgb(230,230,250);
                    float: left;
                }
                
                .labelU {
                    width: 72mm;
                    height: 40mm;
                    padding: 20mm 0mm 0mm 10mm;
                    margin: -17mm 0mm 0mm 0mm;
//                    background-color: rgb(250,240,240);
                    /* border: solid thin; */
                    float: left;
                }
                
                .labelB {
                    width: 72mm;
                    height: 30mm;
                    padding: 5mm 0mm 0mm 10mm;
                    margin: 0mm 0mm 0mm 0mm;
//                    background-color: rgb(230,240,240);
                    /* border: solid thin; */
                    float: left;
                }
                
                .labelBL {
                    width: 70mm;
                    height: 30mm;
                    padding: 5mm 0mm 0mm 20mm;
                    margin: 0mm 0mm 0mm -15mm;
//                    background-color: rgb(240,230,250);
                    /* border: solid thin; */
                    float: left;                    
                }
                .page-break  {
                    clear: left;
                    display:block;
                    page-break-after:always;
                }
                
                @media print {
                    div.noprint img {
                        display:none;
                    }
                    div.noprint span {
                        display:none;
                    }
                    div.noprint {
                        background-color : transparent;
                    }
                }
                
                div.noprint {
                    background-color : rgb(252,252,242);
                } 
                
            </style>
        <script type="text/javascript">
            $(document).ready(function () {
                $("div").draggable({
                    start: handleDragStart,
                    cursor: 'move',
                    revert: "invalid",
                });
                $("div").droppable({
                    drop: handleDropEvent,
                    tolerance: "touch",                    
                });
                $(document).find("div").each(function() {
                    $(this).on("click", function () {
                        if ($(this).hasClass("noprint")) {
                            $(this).removeClass("noprint");
                        }
                        else {
                            $(this).addClass("noprint");
                        }
                    })
                });
            });
            
            function handleDragStart(event, ui) {
                $(this).css('z-index',9999);
            }
            function overlap(a, b) {
                ap = a.offset();
                bp = b.offset();
                
                ax1=ap.left;
                ax2=ap.left+a.width();
                ay1=ap.top;
                ay2=ap.top+a.height();
                
                bx1=bp.left;
                bx2=bp.left+b.width();
                by1=bp.top;
                by2=bp.top+b.height();
                
                iw = Math.max(0, Math.min(ax2,bx2)-Math.max(ax1,bx1));
                ih = Math.max(0, Math.min(ay2,by2)-Math.max(ay1,by1));
                ia = iw*ih;
                aa = a.width() * a.height();
                
                if (ia/aa >= 0.5) {
                    return true;
                }                
                return false;                
            }
            
            function getAndRemovePositionClass(a) {
                var positionClasses = ["labelTL", "labelU", "labelL", "label"];
                for(var i=0, l=positionClasses.length;i<l;i++) {
                    if (a.hasClass(positionClasses[i])) {
                        a.removeClass(positionClasses[i]);
                        return positionClasses[i];
                    }
                }                
            }
            
            function handleDropEvent(event, ui) {
                ui.draggable.draggable('option', 'revert', true);
                if(overlap($(this), ui.draggable)) {
                   // console.log("Overlap"+$(this).attr("id")+" "+ui.draggable.attr("id"));
                    backup = $(this).html();
                    bc = $(this).hasClass("noprint");
                    dc = ui.draggable.hasClass("noprint");
                    $(this).html(ui.draggable.html());
                    ui.draggable.html(backup);
                    if (bc) {
                        ui.draggable.addClass("noprint");//code
                    }
                    else {
                        ui.draggable.removeClass("noprint");
                    }
                    if (dc) {
                        $(this).addClass("noprint");
                    }
                    else {
                        $(this).removeClass("noprint");
                    }
                    // ui.draggable.addClass(bc);
                    //$(this).addClass(dc);
                }
                
                return false;
            }
        </script>
        </head>
        <body>
            <?php
            for($i=0;$i<21;$i++) {
                // $k=sprintf("daFool%04d", $i);
                $k = substr($t[$i]["viivakoodi"],0,12);
                $np = $t[$i]["noprint"];
                switch($i) {
                    case 0:
                        $c="labelTL";
                        break;
                    case 18:
                        $c="labelBL";
                        break;
                    case 1:
                    case 2:
                        $c="labelU";
                        break;
                    case 19:
                    case 20:
                        $c="labelB";
                        break;
                    default:
                        if($i%3==0)
                            $c="labelL";
                        else
                            $c="label";
                        break;
                }
                ?>
                <div class="<?php echo "$c$np";?>" id="<?php echo "d{$i}";?>" draggable="true"><img draggable="false" src="<?php echo $baseurl;?>/view/viivakooditarra.php?teksti=<?php echo $k;?>"><br/><span><?php echo $t[$i]["nimi"];?><br/>
                <?php echo $t[$i]["hylly"]." ".$t[$i]["hyllypaikka"]." ".$t[$i]["laatikko"];?></span><br/></div>                
            <?php
            }
            ?>
        </body>
    </html>