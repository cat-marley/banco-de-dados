-- Inserção de dados

-- Categorias
INSERT INTO Categorias (id_categoria, nome)
VALUES (1, 'Romance'), (2, 'Mistério'), (3, 'Aventura');

-- Autores
INSERT INTO Autores (id_autor, nome, data_nascimento, nacionalidade)
VALUES 
  (1, 'J.K. Rowling', '1965-07-31', 'Britânica'),
  (2, 'Anna Todd', '1989-03-20', 'Americana'),
  (3, 'Kiera Cass', '1981-05-19', 'Americana');

-- Livros
INSERT INTO Livros (id_livro, titulo, id_autor, id_categoria, ano_publicacao)
VALUES 
  (1, 'Harry Potter e a Pedra Filosofal', 1, 3, 1997),
  (2, 'Harry Potter e a Câmara Secreta', 1, 3, 1998),
  (3, 'After', 2, 1, 2014),
  (4, 'After We Collided', 2, 1, 2014),
  (5, 'A Seleção', 3, 1, 2012),
  (6, 'A Elite', 3, 1, 2013);

-- Atualização do ID do autor do livro com ID 4
UPDATE Livros
SET id_autor = 3
WHERE id_livro = 4;

-- Alteração da tabela Livros (Adicionar coluna "editora")
ALTER TABLE Livros
ADD COLUMN editora VARCHAR(50);

-- Atualização dos valores da coluna "editora"
UPDATE Livros SET editora = 'Editora Rocco' WHERE id_livro IN (1, 2);
UPDATE Livros SET editora = 'Editora Paralela' WHERE id_livro IN (3, 4);
UPDATE Livros SET editora = 'Editora Seguinte' WHERE id_livro = 5;

-- Remoção da coluna "ano_publicacao" da tabela Livros
ALTER TABLE Livros
DROP COLUMN ano_publicacao;

-- Remoção do livro com ID 6
DELETE FROM Livros WHERE id_livro = 6;
