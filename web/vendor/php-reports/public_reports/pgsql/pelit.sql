-- Pelit joita on lainattu vähintään viisi kertaa
-- Kaikki pelit, joita on lainattu vähintään viisi kertaa.

select * from pelitTop where lkm>=5 order by lkm desc;
