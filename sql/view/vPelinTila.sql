drop materialized view if exists vPelintila;
create materialized view vPelintila as
select  coalesce(l.lainattu, '1970-01-01 01:02:03') as pt_lainattu,
        coalesce(l.lainaaja, to_char(l.kortti,'9999999')) as pt_lainaaja,
        coalesce(kp.hylly,'')||' / '||coalesce(kp.laatikko,'') as pt_koti,
        case when kp.nimiid is null then p.nimi else p.nimet[kp.nimiid] end as pt_nimi,
        case when kp.julkaisijaid is null then p.julkaisija else p.julkaisijat[kp.julkaisijaid] end as pt_julkaisija,
        p.vuosi as pt_vuosi, p.suunnittelija as pt_suunnittelija, p.kesto as pt_kesto, p.pelaajia as pt_pelaajia,
        p.bggrank as pt_bggrank, p.score as pt_score, p.age as pt_age, kp.tunniste as pt_tunniste, p.bgglinkki as pt_bgg,
        kp.huomautus as huomautus, kp.tila as pt_tila, l.id as pt_id
from
        kokoelmapeli as kp
join
        peli as p
on (kp.peli = p.tunniste)
left outer join 
        laina as l
on (kp.tunniste = l.kokoelmapeli and l.palautettu is null);

create index pt_idindex on vPelintila(pt_id);
