/* 1-1 Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.*/
UPDATE shop.users SET created_at = NOW(), updated_at = NOW();