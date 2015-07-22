-- ======================================================================
-- ===   Sql Script for Database : PostgreSQL db
-- ===
-- === Build : 31
-- ======================================================================

BEGIN WORK;
-- ======================================================================

DROP TABLE Laina;
DROP TABLE KokoelmaPeli;
DROP TABLE Logi;
DROP TABLE KayttajaTunnistus;
DROP TABLE Peliarvio;
DROP TABLE Arvio;
DROP TABLE Tagiehdotus;
DROP TABLE Pelitagi;
DROP TABLE Tagi;
DROP TABLE Kayttajarooli;
DROP TABLE Varasto;
DROP TABLE Kokoelma;
DROP TABLE Tapahtuma;
DROP TABLE Lahjoittaja;
DROP TABLE Peli;
DROP TABLE Kayttaja;

-- ======================================================================

CREATE TABLE Kayttaja
  (
    Nimi                varchar(255)   not null,
    SLSJasenNumero      int8,
    Puhelin             varchar(255),
    Sahkoposti          varchar(255),
    syntymavuosi        int2,
    Sukupuoli           varchar(255),
    Tunniste            varchar(255),
    Vahvistus           varchar(255),
    VahvistusLahetetty  timestamp,
    Tila                varchar(10),
    Lisatty             timestamp      default now(),

    primary key(Tunniste),
    unique(SLSJasenNumero,Tila),

    CHECK(Tila IN ('lainaaja', 'prospekti', 'käyttäjä', 'superadmin', 'admin'))
  );

-- ======================================================================

CREATE TABLE Peli
  (
    Nimi           varchar(255)   not null,
    Suunnittelija  varchar(255)   not null,
    Julkaisija     varchar(255)   not null,
    BGGLinkki      varchar(255),
    Kesto          int2,
    Pelaajia       varchar(255),
    GTIN           varchar(255),
    Tunniste       serial         not null,
    Lisatty        timestamp      default now(),
    Vuosi          int2           not null,

    primary key(Tunniste),
    unique(Nimi,Suunnittelija,Julkaisija,Vuosi)
  );

-- ======================================================================

CREATE TABLE Lahjoittaja
  (
    Nimi          varchar(255)   not null,
    Verkkoosoite  varchar(255),

    primary key(Nimi)
  );

-- ======================================================================

CREATE TABLE Tapahtuma
  (
    Nimi      varchar(255),
    Sijainti  varchar(255),
    Alkaa     date,
    Loppuu    date,

    primary key(Nimi)
  );

-- ======================================================================

CREATE TABLE Kokoelma
  (
    Nimi       varchar(255),
    Laji       int2           not null,
    Omistaja   varchar(255),
    Tapahtuma  varchar(255),
    Lisatty    timestamp      default now(),

    primary key(Nimi),

    foreign key(Omistaja) references Kayttaja(Tunniste) on update CASCADE on delete SET NULL,
    foreign key(Tapahtuma) references Tapahtuma(Nimi) on update CASCADE on delete SET NULL
  );

-- ======================================================================

CREATE TABLE Varasto
  (
    Nimi    varchar(255),
    Osoite  varchar(255)   not null,

    primary key(Nimi)
  );

-- ======================================================================

CREATE TABLE Kayttajarooli
  (
    Kohde      varchar(255),
    Kayttaja   varchar(255),
    Roolinimi  varchar(255),

    primary key(Kohde,Kayttaja,Roolinimi),

    foreign key(Kayttaja) references Kayttaja(Tunniste) on update CASCADE on delete CASCADE
  );

-- ======================================================================

CREATE TABLE Tagi
  (
    Nimi     varchar(255),
    Selitys  varchar(255),
    Lisatty  date,
    Lisaaja  varchar(255),

    primary key(Nimi),

    foreign key(Lisaaja) references Kayttaja(Tunniste) on update CASCADE on delete SET NULL
  );

-- ======================================================================

CREATE TABLE Pelitagi
  (
    Tagi     varchar(255),
    Lisatty  timestamp,
    Lisaaja  varchar(255),
    Peli     int,

    primary key(Lisaaja,Peli),

    foreign key(Tagi) references Tagi(Nimi) on update CASCADE on delete SET NULL,
    foreign key(Lisaaja) references Kayttaja(Tunniste) on update CASCADE on delete CASCADE,
    foreign key(Peli) references Peli(Tunniste) on update CASCADE on delete CASCADE
  );

-- ======================================================================

CREATE TABLE Tagiehdotus
  (
    Ehdotettu  timestamp,
    Ehdottaja  varchar(255),
    Laji       varchar(255)   not null,
    Tagi       varchar(255),
    Nimi       varchar(255)   not null,
    Selitys    varchar(255)   not null,

    foreign key(Ehdottaja) references Kayttaja(Tunniste) on update CASCADE on delete CASCADE,
    foreign key(Tagi) references Tagi(Nimi) on update CASCADE on delete CASCADE
  );

-- ======================================================================

CREATE TABLE Arvio
  (
    Nimi     varchar(255),
    Selitys  varchar(255),
    Minimi   numeric,
    Maksimi  numeric,

    primary key(Nimi)
  );

-- ======================================================================

CREATE TABLE Peliarvio
  (
    Peli      int,
    Arvioija  varchar(255),
    Arvo      numeric,

    primary key(Peli,Arvioija),

    foreign key(Peli) references Peli(Tunniste) on update CASCADE on delete CASCADE,
    foreign key(Arvioija) references Kayttaja(Tunniste) on update CASCADE on delete CASCADE
  );

-- ======================================================================

CREATE TABLE KayttajaTunnistus
  (
    Kayttaja        varchar(255),
    Tyyppi          varchar(255),
    Salaisuusavain  varchar(255),
    Salaisuus       varchar(255),

    primary key(Kayttaja,Tyyppi,Salaisuusavain,Salaisuus),

    foreign key(Kayttaja) references Kayttaja(Tunniste) on update CASCADE on delete CASCADE
  );

-- ======================================================================

CREATE TABLE Logi
  (
    kuka      varchar(255),
    koska     timestamptz    default now(),
    mita      text           not null,
    tiedosto  varchar(255),
    mika      varchar(255),
    rivi      int4,
    luokka    varchar(255),

    foreign key(kuka) references Kayttaja(Tunniste)
  );

-- ======================================================================

CREATE TABLE KokoelmaPeli
  (
    Kokoelma     varchar(255),
    Peli         int,
    Omistaja     varchar(255),
    Lahjoittaja  varchar(255),
    Hylly        varchar(255),
    Paikka       varchar(255),
    Varasto      varchar(255),
    Laatikko     varchar(255),
    Kunto        varchar(255),
    Huomautus    varchar(255),
    Tunniste     varchar(255),
    Lisatty      date           default now()::date,
    Lisaaja      varchar(255),
    Muokattu     varchar(255),
    Muokkaaja    varchar(255),

    primary key(Tunniste),

    foreign key(Kokoelma) references Kokoelma(Nimi) on update CASCADE on delete CASCADE,
    foreign key(Peli) references Peli(Tunniste) on update CASCADE on delete CASCADE,
    foreign key(Omistaja) references Kayttaja(Tunniste) on update CASCADE on delete CASCADE,
    foreign key(Lahjoittaja) references Lahjoittaja(Nimi) on update CASCADE on delete CASCADE,
    foreign key(Varasto) references Varasto(Nimi) on update CASCADE on delete CASCADE,
    foreign key(Lisaaja) references Kayttaja(Tunniste) on update CASCADE on delete SET NULL,
    foreign key(Muokkaaja) references Kayttaja(Tunniste) on update CASCADE on delete SET NULL
  );

-- ======================================================================

CREATE TABLE Laina
  (
    Lainaaja      varchar(255),
    Lainattu      timestamp      not null,
    Kokoelmapeli  varchar(255),
    Palautus      varchar(255),
    Pantti        varchar(255),
    Palautettu    timestamp,
    Tapahtuma     varchar(255),
    Modified      timestamp      default now(),

    foreign key(Lainaaja) references Kayttaja(Tunniste) on update CASCADE on delete CASCADE,
    foreign key(Kokoelmapeli) references KokoelmaPeli(Tunniste) on update CASCADE on delete CASCADE,
    foreign key(Tapahtuma) references Tapahtuma(Nimi) on update CASCADE on delete CASCADE
  );

-- ======================================================================

COMMIT;
grant all on all tables in schema public to sls;
-- ======================================================================

