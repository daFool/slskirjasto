drop view if exists vKokoelma;
create view vKokoelma as 
	select kokoelma, kp.tunniste, nimi, hylly, paikka, omistaja, pelinTila(huomautus,kp.tunniste) as tila, gtin, alkuperainentunniste
	from 
		kokoelmapeli as kp 
	join 
		peli as p on (kp.peli=p.tunniste);
grant select on vKokoelma to sls;
