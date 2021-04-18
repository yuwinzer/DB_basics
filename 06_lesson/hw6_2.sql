/* Практическое задание к уроку 6 */

/* Задание # 2.
Подсчитать общее количество лайков на посты, которые получили пользователи младше 18 лет.
*/

/*
-- выводим все посты пользователей младше 18
SELECT id from posts WHERE user_id IN (SELECT user_id FROM profiles WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 18);
-- выводим посты и количество лайков у них
SELECT post_id, count(*) AS cnt FROM posts_likes pl WHERE like_type = 1 GROUP BY post_id;
*/

-- вместе получаем количество лайков у постов  пользователей младше 18
SELECT count(*) AS cnt FROM posts_likes pl WHERE like_type = 1
AND
post_id IN (SELECT id from posts WHERE user_id IN (SELECT user_id FROM profiles WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 18));