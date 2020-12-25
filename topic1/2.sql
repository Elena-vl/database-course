/** 2. Список товаров products и разделов catalogs, который соответствует товару. **/
SELECT 
    p.*, c.name as catalog
FROM
    shop.products AS p
        LEFT JOIN
    shop.catalogs AS c ON p.catalog_id = c.id
;