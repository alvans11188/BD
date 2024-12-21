create database holamundo;
show databases;
use holamundo;
CREATE TABLE animales(
	id int,
    tipo varchar(255),
    estado varchar(255),
    PRIMARY KEY (id)
);

-- INSERT INTO animales (tipo, estado) VALUES ('chancho','feliz');
-- doble - para dejar comentarios
ALTER TABLE animales MODIFY COLUMN id int auto_increment;

SHOW CREATE TABLE animales; 

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
); 
INSERT INTO animales (tipo, estado) VALUES ('chancho','feliz');
INSERT INTO animales (tipo, estado) VALUES ('lagarto','feliz');
INSERT INTO animales (tipo, estado) VALUES ('vaca','triste');

SELECT * FROM animales;
SELECT * FROM animales WHERE id=1; 
SELECT * FROM animales WHERE estado = 'feliz' AND tipo = 'chancho'; 
SELECT * FROM animales WHERE estado = 'triste' AND tipo = 'vaca'; 
SELECT * FROM animales WHERE estado = 'feliz' AND tipo = 'lagarto'; 
-- Actualizar registros ya ingresados 

UPDATE animales SET estado = 'feliz' where id = 4;

SELECT * FROM animales; 

DELETE FROM animales WHERE estado = 'feliz';
-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.
DELETE FROM animales WHERE id = 2;




