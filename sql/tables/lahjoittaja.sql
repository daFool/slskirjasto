drop table if exists lahjoittaja;
drop sequence if exists lahjoittajaAvaimet;
create sequence lahjoittajaAvaimet start 1;

create table lahjoittaja (
    id  int primary key default nextval('lahjoittajaAvaimet'),
    nimi    varchar(255) not null default 'Tuntematon lahjoittaja',
    verkkoosoite    varchar(255) not null default 'www.google.fi',
    like Pohjat INCLUDING ALL
);

comment on table lahjoittaja is 'Pelilahjoittajat';
comment on column lahjoittaja.id is 'Keinotekoinen avain';
comment on column lahjoittaja.nimi is 'Lahjoittajan nimi';
comment on column lahjoittaja.verkkoosoite is 'Lahjoittajan kotisivu tms';
