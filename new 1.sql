
 
 create table T_USUARIO(
 CODIGO INT,
 NOME VARCHAR(100),
 CIDADE VARCHAR(100),
 ESTADO VARCHAR(100),
 DATA_NACIMENTO INT,
 TIPO VARCHAR(50)
 );
 
DROP TABLE IF EXISTS T_VEICULO;

CREATE TABLE T_VEICULO (
    CODIGO INT AUTO_INCREMENT PRIMARY KEY,
    MODELO VARCHAR(50),
    MARCA VARCHAR(50),
    ANO INT,
    COR VARCHAR(50)
);

 
 create table T_VIAGEM(
 CODIGO INT,
 DATA_VIAGEM INT,
 MOTORISTA INT,
 PASSAGEIRO INT,
 ORIGEM VARCHAR(100),
 DESTINO VARCHAR(100)
 );
 
INSERT INTO T_USUARIO (NOME, CIDADE, ESTADO, DATA_NACIMENTO, TIPO)
VALUES
('Frederica Piragibe', 'Americana', 'SP', 19901020, 'Motorista'),
('Gisela Campos', 'Campinas', 'SP', 19921130, 'Passageiro'),
('Gláuber Moita', 'Americana', 'SP', 19850805, 'Passageiro'),
('Gustavo Vaz', 'São Paulo', 'SP', 19950520, 'Passageiro'),
('Herberto Mantas', 'São Paulo', 'SP', 19890121, 'Passageiro'),
('Ibijara Faria', 'São Paulo', 'SP', 19911022, 'Passageiro'),
('Ibijara Menezes', 'Rio Claro', 'SP', 19930510, 'Motorista'),
('Ilma Garcia', 'Campinas', 'SP', 19940615, 'Motorista'),
('Ingrit Moreyra', 'Limeira', 'SP', 19910120, 'Passageiro'),
('Ivete Amaro', 'Piracicaba', 'SP', 19900218, 'Passageiro'),
('Jorge Malheiro', 'Americana', 'SP', 19920507, 'Motorista');

 insert INTO T_VEICULO(MODELO,MARCA,ANO,COR)
 VALUES
 ('gol','volkswagen','2018','Preto,'),
 ('sandero','renault','2017','Branco,'),
 ('306','peugeot','2010','Vermelho,'),
 ('uno','fiat','2012','Preto,'),
 ('palio','fiat','2017','Preto,'),
  ('golf','volkswagen','2018','Prata,'),
  ('up','volkswagen','2017','Amarelo,');
 
  insert INTO T_VIAGEM(DATA_VIAGEM,MOTORISTA,PASSAGEIRO,ORIGEM,DESTINO)
 VALUES
 ('30/10/2018','1','2','Americana','São Carlos'),
  ('29/10/2018','2','5','Campinas','Rio Claro'),
  ('29/10/2018 ','3','2','São Paulo','Americana'),
 ('30/10/2018','4','3','Campinas ','São Carlos'),
  ('30/10/2018','5','1','Americana','São Paulo'),
  ('30/10/2018','6','1','Sumaré ','São Paulo'),
  ('29/10/2018 ','7','1','São Carlos ','São Paulo'),
  ('29/10/2018','8','2','Rio Claro','Campinas'),
  ('30/10/2018','9','3','São Paulo','Americana'),
  ('30/10/2018','10','1','Americana','São Paulo');




SELECT * FROM T_USUARIO;

SELECT * FROM T_USUARIO WHERE cidade IN ('Limeira', 'Piracicaba');

SELECT * FROM T_USUARIO WHERE cidade = 'Campinas';

SELECT * FROM T_USUARIO WHERE nome = 'Ingrit Moreyra';

SELECT * FROM T_USUARIO WHERE ano_nascimento > 1990;

SELECT * FROM T_USUARIO WHERE tipo_usuario = 'motorista';

SELECT * FROM T_USUARIO WHERE tipo_usuario = 'passageiro';

SELECT * FROM T_USUARIO WHERE cidade <> 'Americana';

SELECT * FROM T_USUARIO WHERE estado <> 'SP';

SELECT * FROM T_USUARIO WHERE cidade = 'Piracicaba' AND estado = 'SP';

SELECT * FROM T_USUARIO WHERE cidade = 'Americana' AND tipo_usuario = 'passageiro';

SELECT * FROM T_USUARIO WHERE cidade = 'Americana' AND tipo_usuario = 'motorista';

SELECT * FROM T_USUARIO WHERE cidade <> 'Americana' AND tipo_usuario = 'motorista';

UPDATE T_USUARIO SET nome = 'Ingrid Moreira' WHERE nome = 'Ingrit Moreyra';

DELETE FROM T_USUARIO WHERE nome = 'Jorge';

DELETE FROM T_USUARIO WHERE nome = 'Jorge';
/*------------T_VEICULO----------*/
UPDATE T_VEICULO SET marca = UPPER(marca);

UPDATE T_VEICULO SET modelo = CONCAT(UPPER(SUBSTRING(modelo, 1, 1)), LOWER(SUBSTRING(modelo, 2)));

SELECT * FROM T_VEICULO;

SELECT * FROM T_VEICULO WHERE marca = 'FIAT';

SELECT * FROM T_VEICULO WHERE marca = 'VOLKSWAGEN';

SELECT * FROM T_VEICULO WHERE ano = 2018;

SELECT * FROM T_VEICULO WHERE ano <> 2018;

UPDATE T_VEICULO SET cor = 'branco' WHERE modelo = 'UP' AND cor = 'amarelo';

DELETE FROM T_VEICULO WHERE modelo = 'Golf';




