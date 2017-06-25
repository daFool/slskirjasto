-- Tapahtumakokoelman pelit
-- Pakkauslista tapahtumaan
-- VARIABLE: {
--  name: "koko",
--  display: "Kokoelma",
--  type : "select",
--  database_options : {
--	table : "kokoelma",
--	column : "nimi"
-- }
-- }

select tuotukokoelmasta, hylly,paikka, nimi from Kokoelmapeli as kp join Peli as p on kp.peli=p.tunniste where kokoelma='{{ koko|raw }}' order by tuotukokoelmasta, hylly, paikka, nimi;


