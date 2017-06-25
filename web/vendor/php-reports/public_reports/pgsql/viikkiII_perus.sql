-- Viikin pelipäivät II
-- Viikin pelipäivien 20.8.2016 - 21.8.2016 perustilastot

select 'lainaajia' as n, count(*) as lkm from (select count(*) as lkm from ViikkiII group by lainaaja) as f
UNION
select 'lainoja' as n, count(*) as lkm from ViikkiII 
UNION
select 'Eri pelejä' as n, count(*) from (select count(*) as lkm from ViikkiII group by kokoelmapeli) as g;

