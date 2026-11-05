-- Criando tabela de editoras
CREATE TABLE editoras (
	id_editora SERIAL PRIMARY KEY,
	nome_editora VARCHAR(60) NOT NULL UNIQUE
	
);

-- Criando tabela de autores
CREATE TABLE autores (
	id_autor SERIAL PRIMARY KEY,
	nome_autor VARCHAR(80) NOT NULL,
	
);

-- Criando tabela de livros
CREATE TABLE livros (
	id_livro SERIAL,
	nome_livro VARCHAR(30),
	ano_livro INTEGER,
	id_autor INTEGER NOT NULL,
	id_editora INTEGER NOT NULL,
		CONSTRAINT pk_livros
			PRIMARY KEY(id_livro),
		CONSTRAINT check_ano_livro
			CHECK(ano_livro BETWEEN 1900 AND 2026),
		CONSTRAINT fk_id_autor
			FOREIGN KEY(id_autor) REFERENCES autores(id_autor),
		CONSTRAINT fk_editora_livro
			FOREIGN KEY(id_editora) REFERENCES editoras(id_editora)
);

-- Inserir a coluna isbn
ALTER TABLE livros ADD COLUMN isbn CHAR(8)

-- Alterando o nome para codigo_isbn
ALTER TABLE livros RENAME COLUMN isbn TO  codigo_isbn

-- Eliminando coluna desnecessária
ALTER TABLE livros DROP COLUMN codigo_isbn

BEGIN;

INSERT INTO editoras (nome_editora) VALUES
    ('Editora Horizonte'),
    ('Editora Aurora'),
    ('Editora Ipê'),
    ('Editora Caminhos'),
    ('Editora Saber'),
    ('Editora Estação'),
    ('Editora Primavera'),
    ('Editora Raízes'),
    ('Editora Atlântico'),
    ('Editora Páginas');

INSERT INTO autores (nome_autor) VALUES
    ('Ana Silva'),
    ('Bruno Lima'),
    ('Camila Almeida'),
    ('Daniel Costa'),
    ('Eduarda Rocha'),
    ('Felipe Santos'),
    ('Gabriela Pereira'),
    ('Henrique Ferreira'),
    ('Isabela Souza'),
    ('João Oliveira'),
    ('Larissa Silva'),
    ('Marcos Lima'),
    ('Natália Almeida'),
    ('Otávio Costa'),
    ('Paula Rocha'),
    ('Rafael Santos'),
    ('Sofia Pereira'),
    ('Tiago Ferreira'),
    ('Vanessa Souza'),
    ('William Oliveira'),
    ('Alice Silva'),
    ('Caio Lima'),
    ('Débora Almeida'),
    ('Enzo Costa'),
    ('Fernanda Rocha'),
    ('Gustavo Santos'),
    ('Helena Pereira'),
    ('Igor Ferreira'),
    ('Juliana Souza'),
    ('Lucas Oliveira');

INSERT INTO livros (nome_livro, ano_livro, id_autor, id_editora) VALUES
    ('O Jardim Azul', 1959, 1, 1),
    ('O Horizonte Azul', 1970, 2, 2),
    ('O Segredo Azul', 1981, 3, 3),
    ('O Caminho Azul', 1992, 4, 4),
    ('O Inverno Azul', 2003, 5, 5),
    ('O Verão Azul', 2014, 6, 6),
    ('O Encontro Azul', 2025, 7, 7),
    ('O Rio Azul', 1959, 8, 8),
    ('O Tempo Azul', 1970, 9, 9),
    ('O Retrato Azul', 1981, 10, 10),
    ('O Jardim Distante', 1992, 11, 1),
    ('O Horizonte Distante', 2003, 12, 2),
    ('O Segredo Distante', 2014, 13, 3),
    ('O Caminho Distante', 2025, 14, 4),
    ('O Inverno Distante', 1959, 15, 5),
    ('O Verão Distante', 1970, 16, 6),
    ('O Encontro Distante', 1981, 17, 7),
    ('O Rio Distante', 1992, 18, 8),
    ('O Tempo Distante', 2003, 19, 9),
    ('O Retrato Distante', 2014, 20, 10),
    ('O Jardim Secreto', 2025, 21, 1),
    ('O Horizonte Secreto', 1959, 22, 2),
    ('O Segredo Secreto', 1970, 23, 3),
    ('O Caminho Secreto', 1981, 24, 4),
    ('O Inverno Secreto', 1992, 25, 5),
    ('O Verão Secreto', 2003, 26, 6),
    ('O Encontro Secreto', 2014, 27, 7),
    ('O Rio Secreto', 2025, 28, 8),
    ('O Tempo Secreto', 1959, 29, 9),
    ('O Retrato Secreto', 1970, 30, 10),
    ('O Jardim Antigo', 1981, 1, 1),
    ('O Horizonte Antigo', 1992, 2, 2),
    ('O Segredo Antigo', 2003, 3, 3),
    ('O Caminho Antigo', 2014, 4, 4),
    ('O Inverno Antigo', 2025, 5, 5),
    ('O Verão Antigo', 1959, 6, 6),
    ('O Encontro Antigo', 1970, 7, 7),
    ('O Rio Antigo', 1981, 8, 8),
    ('O Tempo Antigo', 1992, 9, 9),
    ('O Retrato Antigo', 2003, 10, 10),
    ('O Jardim Dourado', 2014, 11, 1),
    ('O Horizonte Dourado', 2025, 12, 2),
    ('O Segredo Dourado', 1959, 13, 3),
    ('O Caminho Dourado', 1970, 14, 4),
    ('O Inverno Dourado', 1981, 15, 5),
    ('O Verão Dourado', 1992, 16, 6),
    ('O Encontro Dourado', 2003, 17, 7),
    ('O Rio Dourado', 2014, 18, 8),
    ('O Tempo Dourado', 2025, 19, 9),
    ('O Retrato Dourado', 1959, 20, 10),
    ('O Jardim Esquecido', 1970, 21, 1),
    ('O Horizonte Esquecido', 1981, 22, 2),
    ('O Segredo Esquecido', 1992, 23, 3),
    ('O Caminho Esquecido', 2003, 24, 4),
    ('O Inverno Esquecido', 2014, 25, 5),
    ('O Verão Esquecido', 2025, 26, 6),
    ('O Encontro Esquecido', 1959, 27, 7),
    ('O Rio Esquecido', 1970, 28, 8),
    ('O Tempo Esquecido', 1981, 29, 9),
    ('O Retrato Esquecido', 1992, 30, 10),
    ('O Jardim Silencioso', 2003, 1, 1),
    ('O Horizonte Silencioso', 2014, 2, 2),
    ('O Segredo Silencioso', 2025, 3, 3),
    ('O Caminho Silencioso', 1959, 4, 4),
    ('O Inverno Silencioso', 1970, 5, 5),
    ('O Verão Silencioso', 1981, 6, 6),
    ('O Encontro Silencioso', 1992, 7, 7),
    ('O Rio Silencioso', 2003, 8, 8),
    ('O Tempo Silencioso', 2014, 9, 9),
    ('O Retrato Silencioso', 2025, 10, 10),
    ('O Jardim Novo', 1959, 11, 1),
    ('O Horizonte Novo', 1970, 12, 2),
    ('O Segredo Novo', 1981, 13, 3),
    ('O Caminho Novo', 1992, 14, 4),
    ('O Inverno Novo', 2003, 15, 5),
    ('O Verão Novo', 2014, 16, 6),
    ('O Encontro Novo', 2025, 17, 7),
    ('O Rio Novo', 1959, 18, 8),
    ('O Tempo Novo', 1970, 19, 9),
    ('O Retrato Novo', 1981, 20, 10),
    ('O Jardim Perdido', 1992, 21, 1),
    ('O Horizonte Perdido', 2003, 22, 2),
    ('O Segredo Perdido', 2014, 23, 3),
    ('O Caminho Perdido', 2025, 24, 4),
    ('O Inverno Perdido', 1959, 25, 5),
    ('O Verão Perdido', 1970, 26, 6),
    ('O Encontro Perdido', 1981, 27, 7),
    ('O Rio Perdido', 1992, 28, 8),
    ('O Tempo Perdido', 2003, 29, 9),
    ('O Retrato Perdido', 2014, 30, 10),
    ('O Jardim Infinito', 2025, 1, 1),
    ('O Horizonte Infinito', 1959, 2, 2),
    ('O Segredo Infinito', 1970, 3, 3),
    ('O Caminho Infinito', 1981, 4, 4),
    ('O Inverno Infinito', 1992, 5, 5),
    ('O Verão Infinito', 2003, 6, 6),
    ('O Encontro Infinito', 2014, 7, 7),
    ('O Rio Infinito', 2025, 8, 8),
    ('O Tempo Infinito', 1959, 9, 9),
    ('O Retrato Infinito', 1970, 10, 10);

COMMIT;