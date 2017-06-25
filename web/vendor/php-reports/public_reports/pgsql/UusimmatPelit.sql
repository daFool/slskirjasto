-- Kokoelmien uusimmat pelit
-- Pelit, jotka on lisätty kokoelmiin viimeisen 1 kk:n aikana

select nimi, kokoelma, kp.lisatty, omistaja from
    (select tunniste, kokoelma, lisatty, peli, omistaja from kokoelmapeli where lisatty > (now() - interval '1 month')
        and (huomautus is null or huomautus<>'poistettu') and tuotukokoelmasta is null order by lisatty desc) as kp
    join peli as p on(kp.peli=p.tunniste) order by kp.lisatty desc;

