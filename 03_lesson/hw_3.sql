/* Практическое задание к уроку 3 */

/* Задание # 1.
Проанализировать структуру БД vk с помощью скрипта, который мы создали на занятии (les-3.sql), 
и внести предложения по усовершенствованию (если такие идеи есть). Создайте у себя БД vk с помощью скрипта из материалов урока. 
Напишите пожалуйста, всё ли понятно по структуре.
*/
-- по структуре все понятно

/* Задание # 2.
Придумать 2-3 таблицы для БД vk, которую мы создали на занятии (с перечнем полей, указанием индексов и внешних ключей). Прислать результат в виде скрипта *.sql.

Возможные таблицы:
a. Посты пользователя
b. Лайки на посты пользователей, лайки на медиафайлы
c. Черный список
d. Школы, университеты для профиля пользователя
e. Чаты (на несколько пользователей)
f. Посты в сообществе
...
Примечание: если никогда не были зарегестрированы в Вконтакте или/и не знаете, какие поля должны быть в таблице, напишите мне в личные сообщения. Я пришлю варианты таблиц с колонками, которые там должны быть (например, таблица "пользователь", у которой должны быть колонки "имя", "фамилия"), ваше задание будет реализовать их на языке SQL.
Обязательно проверьте кодировку! Должна быть UTF-8.
*/

-- ======================================================================================
-- Таблица черных списков
CREATE TABLE black_list (
  ignored_by_user_id BIGINT UNSIGNED NOT NULL,
  ignored_user_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY(ignored_by_user_id, ignored_user_id),
  INDEX ignored_by_user_idx (ignored_by_user_id),
  INDEX ignored_user_idx (ignored_user_id),
  CONSTRAINT fk_black_list_users_1 FOREIGN KEY (ignored_by_user_id) REFERENCES users (id),
  CONSTRAINT fk_black_list_users_2 FOREIGN KEY (ignored_user_id) REFERENCES users (id)
);

-- Добавление в черный список
INSERT INTO black_list VALUES (1, 2);

SELECT * FROM black_list;
-- К сожалению внятных способов ограничить количество игнорируемых не нашел
-- В таком виде количество строк таблицы может достигнуть числа пользователей в квадрате

-- Таблица постов
CREATE TABLE user_posts (
  post_author_id BIGINT UNSIGNED NOT NULL,
  post_created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  post_title VARCHAR(256) NOT NULL DEFAULT 'New post',
  post_text TEXT NOT NULL,
  post_media_id BIGINT UNSIGNED DEFAULT NULL,
  PRIMARY KEY(post_author_id, post_created_at),
  INDEX post_author_idx (post_author_id),
  CONSTRAINT fk_user_posts_users FOREIGN KEY (post_author_id) REFERENCES users (id),
  CONSTRAINT fk_user_posts_media FOREIGN KEY (post_media_id) REFERENCES media (id)
);

-- 
INSERT INTO user_posts VALUES (2, DEFAULT, 'Тема поста', 'Содержание поста', DEFAULT);

SELECT * FROM user_posts;
-- ======================================================================================