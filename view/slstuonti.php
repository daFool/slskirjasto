
    <title><?php echo _("Tuo SLS-pelit");?></title>
    </head>
    <body>
        <?php include_once("$basepath/view/navbar.html");?>
        <div class="container">
            <section class='col-xs-12 col-sm-6 col-md-8'>
                <?php if($error!="") {
                    ?>
                    <div class="error"><?php echo $error;?></div>
                <?php } ?>
                <p><?php printf(_("Tuotiin onnistuneesti %d peliä ja %d merkintää jätettiin käsittelemättä."),$o,$e);?> </p>
                <?php if($collection) { ?>
                <p><?php printf(_("Kokoelmaan SLS lisättiin %d peliä."),$ci);?></p>
                <?php } ?>
            </section>
        </div>
    </body>
</html>
