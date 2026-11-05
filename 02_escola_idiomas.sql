-- Criando tabela de professores
CREATE TABLE professores (
	cpf CHAR(11) PRIMARY KEY,
	nome_professor VARCHAR(80)
);

-- Vendo tabela professores
SELECT *
FROM professores    

-- Criando tabela Disciplinas
CREATE TABLE disciplinas (
	id_disciplina INTEGER PRIMARY KEY,
	nome_disciplia VARCHAR(50) NOT NULL
);

CREATE TABLE turmas (
	id_turma SERIAL,
	sala VARCHAR(20) NOT NULL,
	cpf CHAR(11),
	id_disciplina INTEGER,
		CONSTRAINT pk_id_turma
			PRIMARY KEY(id_turma),
		CONSTRAINT fk_cpf
			FOREIGN KEY(cpf) REFERENCES professores(cpf),
		CONSTRAINT fk_id_disciplina
			FOREIGN KEY(id_disciplina) REFERENCES disciplinas(id_disciplina)
);

CREATE TABLE alunos (
	matricula 
)
BEGIN;

INSERT INTO disciplinas (id_disciplina, nome_disciplia) VALUES
    (1, 'Matemática'),
    (2, 'Língua Portuguesa'),
    (3, 'História'),
    (4, 'Geografia'),
    (5, 'Biologia'),
    (6, 'Física');

INSERT INTO professores (cpf, nome_professor) VALUES
    ('70000000150', 'Larissa Almeida Martins'),
    ('70000000231', 'Tiago Lima Teixeira'),
    ('70000000311', 'Fernanda Carvalho Ferreira'),
    ('70000000401', 'Nicolas Barbosa Rocha'),
    ('70000000583', 'Yasmin Melo Silva'),
    ('70000000664', 'Felipe Silva Rodrigues'),
    ('70000000745', 'Natália Costa Barbosa'),
    ('70000000826', 'William Ferreira Oliveira'),
    ('70000000907', 'Helena Gomes Lima'),
    ('70000001041', 'Paulo Martins Nascimento'),
    ('70000001121', 'Ana Nascimento Santos'),
    ('70000001202', 'Henrique Cardoso Gomes'),
    ('70000001393', 'Patrícia Oliveira Araújo'),
    ('70000001474', 'Caio Pereira Costa'),
    ('70000001555', 'Juliana Rodrigues Ribeiro');

INSERT INTO turmas (id_turma, sala, cpf, id_disciplina) VALUES
    (1, 'Sala 101', '70000000150', 1),
    (2, 'Sala 102', '70000000231', 2),
    (3, 'Sala 103', '70000000311', 3),
    (4, 'Sala 104', '70000000401', 4),
    (5, 'Sala 105', '70000000583', 5),
    (6, 'Sala 106', '70000000664', 6),
    (7, 'Sala 107', '70000000745', 1),
    (8, 'Sala 108', '70000000826', 2),
    (9, 'Sala 109', '70000000907', 3),
    (10, 'Sala 110', '70000001041', 4),
    (11, 'Sala 111', '70000001121', 5),
    (12, 'Sala 112', '70000001202', 6),
    (13, 'Sala 113', '70000001393', 1),
    (14, 'Sala 114', '70000001474', 2),
    (15, 'Sala 115', '70000001555', 3),
    (16, 'Sala 116', '70000000150', 4),
    (17, 'Sala 117', '70000000231', 5),
    (18, 'Sala 118', '70000000311', 6),
    (19, 'Sala 119', '70000000401', 1),
    (20, 'Sala 120', '70000000583', 2),
    (21, 'Sala 121', '70000000664', 3),
    (22, 'Sala 122', '70000000745', 4),
    (23, 'Sala 123', '70000000826', 5),
    (24, 'Sala 124', '70000000907', 6),
    (25, 'Sala 125', '70000001041', 1),
    (26, 'Sala 126', '70000001121', 2),
    (27, 'Sala 127', '70000001202', 3),
    (28, 'Sala 128', '70000001393', 4),
    (29, 'Sala 129', '70000001474', 5),
    (30, 'Sala 130', '70000001555', 6);

SELECT setval(pg_get_serial_sequence('turmas', 'id_turma'), (SELECT MAX(id_turma) FROM turmas));

INSERT INTO alunos (matricula, nome, id_turma) VALUES
    (2026001, 'Gustavo Silva Rodrigues', 1),
    (2026002, 'Olívia Costa Barbosa', 2),
    (2026003, 'André Ferreira Oliveira', 3),
    (2026004, 'Gabriela Gomes Lima', 4),
    (2026005, 'Otávio Martins Nascimento', 5),
    (2026006, 'Beatriz Nascimento Santos', 6),
    (2026007, 'Igor Cardoso Gomes', 7),
    (2026008, 'Renata Oliveira Araújo', 8),
    (2026009, 'Bruno Pereira Costa', 9),
    (2026010, 'Isabela Rodrigues Ribeiro', 10),
    (2026011, 'Rafael Ribeiro Melo', 11),
    (2026012, 'Débora Rocha Pereira', 12),
    (2026013, 'Leonardo Araújo Carvalho', 13),
    (2026014, 'Tatiane Teixeira Cardoso', 14),
    (2026015, 'Daniel Santos Almeida', 15),
    (2026016, 'Larissa Almeida Martins', 16),
    (2026017, 'Tiago Lima Teixeira', 17),
    (2026018, 'Fernanda Carvalho Ferreira', 18),
    (2026019, 'Nicolas Barbosa Rocha', 19),
    (2026020, 'Yasmin Melo Silva', 20),
    (2026021, 'Felipe Silva Rodrigues', 21),
    (2026022, 'Natália Costa Barbosa', 22),
    (2026023, 'William Ferreira Oliveira', 23),
    (2026024, 'Helena Gomes Lima', 24),
    (2026025, 'Paulo Martins Nascimento', 25),
    (2026026, 'Ana Nascimento Santos', 26),
    (2026027, 'Henrique Cardoso Gomes', 27),
    (2026028, 'Patrícia Oliveira Araújo', 28),
    (2026029, 'Caio Pereira Costa', 29),
    (2026030, 'Juliana Rodrigues Ribeiro', 30),
    (2026031, 'Samuel Ribeiro Melo', 1),
    (2026032, 'Carla Rocha Pereira', 2),
    (2026033, 'João Araújo Carvalho', 3),
    (2026034, 'Sofia Teixeira Cardoso', 4),
    (2026035, 'Enzo Santos Almeida', 5),
    (2026036, 'Manuela Almeida Martins', 6),
    (2026037, 'Vinícius Lima Teixeira', 7),
    (2026038, 'Eduarda Carvalho Ferreira', 8),
    (2026039, 'Marcos Barbosa Rocha', 9),
    (2026040, 'Vitória Melo Silva', 10),
    (2026041, 'Gustavo Silva Rodrigues', 11),
    (2026042, 'Olívia Costa Barbosa', 12),
    (2026043, 'André Ferreira Oliveira', 13),
    (2026044, 'Gabriela Gomes Lima', 14),
    (2026045, 'Otávio Martins Nascimento', 15),
    (2026046, 'Beatriz Nascimento Santos', 16),
    (2026047, 'Igor Cardoso Gomes', 17),
    (2026048, 'Renata Oliveira Araújo', 18),
    (2026049, 'Bruno Pereira Costa', 19),
    (2026050, 'Isabela Rodrigues Ribeiro', 20),
    (2026051, 'Rafael Ribeiro Melo', 21),
    (2026052, 'Débora Rocha Pereira', 22),
    (2026053, 'Leonardo Araújo Carvalho', 23),
    (2026054, 'Tatiane Teixeira Cardoso', 24),
    (2026055, 'Daniel Santos Almeida', 25),
    (2026056, 'Larissa Almeida Martins', 26),
    (2026057, 'Tiago Lima Teixeira', 27),
    (2026058, 'Fernanda Carvalho Ferreira', 28),
    (2026059, 'Nicolas Barbosa Rocha', 29),
    (2026060, 'Yasmin Melo Silva', 30),
    (2026061, 'Felipe Silva Rodrigues', 1),
    (2026062, 'Natália Costa Barbosa', 2),
    (2026063, 'William Ferreira Oliveira', 3),
    (2026064, 'Helena Gomes Lima', 4),
    (2026065, 'Paulo Martins Nascimento', 5),
    (2026066, 'Ana Nascimento Santos', 6),
    (2026067, 'Henrique Cardoso Gomes', 7),
    (2026068, 'Patrícia Oliveira Araújo', 8),
    (2026069, 'Caio Pereira Costa', 9),
    (2026070, 'Juliana Rodrigues Ribeiro', 10),
    (2026071, 'Samuel Ribeiro Melo', 11),
    (2026072, 'Carla Rocha Pereira', 12),
    (2026073, 'João Araújo Carvalho', 13),
    (2026074, 'Sofia Teixeira Cardoso', 14),
    (2026075, 'Enzo Santos Almeida', 15),
    (2026076, 'Manuela Almeida Martins', 16),
    (2026077, 'Vinícius Lima Teixeira', 17),
    (2026078, 'Eduarda Carvalho Ferreira', 18),
    (2026079, 'Marcos Barbosa Rocha', 19),
    (2026080, 'Vitória Melo Silva', 20),
    (2026081, 'Gustavo Silva Rodrigues', 21),
    (2026082, 'Olívia Costa Barbosa', 22),
    (2026083, 'André Ferreira Oliveira', 23),
    (2026084, 'Gabriela Gomes Lima', 24),
    (2026085, 'Otávio Martins Nascimento', 25),
    (2026086, 'Beatriz Nascimento Santos', 26),
    (2026087, 'Igor Cardoso Gomes', 27),
    (2026088, 'Renata Oliveira Araújo', 28),
    (2026089, 'Bruno Pereira Costa', 29),
    (2026090, 'Isabela Rodrigues Ribeiro', 30),
    (2026091, 'Rafael Ribeiro Melo', 1),
    (2026092, 'Débora Rocha Pereira', 2),
    (2026093, 'Leonardo Araújo Carvalho', 3),
    (2026094, 'Tatiane Teixeira Cardoso', 4),
    (2026095, 'Daniel Santos Almeida', 5),
    (2026096, 'Larissa Almeida Martins', 6),
    (2026097, 'Tiago Lima Teixeira', 7),
    (2026098, 'Fernanda Carvalho Ferreira', 8),
    (2026099, 'Nicolas Barbosa Rocha', 9),
    (2026100, 'Yasmin Melo Silva', 10);

COMMIT;