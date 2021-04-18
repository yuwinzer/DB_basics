/* Практическое задание к уроку 3 */

/* Задание # 1.
Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.
*/
UPDATE users SET created_at = now(), updated_at = now() WHERE created_at IS NULL AND updated_at IS NULL;




/* Задание # 2.
Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR
и в них долгое время помещались значения в формате 20.10.2017 8:10. Необходимо преобразовать поля к типу DATETIME,
сохранив введённые ранее значения.
*/
UPDATE `users` SET `created_at` = str_to_date( `created_at`, '%d.%m.%Y %H:%i' );
UPDATE `users` SET `updated_at` = str_to_date( `updated_at`, '%d.%m.%Y %H:%i' );

ALTER TABLE users MODIFY created_at DATETIME;
ALTER TABLE users MODIFY updated_at DATETIME;




/* Задание # 3.
В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0,
если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом,
чтобы они выводились в порядке увеличения значения value. Однако нулевые запасы должны выводиться в конце,
после всех записей.
*/
SELECT value FROM storehouses_products ORDER BY value = 0, value ASC;




/* Задание # 4.
(по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае.
Месяцы заданы в виде списка английских названий (may, august)
*/
--SELECT name,
--CASE month(birthday_at)
--	WHEN 5 THEN 'may'
--	WHEN 8 THEN 'august'
--END AS birth_month FROM users WHERE MONTH(birthday_at) IN (5, 8);
SELECT name, monthname(birthday_at) AS birth_month FROM users
WHERE monthname(birthday_at) IN ('may', 'august');



/* Задание # 5.
(по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2);
Отсортируйте записи в порядке, заданном в списке IN.
*/
SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY id = 2, id = 1, id = 5;