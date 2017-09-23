drop table if exists kortti;
drop sequence if exists korttinumerot;
create sequence korttinumerot start 123456;

create table kortti (
    numero  int primary key default nextval('korttinumerot'),
    lainaaja    varchar(255),
    pantti      varchar(255),
    annettu     timestamp with time zone default now(),
    palautettu  timestamp with time zone,
    
    like Pohjat INCLUDING ALL,
    
    foreign key (lainaaja) references kayttaja(tunniste) on update cascade on delete cascade
);

comment on table kortti is 'Lainauskortit';
comment on column kortti.numero is 'Lainauskortin numero';
comment on column kortti.lainaaja is 'Lainauskortin haltija';
comment on column kortti.pantti is 'Kortin pantti';
comment on column kortti.annettu is 'Koska kortti on annettu';
comment on column kortti.palautettu is 'Koska kortti on palautettu';
