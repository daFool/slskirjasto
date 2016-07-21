/*
 * Tarkistaa yhden bootstrap-kontrollin tilan.
 * Oletetaan, että kontrollia edeltävä <div>, jossa on col-sm-luokka on kontrollin vanhempi.
 * Oletetaan, että kontrollia seuraava <span>, jolla on luokka "glyphicon" on kontrollin tilaspani.
 * @param jquery-objekti kontrolli Kontrollin
 * */
function check(kontrolli) {
    parent = $(kontrolli).parent('div [class^="col-sm"]');
    spani = $(kontrolli).next('span.glyphicon');
    if(!spani.hasClass("glyphicon")) {
        spani=false;
    }
        
    if ($(kontrolli).get(0).checkValidity()===true) {
        if($(parent).hasClass("has-error")) {
            $(parent).removeClass("has-error ");
            if(spani) {
                $(spani).removeClass("glyphicon-remove");
            }
        }
        $(parent).addClass("has-success");
        if(spani) {
                $(spani).addClass("glyphicon-ok");
        }
        if(!$(parent).hasClass("has-feedback")) {
            $(parent).addClass("has-feedback");
        }
                    
    } else {
        if($(parent).hasClass("has-success")) {
            $(parent).removeClass("has-success");
            if(spani) {
                $(spani).removeClass("glyphicon-ok");
            }
        }
        $(parent).addClass("has-error");
        if(spani) {
            $(spani).addClass("glyphicon-remove");
        }
        if(!$(parent).hasClass("has-feedback")) {
            $(parent).addClass("has-feedback");
        }
                    
    }
}