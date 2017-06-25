-- Kaikki korit
-- Tällä raportilla näkee kaikki järjestelmään luodut korit

set timezone='Europe/Helsinki';

SELECT
    ko.nimi as "Korin nimi",
    ko.lisatty as "Luotu",
    ko.paivitetty as "Päivitetty",
    k.nimi as "Omistaja"
FROM
    kori as ko
    join
    kayttaja as k
    on (ko.omistaja=k.tunniste)
ORDER BY
    ko.nimi asc
    