drop view if exists vPelintila;
create view vPelinTila as
select coalesce(l.lainattu,'1970-01-01 01:02:03') as pt_lainattu, coalesce(l.lainaaja,'') as pt_lainaaja,
coalesce(kp.hylly,'')||' / '||coalesce(kp.paikka,'')||' / '||coalesce(kp.laatikko,'') as pt_koti,
p.nimi as pt_nimi, p.julkaisija as pt_julkaisija, p.vuosi as pt_vuosi, p.suunnittelija as pt_suunnittelija,
p.kesto as pt_kesto, p.pelaajia as pt_pelaajia, p.bggrank as pt_bggrank, p.score as pt_score, p.age as pt_age, kp.tunniste as pt_tunniste, p.bgglinkki as pt_bgg, kp.huomautus as huomautus
 from kokoelmapeli as kp join peli as p on kp.peli=p.tunniste left outer join laina as l on kp.tunniste=l.kokoelmapeli and l.palautettu is null;
 
 
 -- select * from vPelintila order by pt_lainattu desc;