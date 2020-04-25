SELECT * FROM authors ORDER BY rand() LIMIT 10;

SELECT COUNT(*) FROM authors;
delete from authors where author_id = 161 LIMIT 1;
SELECT COUNT(*) FROM authors;

DESC clients;

SELECT client_id, name FROM clients where active <> 1;

SELECT client_id, name, active FROM clients ORDER BY rand() LIMIT 10;

UPDATE clients SET active = 0 WHERE client_id = 80 LIMIT 1;

SELECT client_id, name, active from clients where client_id in(80,65,76,1,76,1,61,7,19,97);

UPDATE clients
SET active = 0
WHERE client_id IN (1,6,8,27,90) OR name LIKE '%Lopez%';

SELECT client_id, name, active FROM clients WHERE client_id IN (1,6,8,27,90) OR name LIKE '%Lopez%';

truncate transactions;

SELECT distinct nationality FROM authors;

UPDATE authors SET nationality = 'GBR' WHERE nationality = 'ENG';

SELECT sum(price) from books where sellable = 1;

SELECT sum(price*copies) from books where sellable = 1;

SELECT count(book_id), 
	sum(if(year < 1950,1,0)) as '<1950',
    sum(if(year >= 1950,1,0)) as '>1950' 
FROM books;

SELECT count(book_id), 
	sum(if(year < 1950,1,0)) as '<1950',
    sum(if(year >= 1950 AND year < 1990,1,0)) as '<1990',
    sum(if(year >= 1990 AND year < 2000,1,0)) as '<2000',
    sum(if(year >= 2000,1,0)) as '<hoy'
FROM books;

SELECT nationality, count(book_id), 
	sum(if(year < 1950,1,0)) as '<1950',
    sum(if(year >= 1950 AND year < 1990,1,0)) as '<1990',
    sum(if(year >= 1990 AND year < 2000,1,0)) as '<2000',
    sum(if(year >= 2000,1,0)) as '<hoy'
FROM books AS b
JOIN authors AS a ON a.author_id = b.author_id
WHERE a.nationality IS NOT NULL
GROUP BY a.nationality;