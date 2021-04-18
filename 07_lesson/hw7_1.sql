/* Практическое задание к уроку 7 */

/* Задание # 1.
Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
*/

-- через вложенный запрос
SELECT USER_ID,
(SELECT NAME FROM USERS WHERE ID = user_id)
FROM ORDERS GROUP BY USER_ID;

--через join
SELECT DISTINCT name  FROM users INNER JOIN orders ON users.id = orders.user_id;