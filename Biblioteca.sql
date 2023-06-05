-- Criação das tabelas
CREATE TABLE Categorias (
  id_categoria INT PRIMARY KEY,
  nome VARCHAR(50)
);

CREATE TABLE Autores (
  id_autor INT PRIMARY KEY,
  nome VARCHAR(50),
  data_nascimento DATE,
  nacionalidade VARCHAR(50)
);

CREATE TABLE Livros (
  id_livro INT PRIMARY KEY,
  titulo VARCHAR(100),
  id_autor INT,
  id_categoria INT,
  ano_publicacao INT,
  FOREIGN KEY (id_autor) REFERENCES Autores(id_autor),
  FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria)
);
