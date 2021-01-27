use mydb;
SELECT * FROM appartment_reserv;

/* Вызов ошибки пересечения дат броней ( триггер - check_appartment_reserv ) */
INSERT INTO appartment_reserv(customer_id, appartment_id, start_date, end_date) VALUES (97, 5, '2021-01-07', '2021-02-05');

/* Проверка обновление данных в таблице users_booking ( триггер - appartment_reserv ) */
INSERT INTO appartment_reserv(customer_id, appartment_id, start_date, end_date) VALUES (1, 5, '2021-09-07', '2021-09-10');
SELECT * FROM appartment_reserv;

/* Проверка обновление данных в таблице users_booking ( триггер - delete_appartment_reserv ) */
DELETE FROM `mydb`.`appartment_reserv` WHERE customer_id = 101;
SELECT * FROM appartment_reserv;
