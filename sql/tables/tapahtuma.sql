drop table if exists kokoelma;
drop table if exists tapahtuma;
create table Tapahtuma (
    Nimi      varchar(255),
    Sijainti  varchar(255),
    Alkaa     date,
    Loppuu    date,
    like Pohjat INCLUDING ALL,
    primary key(Nimi)
);


comment on table Tapahtuma is 'Tapahtumat';
comment on column Tapahtuma.Nimi is 'Tapahtuman nimi';
comment on column Tapahtuma.Sijainti is 'Tapahtuman sijainti';
comment on column Tapahtuma.Alkaa is 'Tapahtuman alkupäivä';
comment on column Tapahtuma.Loppuu is 'Tapahtuman loppupäivä';
