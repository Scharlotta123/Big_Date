-- 1. Добавить необходимые внешние ключи для всех таблиц базы данных vk (приложить команды).
Выполнено в файле Vk_base_test.sql
-- 2. По созданным связям создать ER диаграмму, используя Dbeaver (приложить графический файл к ДЗ).
Выполнено в файле Снимок_диаграммы.jpeg
-- 3. Переписать запросы, заданые к ДЗ урока 6 с использованием JOIN (три запроса).
-- 3.1 (+) Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
desc profiles;

desc likes;

SELECT count(target_id)
FROM likes as l
join 
profiles as p
on l.target_id = p.user_id  
order by p.birthday 
limit 10
;

-- 3.2 (+) Определить кто больше поставил лайков (всего) - мужчины или женщины?

select count(id)as resalt_sum
FROM likes
join 
profiles
on likes.user_id =profiles.user_id
group by profiles.sex
;