INSERT INTO public."passengers"(name, address, birthday)
VALUES ('Juan', 'Dirección x', '2020-04-05');

SELECT * FROM public.stations;
SELECT * FROM public.passengers;
SELECT * FROM public.journeys;
SELECT * FROM public.trains;
SELECT * FROM public.trips;

INSERT INTO public.stations (name,address)
VALUES 
    ('Estación Centro','St 1# 12'),
    ('Estación Norte','St 100# 112')
;

INSERT INTO public.trains (capacity,model)
VALUES 
    (100,'Modelo 1'),
    (100,'Modelo 2')
;

INSERT INTO public.journeys (id_train,id_station,name)
VALUES
    (1,1,'Ruta 1'),
    (2,2,'Ruta 2');


INSERT INTO public.passengers (name,birthday,address)
VALUES
    ('José Ordoñez','1987-1-3','St 100# 12'),
    ('Ángel Quintero','1987-1-12','St 101# 12'),
    ('Rafel Castillo','1977-1-12','St 102# 12');
	
INSERT INTO public.trips (id_passenger,id_journey, start_trip, end_trip)
 VALUES
    (1,1,'2019-01-02','2019-01-02'),
    (2,1,'2019-01-03','2019-01-03'),
    (2,2,'2019-01-04','2019-01-04'),
    (3,2,'2019-01-04','2019-01-04')

;

DELETE FROM public.trains WHERE id  = 4;
DELETE FROM public.trains WHERE id in
     (
		SELECT id FROM public.trains 
	  		WHERE id in(3,4)
			ORDER BY id 
		 	LIMIT 2 
	 )
;

UPDATE public.stations
SET id=4, name='Estación SUR-OESTE', address='St 4# 1'
WHERE id = 1;

UPDATE public.stations
	SET 
		id=4, 
		name='Estación SUR-OESTE', 
		address='St 4# 1'
	WHERE id IN (
		SELECT stations.id FROM public.stations
			WHERE stations.id in(4)
			ORDER BY stations.id
			LIMIT 1
	)
;
