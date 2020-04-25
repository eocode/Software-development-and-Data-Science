CREATE TABLE public."History_Trips"
(
    id serial,
    id_trip integer,
    date date
) PARTITION BY RANGE (date) ;

ALTER TABLE public."History_Trips"
    OWNER to postgres;

CREATE TABLE history_trips_202000401 PARTITION OF history_trips
FOR VALUES FROM ('2020-04-01') TO ('2020-04-30');

-- Test partition

INSERT INTO history_trips(
	id_trip, date)
	VALUES (1, '2020-04-05');
	
SELECT * FROM history_trips;