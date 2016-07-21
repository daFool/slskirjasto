<html lang="fi">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <script src="http://code.jquery.com/jquery-1.11.1.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <title><?php echo _("Tarratulostus");?></title>
        <style>
       
                
            </style>
        <script type="text/javascript">
            var moved
            var mover
            
            $(document).ready(function () {
                /* $("div").draggable({
                    start: handleDragStart,
                    cursor: 'move',
                    revert: "invalid",
                    zIndex : 100,
                    refreshPositions: true
                });
                $("div").droppable({
                    drop: handleDropEvent,
                    tolerance: "touch",                    
                });
                */
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
                $("#sortable").sortable({
                    revert: true,
                    change: function(event, ui) {
                        var moverPosition;
                        var movedPosition;
                        var movedPrint;
                        
                        mover=ui.helper;
                        moved=ui.placeholder;
                        
                        $.each({0:"labelTL", 1:"labelBL", 2:"labelU", 3:"labelB", 4:"label"}, function (index, item) {
                            if ($(mover).hasClass(item)) {
                                moverPosition=item//code
                            }
                            if ($(moved).hasClass(item)) {
                                movedPosition=time
                            }
                        })
                        if ($(moved).hasClass("noprint")) {
                           movedPrint=false //code
                        }
                        else
                           movedPrint=true
                        $(mover).removeClass(moverPosition);
                        $(mover).addClass(movedPosition);
                        $(moved).removeClass(movedPosition);
                        $(moved).addClass(moverPosition);
                        $(moved).removeClass("noprint");                            
                        if ($(mover.hasClass("noprint"))) {
                            $(moved).addClass("noprint");                                              
                        }
                        $(mover).removeClass("noprint");
                        if (movedPrint) {
                            $(mover).addClass("noprint");
                        }
                        
                    }
                    });
            });
            
            function handleDragStart(event, ui) {
               // $(this).css('z-index',9999);
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
            
            function koe(event) {
                //code
            }
        </script>
        </head>
        <body id="sortable">
            <?php
            for($i=0;$i<24;$i++) {
                // $k=sprintf("daFool%04d", $i);
                $k = substr($t[$i]["viivakoodi"],0,12);
                $np = $t[$i]["noprint"];
                switch($i) {
                    case 0:
                        $c="labelTL";
                        break;
                    case 21:
                        $c="labelBL";
                        break;
                    case 1:
                    case 2:
                        $c="labelU";
                        break;
                    case 22:
                    case 23:
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