SELECT name, email, gender FROM clients LIMIT 10;

SELECT name, email, gender FROM clients WHERE gender = 'm';

SELECT name, email, gender FROM clients WHERE gender = 'f';

SELECT YEAR(birthdate) FROM clients;

SELECT NOW();

SELECT YEAR(NOW());

SELECT YEAR(NOW()) - YEAR(birthdate) FROM clients;

SELECT name, (YEAR(NOW()) - YEAR(birthdate)) FROM clients;

SELECT * FROM CLIENTS WHERE name LIKE '%Saave%';

SELECT name, email, (YEAR(NOW()) - YEAR(birthdate)) as edad, gender
FROM clients
WHERE gender = 'F' AND name LIKE '%Lop%';