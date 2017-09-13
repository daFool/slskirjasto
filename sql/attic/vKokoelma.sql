drop view if exists vPelintila;
drop view if exists vpelikokoelmissa;
drop view if exists vkorinpelit;
drop view if exists vKokoelma;
create view vKokoelma as 
	select kokoelma, kp.tunniste, p.nimi, hylly, paikka, kp.omistaja, pelinTila(huomautus,kp.tunniste) as tila, gtin, alkuperainentunniste, k.omistaja as komistaja, k.julkisuus
	from 
		kokoelmapeli as kp 
	join 
		peli as p on (kp.peli=p.tunniste)
    join
        kokoelma as k on (kp.kokoelma=k.nimi);
grant select on vKokoelma to sls;
