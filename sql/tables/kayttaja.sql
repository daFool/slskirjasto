drop table if exists kokoelmapeli;
drop table if exists kokoelma;
drop table if exists varasto;
drop table if exists tapahtuma;
drop table if exists kayttajarooli;
drop table if exists KayttajaTunnistus;
drop table if exists Kayttaja;
create table Kayttaja (
    Nimi                varchar(255)    not null,
    SLSJasenNumero      int default -1,
    Puhelin             varchar(255),
    Sahkoposti          varchar(255),
    Syntymavuosi        int,
    Sukupuoli           varchar(255),
    Tunniste            varchar(255) primary key not null,
    Vahvistus           varchar(255),
    VahvistusLahetetty  timestamp,
    Tila                varchar(10),
    
    like Pohjat INCLUDING ALL,    
    CHECK(Tila IN ('lainaaja', 'prospekti', 'käyttäjä', 'superadmin', 'admin'))    
);
create index kayttaja_jasennumero on kayttaja(slsjasennumero);
create index kayttaja_nimi on kayttaja (nimi);

comment on table Kayttaja is 'Kaikki järjestelmän käyttäjät';
comment on column Kayttaja.Nimi is 'Käyttäjän nimi';
comment on column Kayttaja.SLSJasenNumero is 'Lainaajakortin numero, joko SLS-jäsennumero tai korttinumero';
comment on column Kayttaja.Puhelin is 'Puhelinnumero';
comment on column Kayttaja.Sahkoposti is 'Sähköpostiosoite';
comment on column Kayttaja.Syntymavuosi is 'Syntymävuosi neljällä numerolla';
comment on column Kayttaja.Sukupuoli is 'Tilastoitava sukupuoli - ei väliä';
comment on column Kayttaja.Tunniste is 'Käyttäjätunnus, taulun avain';
comment on column Kayttaja.Vahvistus is 'Käyttäjälle lähetetty sähköpostin vahvistuskoodi';
comment on column Kayttaja.VahvistusLahetetty is 'Koska vahvistus on lähetetty';
comment on column Kayttaja.Tila is 'Onko käyttäjä: lainaaja, prospekti, käyttäjä, superadmin vai admin';

CREATE TABLE KayttajaTunnistus
  (
    Kayttaja        varchar(255),
    Tyyppi          varchar(255),
    Salaisuusavain  varchar(255),
    Salaisuus       varchar(255) default 'Setec Astronomy',
    like pohjat INCLUDING ALL,
    
    primary key(Kayttaja,Tyyppi,Salaisuusavain,Salaisuus),

    foreign key(Kayttaja) references Kayttaja(Tunniste) on update CASCADE on delete CASCADE
  );
  
comment on table KayttajaTunnistus is 'Käyttäjän erilaiset tunnistusavaimet.';
comment on column KayttajaTunnistus.Kayttaja is 'Käyttäjätunnus - vierasavain Kayttaja-tauluun';
comment on column KayttajaTunnistus.Tyyppi is 'Tunnistuksen tyyppi, local on normaali käyttäjätunnus + salasana-pari';
comment on column KayttajaTunnistus.Salaisuusavain is 'Häshi tms';
comment on column KayttajaTunnistus.Salaisuus is 'Salattu ja häshätty salasana tms';
