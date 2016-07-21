<html lang="fi">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <script src="http://code.jquery.com/jquery-1.11.1.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <title><?php echo _("Tarratulostus");?></title>
        <link href="<?php echo $css;?>" rel="stylesheet">
        <script type="text/javascript">
            $(document).ready(function () {
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
                                movedPosition=item
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
                        
                    },
					stop : function(event, ui) {						
						$("body").children("div").each(function(index) {
							var divi=this;
							$.each({0:"labelTL", 1:"labelBL", 2:"labelU", 3:"labelB", 4:"label", 5:"labelL"}, function (index, item) {
								if ($(divi).hasClass(item)) {
								    $(divi).removeClass(item);
								}
							});
							switch (index) {
                                case 0:
									$(divi).addClass("labelTL");
									break;
								case <?php echo $koko-3;?>:
									$(divi).addClass("labelBL");
									break;
								case 1:
								case 2:
								    $(divi).addClass("labelU");
									break;
								case <?php echo $koko-2;?>:
								case <?php echo $koko-1;?>:
									$(divi).addClass("labelB");
									break;
								default:
									if(index%3==0)
										$(divi).addClass("labelL");
									else
									    $(divi).addClass("label");
										break;
							}
						});
					}
				});
				
				$(document).find("div").each(function() {
                    $(this).on("click", function () {
                        if ($(this).hasClass("noprint")) {
                            $(this).removeClass("noprint");
                        }
                        else {
                            $(this).addClass("noprint");
                        }
                    });
                });
            });
            
        </script>
        </head>
        <body id="sortable">
            <?php
            for($i=0;$i<$koko;$i++) {
                $k = substr($t[$i]["viivakoodi"],0,12);
                $np = $t[$i]["noprint"];
                switch($i) {
                    case 0:
                        $c="labelTL";
                        break;
                    case $koko-3:
                        $c="labelBL";
                        break;
                    case 1:
                    case 2:
                        $c="labelU";
                        break;
                    case $koko-2:
                    case $koko-1:
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
