drop view if exists vKayttajaRoolit;
create view vKayttajaRoolit as select u.Tunniste, u.Nimi, u.Tila, kr.Kohde, kr.Roolinimi from Kayttaja as u join KayttajaRooli as kr on u.tunniste=kr.Kayttaja;
grant all on vKayttajaRoolit to sls;
