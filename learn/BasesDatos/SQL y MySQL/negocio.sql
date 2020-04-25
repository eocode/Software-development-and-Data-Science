--- ¿Qué nacionalidades hay?
SELECT DISTINCT nationality FROM authors ORDER BY nationality;

--- ¿Cuántos escritores hay de cierta nacionalidad?
SELECT nationality, COUNT(author_id) AS c_authors
FROM authors
WHERE nationality IS NOT NULL AND nationality NOT IN ('RUS', 'AUT')
GROUP BY nationality
ORDER BY c_authors DESC, nationality ASC;

--- ¿Cuál es el promedio/desviación standard del precio de libros?
SELECT nationality, COUNT(book_id) as books, AVG(price) as prom, STDDEV(price) as std
FROM books as b
JOIN authors as a ON a.author_id = b.author_id
GROUP BY nationality
ORDER BY prom DESC;

--- ¿Cuál es el precio máximo / mínimo de un libro?alter
SELECT a.nationality, MAX(price), MIN(price) 
FROM books as b
JOIN authors as a ON a.author_id = b.author_id
GROUP BY nationality;

---- ¿Reporte final?
SELECT c.name, b.title, t.type, a.name, CONCAT(a.name, "(", a.nationality, ")") as author, TO_DAYS(NOW()) - to_days(t.created_at) as ago
FROM TRANSACTIONS AS t
LEFT JOIN clients AS c ON c.client_id = t.client_id
LEFT JOIN books AS b ON b.book_id = t.book_id
LEFT JOIN authors AS a ON b.author_id = a.author_id;

SELECT name, birthdate, (to_days(now()) - to_days(birthdate))/365 as years FROM clients;