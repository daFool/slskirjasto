drop table if exists Varasto;
create table Varasto (
    id  serial primary key,
    Nimi    varchar(255) not null,
    KatuOsoite  varchar(255) not null,
    Kaupunki    varchar(255) not null,
    Postinumero varchar(255) not null,
    Maa         varchar(255) not null,
    Julkisuus    varchar(255) default 'avoin',
    Omistaja    varchar(255),
    
    foreign key(Omistaja) references Kayttaja(Tunniste) on update CASCADE on delete SET NULL,    
    like Pohjat INCLUDING ALL    
);

comment on table Varasto is 'Pelivarastot';
comment on column Varasto.id is 'Keinotekoinen avain';
comment on column Varasto.Nimi is 'Varaston nimi';
comment on column Varasto.KatuOsoite is 'Varaston katuosoite';
comment on column Varasto.Kaupunki is 'Varaston kaupunki';
comment on column Varasto.Postinumero is 'Varaston postinumero';
comment on column Varasto.Maa is 'Varaston maa';
comment on column Varasto.Julkisuus is 'Onko varaston sijainti julkinen';
comment on column Varasto.Omistaja is 'Kuka omistaa varaston';
