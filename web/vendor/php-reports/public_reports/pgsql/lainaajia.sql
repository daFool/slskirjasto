-- Lainaajia ajanjaksolla
-- Kaikkien lainajien lukumäärä ajanjaksolla
-- VARIABLE: {
--  name: "range",
--  display: "Aikaväli",
--  type : "daterange",
--  default: { start: "yesterday", end: "today" }
-- }

select count(*) as lkm from
    (select lainaaja, count(*) as lkm from laina where lainattu>='{{ range.start }}'
        and lainattu<='{{ range.end }} ' group by lainaaja order by lkm desc) as f