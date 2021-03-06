/* Задание # 1.
Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль,
который указывался при установке.
*/
-- создание конфигурационного файла my.cnf для винды с содержимым:
[client]
user=root
password=12345
-- далее перекидываю файл в C:\Windows, теперь в командной строке не нужно писать пароль, достаточно ввести mysql



/* Задание # 2.
Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов,
числового id и строкового name.
*/
-- создаем БД example
CREATE DATABASE example;
-- указываем, что работаем с БД example
USE example;
-- создаем в указанной БД таблицу users с двумя столбцами - id и name
-- в id - номера, а в name - символы не более 100 знаков, обязательно не пустое поле
CREATE TABLE users (id SERIAL, name VARCHAR (100) NOT NULL UNIQUE);



/* Задание # 3.
Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.
*/
--заливаем содержимое БД example в скриптовый файл example.sql
mysqldump example > example.sql
-- создаем БД sample
CREATE DATABASE sample;
-- заливаем содержимое файла example.sql в БД sample
mysql sample < example.sql
-- mysqldump выгружает данные, а mysql - загружает



/* Задание # 4.
(по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump.
Создайте дамп единственной таблицы help_keyword базы данных mysql.
Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.
*/
-- компактно вывел 100 первых строк в файл few_rows.sql
mysqldump --compact --where="help_keyword_id<100"  mysql help_keyword > few_rows.sql