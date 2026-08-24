DROP TABLE IF EXISTS filmes;

CREATE TABLE filmes (
    id INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL,
    ano INTEGER,
    diretor TEXT,
    nota REAL
);

INSERT INTO filmes (titulo, ano, diretor, nota) VALUES
('Interestelar', 2014, 'Christopher Nolan', 9.5),
('Parasita', 2019, 'Bong Joon-ho', 9.0),
('Clube da Luta', 1999, 'David Fincher', 8.8),
('Genio indomável', 1997, 'Gus Van Sant', 9.5),
('Um sonho de liberdade', 1994, 'Frank Darabont', 9.0);

SELECT * FROM filmes;
SELECT titulo, nota FROM filmes;
SELECT titulo, nota FROM filmes WHERE nota > 9;
SELECT titulo, nota FROM filmes ORDER BY nota DESC;

SELECT COUNT(*) FROM filmes;
SELECT AVG(nota) FROM filmes;
SELECT diretor, COUNT(*) AS qtd_filmes
FROM filmes
GROUP BY diretor;
SELECT titulo, nota
FROM filmes
ORDER BY nota DESC
LIMIT 1;
