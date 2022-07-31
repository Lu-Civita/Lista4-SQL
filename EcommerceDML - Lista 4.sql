USE db_ecommerce;

INSERT INTO tb_usuarios
VALUES 
(500, 'Gretchen', 'Gret', '999', 'CurriculoGretchen'),
(550, 'In�s Brasil', 'IB', '666', 'CurriculoBrasil'),
(600, 'Jojo Todynho', 'Jojo', '969', 'CurriculoTodynho');

INSERT INTO tb_produtos
VALUES
(5, 'Caderno', 'Caderno Beyonce', 15, '8', 'Papelaria', 'FOTOCADERNO'),
(10, 'Blusa', 'Blusa Britney', 50 , '6', 'Roupas', 'FOTOBLUSA'),
(15, 'Bon�', 'Bon� Nike', 80, '3', 'Fitness', 'FOTOBON�');

INSERT INTO tb_compras   
VALUES
(500, 5, '11-01-2001'),
(550, 10, '12-02-2002'),
(600, 15, '13-03-2003');

SELECT * FROM tb_usuarios;
SELECT * FROM tb_produtos;
SELECT * FROM tb_compras;

SELECT nome, documento FROM tb_usuarios;

SELECT * FROM tb_produtos
WHERE descricao LIKE '%yonce%';

SELECT * FROM tb_usuarios
WHERE Id BETWEEN 450 AND 580;

SELECT * FROM tb_produtos
WHERE tb_produtos.categoria IN ('Papelaria', 'Roupas');

SELECT u.Nome from tb_usuarios AS u
INNER JOIN tb_compras ON u.Id = fk_criador;

SELECT Valor FROM tb_produtos;

SELECT AVG(Valor) AS 'VALOR-MEDIO' FROM tb_produtos;