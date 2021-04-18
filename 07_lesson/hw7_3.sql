/* Практическое задание к уроку 7 */

/* Задание # 3.
(по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name).
Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights
с русскими названиями городов.
*/

DROP TABLE IF EXISTS flights;
CREATE TABLE flights
(id TINYINT PRIMARY key,
from_city varchar(64),
to_city varchar(64));

DROP TABLE IF EXISTS cities;
CREATE TABLE cities
(label varchar(64),
name varchar(64));

INSERT INTO flights (id, from_city, to_city)
VALUES
('1','moscow', 'omsk'),
('2','novgorod', 'kazan'),
('3','irkutsk', 'moscow'),
('4','omsk', 'irkutsk'),
('5','moscow', 'kazan');

INSERT INTO cities (label, name)
VALUES
('moscow', 'Москва'),
('irkutsk', 'Иркутск'),
('novgorod', 'Новгород'),
('kazan', 'Казань'),
('omsk', 'Омск');

SELECT
(SELECT name FROM cities WHERE label = from_city) AS Из,
(SELECT name FROM cities WHERE label = to_city) AS В
FROM flights;