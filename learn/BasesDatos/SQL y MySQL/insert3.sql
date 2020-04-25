INSERT INTO books(title,author_id, language) VALUES('El Laberinto de la Soledad',6, 'es');
INSERT INTO books(title,author_id, `year`, language) VALUES('Vuelta al Laberinto de la Soledad', 
	(SELECT author_id FROM authors
    WHERE name = 'Octavio Paz' 
    LIMIT 1
    ), 1960, 'es'
)