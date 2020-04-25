CREATE DATABASE Transport
	with
	OWNER = postgres
	ENCODING = 'utf8'
	CONNECTION LIMIT = -1;

CREATE TABLE public.passengers
(
	id serial,
	name character varying(100),
    address character varying,
    birthday date,
    CONSTRAINT passenger_pkey PRIMARY KEY (id)
);

ALTER TABLE public.passengers
    OWNER to postgres;
COMMENT ON TABLE public.trains
    IS 'Register passenger and your personal data';

CREATE TABLE public.trains
(
    id serial NOT NULL,
    model character varying(50),
    capacity integer,
    CONSTRAINT train_pkey PRIMARY KEY (id)
);

ALTER TABLE public.trains
    OWNER to postgres;
COMMENT ON TABLE public.trains
    IS 'Register data of trains, save model and capacity of trains';


CREATE TABLE public.stations
(
    id serial NOT NULL,
    name character varying(100),
    address character varying,
    CONSTRAINT station_pkey PRIMARY KEY (id)
);

ALTER TABLE public.stations
    OWNER to postgres;
COMMENT ON TABLE public.stations
    IS 'Register train stations: id, name and address';


CREATE TABLE public.journeys
(
    id serial NOT NULL,
    id_train integer,
    id_station integer,
	name character varying(100),
    CONSTRAINT journey_pkey PRIMARY KEY (id),
    CONSTRAINT journey_train_fkey FOREIGN KEY (id_train)
        REFERENCES public.trains (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID,
    CONSTRAINT journey_station_fkey FOREIGN KEY (id_station)
        REFERENCES public.stations (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
);

ALTER TABLE public.journeys
    OWNER to postgres;
COMMENT ON TABLE public.journeys
    IS 'Register journeys than can trains do between stations';

COMMENT ON CONSTRAINT journey_train_fkey ON public.journeys
    IS 'Reference  ID of trains table';
COMMENT ON CONSTRAINT journey_train_fkey ON public.journeys
    IS 'Reference ID of stations table';

CREATE TABLE public.Trips
(
    id serial NOT NULL,
    id_passenger integer,
    id_journey integer,
    start_trip date,
    end_trip date,
    CONSTRAINT trip_pkey PRIMARY KEY (id),
    CONSTRAINT trip_passenger_fkey FOREIGN KEY (id_passenger)
        REFERENCES public.passengers (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID,
    CONSTRAINT trip_journey_fkey FOREIGN KEY (id_journey)
        REFERENCES public.journeys (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
);

ALTER TABLE public.trips
    OWNER to postgres;
COMMENT ON TABLE public.trips
    IS 'Trips that can to do passengers';

COMMENT ON CONSTRAINT trip_passenger_fkey ON public.trips
    IS 'Reference ID to passengers table';
COMMENT ON CONSTRAINT trip_journey_fkey ON public.trips
    IS 'Reference ID to journeys table';