drop table if exists Kayttajarooli;

create table Kayttajarooli (
    Kohde   varchar(255) not null default 'Kokoelma',
    Kayttaja    varchar(255) not null,
    Roolinimi    varchar(255) not null,
    Kohdeavaini  int,
    Kohdeavains varchar(255),
    
    like Pohjat INCLUDING ALL,
    primary key (Kohde, Kayttaja, Roolinimi),
    foreign key(Kayttaja) references Kayttaja(Tunniste) on update CASCADE on delete CASCADE,
    check(Roolinimi in ('lainaaja', 'käyttäjä', 'admin', 'superadmin'))    
);

comment on table Kayttajarooli is 'Käyttäjän oikeudet eri osa-alueisiin';
comment on column Kayttajarooli.Kohde is 'Mihin kohteeseen oikeus on? Varasto, Tapahtuma, Kokoelma jne';
comment on column Kayttajarooli.Kayttaja is 'Kenelle käyttöoikeus on?';
comment on column Kayttajarooli.Roolinimi is 'Mikä oikeus on?';
comment on column Kayttajarooli.Kohdeavaini is 'Kohdetaulun avainarvo, jos avain on kokonaisluku';
comment on column Kayttajarooli.Kohdeavains is 'Kohdetaulun avainarvo, jos avain on merkkijono';
