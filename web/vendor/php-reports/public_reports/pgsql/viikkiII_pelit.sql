-- Viikki II, lainatut pelit
-- Huom! Agricola: All Creatures Big and Small oli oikea Agricola

select nimi, count(*) as lkm from ViikkiII group by nimi order by lkm desc;

