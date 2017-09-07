drop table if exists Kokoelma;
CREATE TABLE Kokoelma
  (
    Nimi       varchar(255) not null,
    Laji       int           not null,
    Omistaja   varchar(255),
    Tapahtuma  varchar(255),
    Julkisuus   varchar(255),
    id          varchar(6) primary key not null,
    
    like Pohjat INCLUDING ALL,
    
    foreign key(Omistaja) references Kayttaja(Tunniste) on update CASCADE on delete SET NULL,
    foreign key(Tapahtuma) references Tapahtuma(Nimi) on update CASCADE on delete SET NULL
  );
  
comment on table Kokoelma is 'Pelikokoelmat';
comment on column Kokoelma.Nimi is 'Kokoelman nimi';
comment on column Kokoelma.Laji is 'Onko pysyvä varastokokoelma vai tapahtumakokoelma';
comment on column Kokoelma.Omistaja is 'Kokoelman omistaja';
comment on column Kokoelma.Tapahtuma is 'Vierasavain tapahtumiin';
comment on column Kokoelma.Julkisuus is 'Onko kokoelma julkinen vai yksityinen';
comment on column Kokoelma.Id is 'Kokoelman tunniste tarroissa, avain';