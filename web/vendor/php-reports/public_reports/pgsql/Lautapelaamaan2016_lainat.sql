-- Lautapelaamaan 2016 lainaukset
-- Kaikki Lautapelaamaan 2016 lainaukset aikajärjestyksessä


set timezone='GMT';
select to_char(l.lainattu at time zone 'UTC+02', 'DD HH24:MI') as koska,  p.nimi from
    (select lainattu, kokoelmapeli from laina where tapahtuma='Lautapelaamaan 2016' order by lainattu asc) as l
join kokoelmapeli as kp on (l.kokoelmapeli=kp.tunniste)
join peli as p on (p.tunniste=kp.peli);
