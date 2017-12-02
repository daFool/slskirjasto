drop view if exists vkokoelma;
create view vkokoelma as
select k.id as kid, k.nimi as knimi, k.omistaja as komistaja, k.julkisuus as kjulkisuus, kp.omistaja, kp.hylly, kp.paikka, kp.tila, kp.tunniste,
        case 
                when kp.nimiid is null then p.nimi 
                else p.nimet[nimiid] end as nimi,
        nimet from 
        (select nimi, omistaja, julkisuus, id from kokoelma) as k
join
        (select kokoelma, peli, omistaja, hylly, paikka, tila, nimiid, tunniste from kokoelmapeli) as kp
on (k.id = kp.kokoelma)
join
      (select nimi, tunniste, nimet from peli) as p
on (p.tunniste = kp.peli)