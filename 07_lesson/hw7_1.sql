/* Практическое задание к уроку 7 */

/* Задание # 1.
Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
*/

SELECT USER_ID FROM ORDERS GROUP BY USER_ID;
SELECT USER_ID,
(SELECT NAME FROM USERS WHERE ID = user_id)
FROM ORDERS GROUP BY USER_ID;
