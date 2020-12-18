/* 2-1  средний возраст пользователей в таблице users */
SELECT round(avg(TIMESTAMPDIFF(YEAR, birthday_at, NOW())), 0) as age FROM shop.users;