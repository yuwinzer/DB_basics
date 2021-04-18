/* Практическое задание к уроку 7 */

/* Задание # 2.
Выведите список товаров products и разделов catalogs, который соответствует товару.
*/

SELECT name,
(SELECT name FROM catalogs WHERE id = catalog_id)
FROM products p ;