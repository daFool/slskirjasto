drop materialized view if exists vKokoelmienPelit;
create materialized view vKokoelmienPelit as
    select  k.nimi as kokoelma, p.nimi, p.suunnittelija, p.julkaisija, p.kesto, p.pelaajia, p.luotu, p.julkaisijat, p.nimet, kp.kp_avain from
        (select kokoelma as kid, tunniste as kp_avain, peli from kokoelmapeli) as kp
    join
        (select nimi, suunnittelija, julkaisija, kesto, pelaajia, luotu, tunniste as peli_avain, nimet, julkaisijat from peli) as p
    on (kp.peli=p.peli_avain)
    join
        (select id, nimi from kokoelma) as k
    on (kp.kid=k.id);

create index julkaisija_idx on vKokoelmienPelit(kesto);