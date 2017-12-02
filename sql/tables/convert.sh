#!/bin/sh
if [ $# -ne 3 ]; then
    echo "Usage: $0 <srcdatabase> <srcscript> <dstdatabase>"
    exit -1;
fi

src=$1
srcscript=$2
dst=$3
PSQL="psql -v ON_ERROR_STOP=1"

echo "Pudotetaan lähtökanta $src"
dropdb $src
echo "Luodaan lähtökanta"
createdb $src
me=`whoami`
echo "Tuodaan data lähtökantaan"
#sed "s/adminzjhumse/$me/g" $srcscript | $PSQL $src
pg_restore -d $src $srcscript
if [ $? -ne 0 ]; then
    echo "Kannan sisällön luonti epäonnistui";
    exit -1;
fi;
echo "Fixataan lähtökantaa"
$PSQL $src <<here
    alter table kayttaja rename column lisatty to luotu;
    alter table tapahtuma rename column lisatty to luotu;
    alter table kokoelma rename column lisatty to luotu;
    alter table varasto rename column osoite to katuosoite;
    alter table peli rename column lisatty to luotu;
    update kokoelma set id='RP2015' where nimi='Ropecon 2015';
    update kokoelma set id='VP2015' where nimi='LautapelipäiväViikki';
    grant all on all tables in schema public to sls;
    update peli set bgglinkki=null where bgglinkki='';
    alter table laina rename column modified to muokattu;
    update lahjoittaja set verkkoosoite='www.google.fi' where verkkoosoite is null;
here
echo "Tuodaan kohdekantaan käyttäjät"
$PSQL $dst <<here
    truncate table kayttaja cascade;
    truncate table kayttajarooli cascade;
    truncate table tapahtuma cascade;
    truncate table varasto cascade;
    truncate table kokoelma cascade;
    truncate table peli cascade;
    grant all on all tables in schema public to sls;
    grant all on all sequences in schema public to sls;
here
pg_dump --table kayttaja --data $src|$PSQL $dst
$PSQL $dst <<here
    update kayttaja set tila='superadmin' where tunniste='historia';
here
echo "Tuodaan käyttäjätunnistus"
pg_dump --table kayttajatunnistus --data $src|$PSQL $dst
echo "Tuodaan kohdekantaan käyttäjäroolit"
pg_dump --table kayttajarooli --data $src|$PSQL $dst
echo "Tuodaan kohdekantaan tapahtumat"
pg_dump --table tapahtuma --data $src|$PSQL $dst
echo "Tuodaan kohdekantaan varastot"
pg_dump --table varasto --data $src|$PSQL $dst
echo "Tuodaan kohdekantaan kokoelmat"
pg_dump --table kokoelma --data $src|$PSQL $dst
echo "Tuodaan lahjoittajat"
pg_dump --table lahjoittaja --data $src|$PSQL $dst
echo "Tuodaan kohdekantaan pelit"
goo="adsf"
while [ "$goo" != "" ]; do
    sleep 10
    goo=`./fixpeli.php $src`
    echo $goo    
done
    
pg_dump --table peli --data $src|grep -v peli_tunniste_seq|$PSQL $dst
echo "Tuodaan kokoelmapelit"
./kokoelmapelit.php $src $dst
echo "Tuodaan lainat"
pg_dump --table laina --data $src|$PSQL $dst
echo "Fiksataan lainat"
$PSQL $dst <<here
with foo as
    ( select p.nimi, p.tunniste, kp.tunniste as kp from kokoelmapeli as kp join peli as p on (kp.peli=p.tunniste))
update laina set peli=foo.nimi, peliid=foo.tunniste from laina as l join foo on (l.kokoelmapeli=foo.kp)
where laina.kokoelmapeli=foo.kp;
here
