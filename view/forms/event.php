<?php
?>
<div class="modal fade" id="tapahtumam">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"><?php echo _("Tapahtuman tiedot");?></h4>
            </div>

            <div class="modal-body">
                <form name="tapahtuma" id="tapahtuma">

                    <div class="form-group" id="tanimig">
                        <label for="tanimi" class="control-label"><?php echo _("Tapahtuman nimi:");?> </label>
                        <input type="text" id="tanimi" size="40" placeholder="Lautapelaamaan 2014" maxlength="255"
                            <?php echo returnValues("tnimi");?> class="form-control" required/>
                        <span id="tanimic" class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        <p class="help-block"><?php echo _("Tapahtuman nimi, pakollinen, maksimissaan 255 merkkiä.");?></p>
                    </div>

                    <div class="form-group" id="tasijaintig">
                        <label for="tasijainti" class="control-label"><?php echo ("Sijainti:");?></label>
                        <input type="text" id="tasijainti" placeholder="Kaapelitehdas, Helsinki" size="40" maxlength="255"
                        <?php echo returnValues("sijainti");?> class="form-control" required/>
                        <span id="tasijaintic" class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        <p class="help-block"><?php echo _("Tapahtuman sijainti, pakollinen, maksimissaan 255 merkkiä.");?></p>
                    </div>

                    <div class="form-group" id="talkug">
                        <label for="talku" class="control-label"><?php echo ("Tapahtuma alkaa:");?></label>
                        <input type="date" id="talku" size="8" maxlength="20" required <?php echo returnValues("alkupvm");?> class="talku"/>							
                        <p class="help-block"><?php echo _("Tapahtuman alkuajankohta: pp.kk.vvvv, pakollinen.");?></p>
                    </div>

                    <div class="form-group" id="tloppug">
                        <label for="tloppu" class="control-label"><?php echo ("Tapahtuma loppuu:");?></label>
                        <input type="date" id="tloppu" size="8" required maxlength="20" <?php echo returnValues("loppupvm");?> />
                        <p class="help-block"><?php echo _("Tapahtuman loppuajankohta: pp.kk.vvvv, pakollinen.");?></p>
                    </div>                        

                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo _("Sulje");?></button>
                <button id="tatalleta" type="button" disabled="true" class="btn btn-primary"><?php echo _("Talleta");?></button>
            </div>

        </div>
    </div>
</div>
