/* Практическое задание к уроку 7 */

/* Задание # 2.
Выведите список товаров products и разделов catalogs, который соответствует товару.
*/

-- через вложенный запрос
SELECT name,
(SELECT name FROM catalogs WHERE id = catalog_id)
FROM products p ;

--через join
SELECT products.name, ifnull(catalogs.name, 'Нет категории') from products
LEFT JOIN catalogs ON products.catalog_id = catalogs.id;