drop table if exists kortti;

create table kortti (
    numero      int primary key,
    lainaaja    varchar(255),
    pantti      varchar(255),
    annettu     timestamp with time zone,
    palautettu  timestamp with time zone,
    
    like Pohjat INCLUDING ALL      
);

comment on table kortti is 'Lainauskortit';
comment on column kortti.numero is 'Lainauskortin numero';
comment on column kortti.lainaaja is 'Lainauskortin haltija';
comment on column kortti.pantti is 'Kortin pantti';
comment on column kortti.annettu is 'Koska kortti on annettu';
comment on column kortti.palautettu is 'Koska kortti on palautettu';
