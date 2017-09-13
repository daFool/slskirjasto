drop table if exists laina;
drop table if exists kokoelmapeli;
drop table if exists kokoelma;
drop table if exists tapahtuma;
create table Tapahtuma (
    Nimi      varchar(255),
    Sijainti  varchar(255),
    Alkaa     date,
    Loppuu    date,
    Omistaja    varchar(255),
    like Pohjat INCLUDING ALL,
    foreign key(Omistaja) references kayttaja(tunniste) on delete set null on update cascade,
    primary key(Nimi)
);


comment on table Tapahtuma is 'Tapahtumat';
comment on column Tapahtuma.Nimi is 'Tapahtuman nimi';
comment on column Tapahtuma.Sijainti is 'Tapahtuman sijainti';
comment on column Tapahtuma.Alkaa is 'Tapahtuman alkupäivä';
comment on column Tapahtuma.Loppuu is 'Tapahtuman loppupäivä';
comment on column Tapahtuma.omistaja is 'Tapahtuman omistaja';
