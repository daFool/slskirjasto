-- Lainat ajanjaksolla
-- Kaikkien lainojen lukumäärä ajanjaksolla
-- VARIABLE: {
--  name: "range",
--  display: "Aikaväli",
--  type : "daterange",
--  default: { start: "yesterday", end: "today" }
-- }

select count(*) as lkm from laina where lainattu>='{{ range.start }}' and lainattu<='{{ range.end }}'