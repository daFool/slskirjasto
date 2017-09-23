#!/bin/sh
if [ $# -ne 1 ]; then
    echo "Usage: build_tables <newdatabase> ($#)"
    exit -1
fi

db=$1
PSQL="psql -v ON_ERROR_STOP=1"

function taulu {
    echo "**** $2 ****"
    $PSQL $db < $1 > /dev/null
    if [ $? -ne 0 ]; then
        echo "$2 feilasi"
        exit -1
    fi
}

taulu kayttaja.sql "Käyttäjä ja käyttäjätunnistus"
taulu kayttajarooli.sql "Käyttäjärooli"
taulu tapahtuma.sql "Tapahtuma"
taulu kokoelma.sql "Kokoelma"
taulu varasto.sql "Varasto"
taulu peli.sql "Peli"
taulu lahjoittaja.sql "Lahjoittaja"
taulu kokoelmapeli.sql "Kokoelmapeli"
taulu laina.sql "Laina"
taulu kortti.sql "Kortti"

