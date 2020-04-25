-- FUNCTION: public.mypl()

-- DROP FUNCTION public.mypl();

CREATE OR REPLACE FUNCTION public.mypl(
	)
    RETURNS trigger
    LANGUAGE 'plpgsql'    
AS $BODY$
DECLARE
	rec record;
	contador integer := 0;
BEGIN
	FOR rec IN SELECT * FROM passengers LOOP
		RAISE NOTICE 'Un pasajer se llama %', rec.name;
		contador:= contador+1;
	END LOOP;
	INSERT INTO count_passengers (total,time)
	VALUES (contador, now());
	-- RETURN OLD Para no hacer modificaciones
	RETURN NEW;
END
$BODY$;

CREATE TRIGGER mitrigger
AFTER INSERT
ON passengers
FOR EACH ROW
EXECUTE PROCEDURE mypl();

INSERT INTO passengers(name, address, birthday) VALUES('Name trigger', 'DIr ACa', '2000-09-10')

SELECT * FROM count_passengers;