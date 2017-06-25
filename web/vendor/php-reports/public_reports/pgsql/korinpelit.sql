-- Korin pelit
-- Yhden korin kaikki pelit
-- 
-- VARIABLE: { 
--      name: "koriID", 
--      display: "Korin tunniste",
--      type: "text", 
-- }

set timezone='Europe/Helsinki';
select k.nimi as Kori, kokoelma, vk.nimi as peli, hylly, paikka, tila from (select nimi, id from Kori where id='{{koriID}}') as k
join
        vKorinPelit as vk
 on(vk.koriid=k.id)