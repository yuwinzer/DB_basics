/* Практическое задание к уроку 6 */

/* Задание # 1.
Пусть задан некоторый пользователь.
Найдите человека, который больше всех общался с нашим пользователем, иначе,
кто написал пользователю наибольшее число сообщений. (можете взять пользователя с любым id).
(по желанию: можете найти друга, с которым пользователь больше всего общался)
*/

-- выбираем id исследуемого пользователя
SET  @selected_user_id :=  4;

-- введем переменную для максимального числа сообщений нашему пользователю
SET @max_cnt := (SELECT COUNT(*) FROM messages WHERE to_user_id = @selected_user_id GROUP BY from_user_id LIMIT 1);

-- выводим имя и фамилию пользователя/ей, написавшего/их наибольшее число сообщений, и само число сообщений
SELECT concat(first_name, ' ', last_name) AS name,
(SELECT COUNT(*) FROM messages WHERE to_user_id = @selected_user_id GROUP BY from_user_id LIMIT 1) AS cnt_msgs
FROM users
WHERE id IN (SELECT from_user_id FROM messages WHERE to_user_id = @selected_user_id GROUP BY from_user_id
						having  COUNT(*) = @max_cnt
						);

