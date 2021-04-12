/* Практическое задание к уроку 3 */

/* Задание # 1.
Подсчитайте средний возраст пользователей в таблице users.
*/
SELECT AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) AS Average FROM users;




/* Задание # 2.
Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
Следует учесть, что необходимы дни недели текущего года, а не года рождения.
*/
SELECT
	DAYNAME(DATE_FORMAT(birthday_at, CONCAT(YEAR(now()), '-%m-%d'))) AS 'Dayname',
	COUNT(*) AS cnt
FROM users
GROUP BY Dayname;





/* Задание # 3.
Подсчитайте произведение чисел в столбце таблицы.
*/
select round(EXP(SUM(LOG(id))),3) as multip from x;