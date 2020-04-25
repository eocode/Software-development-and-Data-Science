DROP FUNCTION mypl;
CREATE OR REPLACE FUNCTION mypl()
	RETURNS integer
AS $$
DECLARE
	rec record;
	contador integer := 0;
BEGIN
	FOR rec IN SELECT * FROM passengers LOOP
		RAISE NOTICE 'Un pasajer se llama %', rec.name;
		contador:= contador+1;
	END LOOP;
	RAISE NOTICE 'Conteo es %', contador;
	RETURN contador;
END
$$
LANGUAGE PLPGSQL;

select mypl();