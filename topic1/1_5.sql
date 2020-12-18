/* 1-5  Отсортируйте записи в порядке, заданном в списке IN. */
SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY FIELD(id, 5, 1, 2);