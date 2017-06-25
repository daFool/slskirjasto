-- Kuinka montaa eri peliä on lainattu
-- Kuinka montaa eri peliä on lainattu ajanjaksolla
-- VARIABLE: {
--  name: "range",
--  display: "Aikaväli",
--  type : "daterange",
--  default: { start: "yesterday", end: "today" }
-- }

select count(*) from (select kokoelmapeli, count(*) as lkm from laina
where lainattu>='{{ range.start }}' and lainattu<='{{ range.end }}' group by kokoelmapeli) as l;