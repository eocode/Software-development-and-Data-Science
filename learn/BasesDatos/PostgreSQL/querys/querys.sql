SELECT * FROM public.stations;
SELECT * FROM public.passengers;
SELECT * FROM public.journeys;
SELECT * FROM public.trains;
SELECT * FROM public.trips;

select * from passengers p
join trips t on(t.id = p.id)

select * from passengers p
left join trips t on t.id = p.id
where t.id is null

select * from stations order by id desc;
insert into stations(id, name, address) values(2, 'A name', 'Dir') on conflict(id) do update set name='A Name', address='dir'
insert into stations(name, address) values('A name', 'Dir') RETURNING *;

select name from passengers where name ilike 'Ale%';
select * from trains where model is not null;

select * from passengers order by name desc
select COALESCE(name, 'No aplica'),* from passengers where id = 2

select 1/nullif(0,0) as a;

select GREATEST(0,1,2,3,4,5,6,7,7);
select LEAST(0,1,2,3,4,5,6,7,7);

select *, 
case when birthday > '2005-01-01' then 'niño' else 'mayor' end
from passengers

select *, 
case when name ilike 'p%' then 'Empieza con P' else 'Otra letra' end as P, 
case when birthday <= (current_date - interval '18 year') then 'Mayor de edad' else 'Menor de edad' end as Mayor 
from passengers

CREATE OR REPLACE VIEW rangeview
 AS
select *, 
case when name ilike 'p%' then 'Empieza con P' else 'Otra letra' end as P, 
case when birthday <= (current_date - interval '18 year') then 'Mayor de edad' else 'Menor de edad' end as Mayor 
from passengers;

ALTER TABLE rangeview
    OWNER TO postgres;

select * from rangeview

select * from trips where start_trip > '2019-01-01'

CREATE MATERIALIZED nightsview_mv
AS
select * from trips where start_trip > '2019-01-01'
WITH NO DATA;

ALTER TABLE nightsview_mv
    OWNER TO postgres;
	
REFRESH MATERIALIZED VIEW nightsview_mv
	
select * from nightsview_mv

