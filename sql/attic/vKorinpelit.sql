drop view if exists vKorinpelit;
create view vKorinpelit as
 SELECT kp.id AS koriid,
    vk.kokoelma,
    vk.tunniste,
    vk.nimi,
    vk.hylly,
    vk.paikka,
    vk.omistaja,
    vk.tila,
    vk.gtin,
    vk.alkuperainentunniste
   FROM korinpelit kp
     JOIN vkokoelma vk ON kp.peli::text = vk.tunniste::text;
