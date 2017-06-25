-- Lautapelaamaan 2016 pelien lainat
-- Lautapelaamaan 2016 tapahtumassa lainatut pelit ja lainakertojen lkm

select p.nimi, lkm from
    (select kokoelmapeli, count(*) as lkm from laina where tapahtuma='Lautapelaamaan 2016' group by kokoelmapeli order by lkm desc) as l
join kokoelmapeli as kp on (l.kokoelmapeli=kp.tunniste)
join peli as p on (p.tunniste=kp.peli);