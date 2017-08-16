drop table if exists KorinPelit;
drop table if exists Kori;
create table Kori (
        ID serial,
        omistaja varchar(255),
        paivitetty timestamp with time zone default now(),
        lisatty timestamp with time zone default now(),
        nimi varchar(255) unique not null,
        
        constraint id_pkey primary key (ID),
        constraint omistaja_fkey foreign key (omistaja) references kayttaja(tunniste) on update cascade on delete cascade
        );
        
 

 create table KorinPelit (
        ID bigint,
        peli varchar(255),
        constraint peli_fkey foreign key (peli) references kokoelmapeli(tunniste) on update cascade on delete cascade,        
        constraint kori_fkey foreign key (ID) references Kori(ID) on update cascade on delete cascade
        );       