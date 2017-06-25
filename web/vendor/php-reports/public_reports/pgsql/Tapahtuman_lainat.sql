-- Tapahtumien lainaukset
-- Tapahtuman lainaukset aikajärjestyksessä
-- VARIABLE: { 
--  name: "tapahtuma", 
--  display: "Tapahtuma", 
--  type: "select", 
--  database_options : { table: "vLainaTapahtumat", column: "tapahtuma" } 
--}
--

--set timezone='GMT';
select to_char(l.lainattu at time zone 'UTC+02', 'DD HH24:MI') as koska,  p.nimi from
    (select lainattu, kokoelmapeli from laina where tapahtuma='{{tapahtuma}}' order by lainattu asc) as l
join kokoelmapeli as kp on (l.kokoelmapeli=kp.tunniste)
join peli as p on (p.tunniste=kp.peli);
