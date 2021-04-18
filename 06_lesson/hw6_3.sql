/* Практическое задание к уроку 6 */

/* Задание # 3.
Определить, кто больше поставил лайков (всего) - мужчины или женщины?
*/

/*
-- вывод id пользователей, указавших женский пол
SELECT user_id FROM profiles p WHERE gender = 'f';

-- вывод id пользователей, указавших мужской пол
SELECT user_id FROM profiles p WHERE gender = 'm';

SELECT * FROM posts_likes pl ;

-- смотрим скольим постам поставил выбранный пользователь лайки
SELECT count(*) FROM posts_likes WHERE user_id = 3 AND like_type = 1;


-- смотрим скольим постам поставили лайки пользователи женского пола
SELECT count(*) FROM posts_likes WHERE user_id IN (SELECT user_id FROM profiles p WHERE gender = 'f') AND like_type = 1;

-- смотрим скольим постам поставили лайки пользователи мужского пола
SELECT count(*) FROM posts_likes WHERE user_id IN (SELECT user_id FROM profiles p WHERE gender = 'm') AND like_type = 1;
*/

SET @women := (SELECT count(*) FROM posts_likes WHERE user_id IN (SELECT user_id FROM profiles p WHERE gender = 'f') AND like_type = 1);
SET @men := (SELECT count(*) FROM posts_likes WHERE user_id IN (SELECT user_id FROM profiles p WHERE gender = 'm') AND like_type = 1);


 Select CASE
 	When @women > @men THEN (SELECT 'Women win!')
 	When @men > @women THEN (SELECT 'Men win!')
 	Else (SELECT 'Nobody')
 END AS 'Winner is';