drop sequence if exists Peliavaimet;
create sequence Peliavaimet start 1;
drop table if exists Peli;
create table Peli (
    Nimi           varchar(255)   not null,
    Suunnittelija  varchar(255)   not null,
    Julkaisija     varchar(255)   not null,
    BGGLinkki      varchar(255),
    Kesto          int,
    Pelaajia       varchar(255),
    GTIN           varchar(255),
    Tunniste       int primary key default nextval('Peliavaimet'),
    Vuosi          int            not null,
    bggrank        int,
    bggdate        timestamp with time zone,
    age            int,
    score          numeric,
    nimet          varchar(255)[],
    julkaisijat    varchar(255)[],
    like Pohjat INCLUDING ALL,

    unique(BGGLinkki),
    unique(Nimi,Suunnittelija,Julkaisija,Vuosi) 
);

comment on table Peli is 'Järjestelmän tuntemat lautapelit';
comment on column Peli.Nimi is 'Pelin primäärinimi BGG:ssä';
comment on column Peli.Suunnittelija is 'Pelin suunnittelija';
comment on column Peli.Julkaisija is 'Pelin oletusjulkaisija';
comment on column Peli.Kesto is 'Pelin kesto minuuteissa';
comment on column Peli.Pelaajia is 'Pelin tukema pelaajamäärä';
comment on column Peli.GTIN is 'Valmistajan viivakoodi';
comment on column Peli.Tunniste is 'Keinotekoinen avain';
comment on column Peli.Vuosi is 'Pelin julkaisuvuosi';
comment on column Peli.BGGRank is 'Pelin sijoitus BGG:ssä';
comment on column Peli.BGGDate is 'Koska BGG-tiedot on haettu';
comment on column Peli.Age is 'Mistä iästä alkaen peli on tarkoittettu';
comment on column Peli.Score is 'Pelin BGG pisteet';
comment on column Peli.Nimet is 'Pelin nimet';
comment on column Peli.Julkaisijat is 'Pelin julkaisijat';
