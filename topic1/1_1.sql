/* 1-1 Создайте таблицу logs типа Archive.
Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.*/
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
	created_at DATETIME NOT NULL,
	tables_name VARCHAR(45) NOT NULL,
	primary_key_id BIGINT(20) NOT NULL,
	name_value VARCHAR(45) NOT NULL
) ENGINE = ARCHIVE;

/*Trigger on users*/
DROP TRIGGER IF EXISTS create_users;
delimiter //
CREATE TRIGGER create_users AFTER INSERT ON users
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, tables_name, primary_key_id, name_value)
	VALUES (NOW(), 'users', NEW.id, NEW.name);
END //
delimiter ;

/*Trigger on catalogs*/
DROP TRIGGER IF EXISTS create_catalogs;
delimiter //
CREATE TRIGGER create_catalogs AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, tables_name, primary_key_id, name_value)
	VALUES (NOW(), 'catalogs', NEW.id, NEW.name);
END //
delimiter ;

/*Trigger on products*/
delimiter //
CREATE TRIGGER create_products AFTER INSERT ON products
FOR EACH ROW
BEGIN
	INSERT INTO logs (created_at, tables_name, primary_key_id, name_value)
	VALUES (NOW(), 'products', NEW.id, NEW.name);
END //
delimiter ;

/*Tests*/
INSERT INTO users (name, birthday_at)
VALUES ('Евений', '1992-01-01');

INSERT INTO catalogs (name)
VALUES ('Аксессуары');

INSERT INTO products (name, description, price, catalog_id)
VALUES ('Intel Core i5-9000', 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', 10100.50, 1);

SELECT * FROM logs;