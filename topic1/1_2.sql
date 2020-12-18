/* 1-2 Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.*/
ALTER TABLE shop.users
CHANGE COLUMN created_at created_at DATETIME NULL DEFAULT NOW();
ALTER TABLE shop.users
CHANGE COLUMN updated_at updated_at DATETIME NULL DEFAULT NOW();