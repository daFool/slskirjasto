drop table if exists Laina;
create table Laina (
    Lainaaja      varchar(255),
    Lainattu      timestamp with time zone     not null,
    Kokoelmapeli  varchar(255),
    Peli          varchar(255),
    PeliId        int,
    Palautus      varchar(255),
    Pantti        varchar(255),
    Palautettu    timestamp,
    Tapahtuma     varchar(255),
    Kortti        int,
    like Pohjat INCLUDING ALL,

    foreign key(Lainaaja) references Kayttaja(Tunniste) on update CASCADE on delete set null,
    foreign key(Kokoelmapeli) references KokoelmaPeli(Tunniste) on update CASCADE on delete set null,
    foreign key(Tapahtuma) references Tapahtuma(Nimi) on update CASCADE on delete set null,
    foreign key(PeliId) references Peli(Tunniste) on update CASCADE on delete set null
  );

comment on table Laina is 'Pelilainat';
comment on column Laina.Lainaaja is 'Pelin lainaajan tunniste';
comment on column Laina.Lainattu is 'Pelin lainaushetki';
comment on column Laina.Kokoelmapeli is 'Vierasavain kokoelmapeliin, joka lainattiin';
comment on column Laina.peli is 'Mikä peli lainattiin, pelin nimi lainaushetkellä';
comment on column Laina.peliID is 'Mikä peli lainattiin, vierasavain pelitauluun';
comment on column Laina.Palautus is 'Arvioitu palautushetki, kertomus palautusaikomuksesta';
comment on column Laina.Pantti is 'Lainan pantti';
comment on column Laina.Palautettu is 'Koska peli palautettiin';
comment on column Laina.Tapahtuma is 'Missä tapahtumassa lainattiin, vierasvain tapahtuma-tauluun';