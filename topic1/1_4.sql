/* 1-4 Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае.*/
SELECT * FROM shop.users where MONTHNAME(birthday_at) = 'May' or MONTHNAME(birthday_at) = 'August';