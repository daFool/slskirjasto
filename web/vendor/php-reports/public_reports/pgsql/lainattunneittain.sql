-- Lainaukset tunneittain
-- Lainausten jakautuminen tunneittain
-- VARIABLE: {
--  name: "range",
--  display: "Aikaväli",
--  type : "daterange",
--  default: { start: "yesterday", end: "today" }
-- }

set timezone='GMT';
with foo as (
        select lainattu at time zone 'UTC+02' as lainattu from laina order by lainattu asc
)
select date_part('hour',lainattu) as tunti, lainattu::date, count(*) as lkm from foo
where lainattu >='{{ range.start }}' and lainattu <='{{ range.end }}' group by lainattu::date, date_part('hour',lainattu) order by lainattu::date asc, date_part('hour', lainattu) asc;
