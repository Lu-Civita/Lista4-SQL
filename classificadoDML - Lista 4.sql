USE db_classificados;

INSERT INTO tb_usuarios1
VALUES 
(1, 'Cachorro', 'CãoBranco', '123', 'AnaLu', 'Imagem1'),
(2, 'Gato', 'BichanoLaranja', '1234', 'Tania', 'Imagem2'),
(3, 'Onça', 'OnçaPintada', '12345', 'Thais', 'Imagem3');

INSERT INTO tb_anuncios1
VALUES
(10, 'LojaPet', 'Pet Shop', '1139041687', 'Imagem Nova', '12-02-2000', 1),
(20, 'LojaVet', 'Loja Veterinária', '1139015073', 'Imagem Atual', '14-04-2002', 2),
(30, 'LojaAdoçãoPet', 'Loja de Adoção de Pets', '11971890833', 'Imagem1 Antiga', '18-08-2008', 3);

SELECT * FROM tb_usuarios1;
SELECT * FROM tb_anuncios1;

SELECT pessoa, usuario FROM tb_usuarios1;

SELECT * FROM tb_anuncios1
WHERE Descricao LIKE '%pet%';

SELECT * FROM tb_anuncios1
WHERE tb_anuncios1.Descricao IN ('Loja Veterinária', 'Loja de Adoção de Pets');

SELECT u.Nome from tb_usuarios1 AS u
RIGHT JOIN tb_anuncios1 ON u.Id_usuarios1 = Fk_usuario1;