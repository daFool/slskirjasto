drop materialized view if exists vkokoelma;
create materialized view vkokoelma as
select k.id as kid, k.nimi as knimi, k.omistaja as komistaja, k.julkisuus as kjulkisuus, kp.omistaja as omistaja, kp.hylly as hylly,
    kp.paikka as paikka, kp.tila as tila, kp.tunniste as kokoelmapeli,
        case 
                when kp.nimiid is null then p.nimi 
                else p.nimet[nimiid] end as nimi,
        nimet
from 
        (select nimi, omistaja, julkisuus, id from kokoelma) as k
join
        (select kokoelma, peli, omistaja, hylly, paikka, tila, nimiid, tunniste from kokoelmapeli) as kp
on (k.id = kp.kokoelma)
join
      (select nimi, tunniste, nimet from peli) as p
on (p.tunniste = kp.peli);

create index kokoelma_idx on vkokoelma(kid);
create index kokoelmapeli_idx on vkokoelma(kokoelmapeli);

comment on materialized view vkokoelma is 'Materialisoitu kokoelmapelinäkymä';
comment on column vkokoelma.kid is 'Kokoelman tunniste';
comment on column vkokoelma.knimi is 'Kokoelman nimi';
comment on column vkokoelma.komistaja is 'Kokoelman omistaja';
comment on column vkokoelma.kjulkisuus is 'Kokoelman julkisuus';
comment on column vkokoelma.omistaja is 'Kokoelmapelin omistaja';
comment on column vkokoelma.hylly is 'Pelin hylly/hyllykkö';
comment on column vkokoelma.paikka is 'Pelin paikka hyllyllä/hyllytaso';
comment on column vkokoelma.tila is 'Pelin tila';
comment on column vkokoelma.kokoelmapeli is 'Pelin tunniste';
comment on column vkokoelma.nimi is 'Pelin nimi';
comment on column vkokoelma.nimet is 'Pelin nimet';