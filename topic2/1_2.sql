/* 2-2 В таблице products есть два текстовых поля: name с названием товара и description с его описанием.
Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема.
Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.*/
DROP TRIGGER IF EXISTS notNullProductsTrigger;
delimiter //
CREATE TRIGGER notNullProductsTrigger BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF(ISNULL(NEW.name) AND ISNULL(NEW.description)) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trigger Warning!';
	END IF;
END //
delimiter ;

INSERT INTO products (name, description, price, catalog_id)
VALUES (NULL, NULL, 7400, 2); -- fail

INSERT INTO products (name, description, price, catalog_id)
VALUES ("Intel Core i3-9000", NULL, 1500, 1); -- success

INSERT INTO products (name, description, price, catalog_id)
VALUES ("MSI B250M GAMING PRO1000", "Материнская плата", 17000, 2);