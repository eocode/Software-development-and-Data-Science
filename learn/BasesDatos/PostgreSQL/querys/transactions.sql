BEGIN;

INSERT INTO trains(model, capacity)
VALUES('Model Trans', 123);

INSERT INTO stations(id, name, address)
VALUES(108,'Station Transact', 'Address Transact');

COMMIT;

SELECT * FROM stations order by id desc
SELECT * FROM trains order by id desc