-- --Практическое задание по теме “Операторы, фильтрация, сортировка и ограничение.
-- --Агрегация данных”
-- --Работаем с БД vk и тестовыми данными, которые вы сгенерировали ранее:
-- --1. Проанализировать запросы, которые выполнялись на занятии, определить возможные корректировки и/или улучшения (JOIN пока не применять).
-- 2. (+) Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
desc profiles;
desc likes;


SELECT sum(target_id)
FROM likes
where user_id = (
select TIMESTAMPDIFF(YEAR, birthday, NOW())
from profiles
where user_id = likes.user_id
);


-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT count(target_id) as results, 'm' as sex
FROM likes
where user_id =(
select user_id from profiles where user_id = likes.user_id and sex = 'm')
union 
SELECT count(target_id) as results, 'f' as sex
FROM likes
where user_id =(
select user_id from profiles where user_id = likes.user_id and sex = 'f');

-- --4. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.