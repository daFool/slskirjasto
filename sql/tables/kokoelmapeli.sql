drop table if exists Kokoelmapeli;
create table Kokoelmapeli (
    Kokoelma     varchar(6),
    Peli         int,
    Omistaja     varchar(255),
    Lahjoittaja  int,
    Hylly        varchar(255),
    Paikka       varchar(255),
    Varasto      int,
    Laatikko     varchar(255),
    Kunto        varchar(255),
    Huomautus    varchar(255),
    Tunniste     varchar(255),
    Tuotu        timestamp with time zone,
    TuotuKokoelmasta    varchar(255),
    AlkuperainenTunniste    varchar(255),
    nimiid      int,
    julkaisijaid    int,
    tila        varchar(255),
    
    like Pohjat INCLUDING ALL,
    
    primary key(Tunniste),

    foreign key(Kokoelma) references Kokoelma(id) on update CASCADE on delete CASCADE,
    foreign key(Peli) references Peli(Tunniste) on update CASCADE on delete CASCADE,
    foreign key(Omistaja) references Kayttaja(Tunniste) on update CASCADE on delete set null,
    foreign key(Lahjoittaja) references Lahjoittaja(id) on update CASCADE on delete set null,
    foreign key(Varasto) references Varasto(id) on update CASCADE on delete set null
    );
    
comment on table Kokoelmapeli is 'Kokoelmien pelit';
comment on column Kokoelmapeli.Kokoelma is 'Vierasavain kokoelma-tauluun';
comment on column Kokoelmapeli.Peli is 'Vierasavain peli-tauluun';
comment on column Kokoelmapeli.Omistaja is 'Vierasavain kayttaja-tauluun';
comment on column Kokoelmapeli.Lahjoittaja is 'Vierasavain lahjoittaja-tauluun';
comment on column Kokoelmapeli.hylly is 'Pelin hylly kokoelmassa';
comment on column Kokoelmapeli.paikka is 'Pelin paikka hyllyssä';
comment on column Kokoelmapeli.varasto is 'Varasto, jossa kokoelma sijaitsee';
comment on column Kokoelmapeli.laatikko is 'Missä laatikossa peli on';
comment on column Kokoelmapeli.kunto is 'Missä kunnossa peli on';
comment on column Kokoelmapeli.huomautus is 'Huomioitavaa pelistä';
comment on column Kokoelmapeli.tunniste is 'Pelin tunniste - pääavain';
comment on column Kokoelmapeli.tuotu is 'Koska peli on tuotu toisesta kokoelmasta';
comment on column Kokoelmapeli.tuotukokoelmasta is 'Mistä kokoelmasta peli on peräisin';
comment on column Kokoelmapeli.alkuperainentunniste is 'Pelin alkuperäinen tunniste lähtökokoelmassa';
comment on column Kokoelmapeli.nimiid is 'Pelin nimen indeksi pelin nimissä';
comment on column Kokoelmapeli.tila is 'Pelin tila';
comment on column Kokoelmapeli.julkaisijaid is 'Pelin julkaisijan indeksi julkaisijoissa';
