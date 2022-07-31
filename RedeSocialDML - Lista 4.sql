USE db_RedeSocial;

INSERT INTO tb_usuarios
VALUES 
(20, 'Ana Louise', 'AnaLu', '123', 'FOTOLU'),
(30, 'Tania', 'TM', '1234', 'FOTOTAN'),
(22, 'Thais', 'THATHA', '12345', 'FOTOTHA');

INSERT INTO tb_grupos
VALUES
(1, 'Danca', 'Grupo de dan�a', 'ImagemDanca', 20),
(2, 'Canto', 'Grupo da canto', 'ImagemCanto', 30),
(3, 'Luta', 'Grupo de luta', 'ImagemLuta', 22);

INSERT INTO tb_postagens
VALUES
(40, 'Danca atualmente', 'Danca mais realizada atualmente Bal�', 'FOTODAPOSTAGEM', '01-02-2022', 20, 1),
(50, 'Canto atualmente', 'Canto mais realizada atualmente L�rico', 'FOTODAPOSTAGEM', '01-02-2022', 30, 2),
(60, 'Luta atualmente', 'Luta mais realizada atualmente Boxe', 'FOTODAPOSTAGEM', '01-02-2022', 22, 3);

SELECT * FROM tb_usuarios;
SELECT * FROM tb_grupos;
SELECT * FROM tb_postagens;

SELECT nome, usuario FROM tb_usuarios;

SELECT * FROM tb_grupos
WHERE descricao LIKE '%gru%';

SELECT * FROM tb_usuarios
WHERE id_usuarios BETWEEN 10 AND 25;

SELECT COUNT (*) AS 'TOTAL DE USUARIOS'
FROM tb_usuarios;

SELECT Nome FROM tb_usuarios
FULL OUTER JOIN tb_postagens ON id_usuarios = id_postagens;