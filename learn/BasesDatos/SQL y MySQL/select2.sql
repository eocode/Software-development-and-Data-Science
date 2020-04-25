SELECT * FROM authors WHERE author_id > 0 and author_id <= 5;

SELECT * FROM authors WHERE author_id BETWEEN 1 AND 5;

SELECT * FROM books;

SELECT b.book_id, a.name, a.author_id, b.title
FROM books as b
JOIN authors as a ON a.author_id = b.author_id
WHERE a.author_id BETWEEN 1 and 5;

SELECT * FROM authors WHERE author_id = 4;

desc transactions;

SELECT c.name, b.title, t.type, a.name
FROM transactions as t
JOIN books as b ON t.book_id = b.book_id
JOIN authors as a ON b.author_id = a.author_id
JOIN clients as c ON t.client_id = c.client_id
WHERE c.gender = 'M' AND t.type in ('sell','lend');

SELECT b.title, a.name
FROM authors AS a, books AS b
WHERE a.author_id = b.author_id
LIMIT 10;

SELECT b.title, a.name
FROM books AS b INNER JOIN authors AS a
ON a.author_id = b.author_id
LIMIT 10;

SELECT a.author_id, a.name, a.nationality, b.title
FROM authors as a 
JOIN books as b ON b.author_id = a.author_id
WHERE a.author_id BETWEEN 1 AND  10 ORDER BY a.author_id DESC;

SELECT a.author_id, a.name, a.nationality, b.title
FROM authors as a 
LEFT JOIN books as b ON b.author_id = a.author_id
WHERE a.author_id BETWEEN 1 AND  10 ORDER BY a.author_id DESC;

SELECT a.author_id, a.name, a.nationality, COUNT(b.book_id)
FROM authors as a 
LEFT JOIN books as b ON b.author_id = a.author_id
WHERE a.author_id BETWEEN 1 AND  10 
GROUP BY a.author_id
ORDER BY a.author_id DESC;