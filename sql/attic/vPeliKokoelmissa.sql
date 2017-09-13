drop view if exists vPeliKokoelmissa;
create view vPeliKokoelmissa as select p.*, kp.kokoelma, kp.tunniste as kokoelmanTunniste from peli as p left outer join kokoelmapeli as kp on p.tunniste=kp.peli;
