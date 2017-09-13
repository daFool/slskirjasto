drop table if exists KorinPelit;
drop table if exists Kori;
create table Kori (
        ID serial,
        omistaja varchar(255),
        nimi varchar(255) unique not null,
        
        like Pohjat INCLUDING ALL,
        
        constraint id_pkey primary key (ID),
        constraint omistaja_fkey foreign key (omistaja) references kayttaja(tunniste) on update cascade on delete cascade
        );
 comment on table Kori is 'Pelikori';
 comment on column Kori.ID is 'Keinotekoinen avain';
 comment on column Kori.omistaja is 'Korin omistajan tunniste';
 comment on column Kori.nimi is 'Korin nimi';
 

 create table KorinPelit (
        ID bigint,
        peli varchar(255),
        
        like Pohjat INCLUDING ALL,
        constraint peli_fkey foreign key (peli) references kokoelmapeli(tunniste) on update cascade on delete cascade,        
        constraint kori_fkey foreign key (ID) references Kori(ID) on update cascade on delete cascade
        );       