/* 1-3 Отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value, нулевые запасы должны выводиться в конце.*/
SELECT product_id, sum(value) as sum FROM shop.storehouses_products 
group by product_id
order by sum IS NULL;