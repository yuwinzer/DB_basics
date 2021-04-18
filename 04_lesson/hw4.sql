/* Практическое задание к уроку 4 */

/* Задание # 2.
Используя сервис http://filldb.info или другой по вашему желанию, сгенерировать тестовые данные для всех таблиц,
используя vk-data.sql, учитывая логику связей. Для всех таблиц, где это имеет смысл, создать не менее 100 строк.
Для media_types создать ровно 4 строки. Загрузить тестовые данные. Приложить к отчёту полученный дамп с данными.
*/
-- решение в файле hw4_vk_dump.sql

/* Задание # 3.
Написать запрос для переименования названий типов медиа (колонка name в media_types), которые вы получили в пункте 3
в осмысленные (например, в "фото", "видео", ...).
*/
-- решение в файле hw4_chng_media_types.sql


/* Задание # 4.
Написать название темы курсового проекта (в комментарии).
*/

/*Тема: производственный склад для учета товаров и материалов для их изготовления

В общем планирую создать свой личный интернет-магазин для продажи хэндмейд поделок, нужна будет БД под интернет-магазин.
Но пока решили что нужнее всего программа/веб страничка, где нужно будет ее так настроить, чтобы удобно велся учет
товаров и материалов.

Например, вбиваешь в программу, что хочешь изготовить 5 кресел, прога отвечает, что для ее изготовления нужно
столько-то ткани и пластика, что уже вот столько ткани и пластика есть, необходимо докупить вот столько.
После изготовления кресла добавляется товар на склад и сразу же вычитаются материалы, которые по статистике уходят
в среднем на него. Придется, конечно, из-за усреднения значений, а также из-за брака материалов как-то поддерживать БД
актуальной частой инвентаризацией) Но хотя бы в таком виде это бы облегчило нашу реально существующую проблему,
когда легко забываешь что кончается какой-то материал и снова приходится ехать в магазин.
Плюс бонусом можно прикрутить цены ко всем материалам, постоянно их обновлять и видеть актуальную себестоимость кресла.
*/