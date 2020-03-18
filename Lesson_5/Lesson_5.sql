-- 1. (+) ѕусть в таблице users пол€ created_at и updated_at оказались незаполненными. «аполните их текущими датой и временем.

select * from users limit 10;

update users set created_at = NOW();
update users set updated_at = NOW();

-- 2. (+) “аблица users была неудачно спроектирована. «аписи created_at и updated_at были заданы типом VARCHAR 
-- и в них долгое врем€ помещались значени€ в формате "20.10.2017 8:10". 
-- Ќеобходимо преобразовать пол€ к типу DATETIME, сохранив введеные ранее значени€.

-- ѕол€ уже преобразованны в форма datetime

-- 3. (+) ¬ таблице складских запасов storehouses_products в поле value могут встречатьс€ самые разные цифры: 
-- 0, если товар закончилс€ и выше нул€, если на складе имеютс€ запасы. 
-- Ќеобходимо отсортировать записи таким образом, чтобы они выводились в пор€дке увеличени€ значени€ value. 
-- ќднако, нулевые запасы должны выводитьс€ в конце, после всех записей.

create table storehouses_products(
	id int unsigned not null auto_increment PRIMARY key,
	value int
	);

select * from storehouses_products;

insert into storehouses_products (value) 
	values (2), (5), (4), (0), (2500), (0), (50);

select * from storehouses_products order by value = 0, value;



-- 4. (+) »з таблицы users необходимо извлечь пользователей, родившихс€ в августе и мае. ћес€цы заданы в виде списка английских названий ('may', 'august')
desc users;
desc profiles;
select * from profiles limit 5;

select users.first_name, users.last_name, monthname(birthday)  
	from users, profiles
	where users.id = profiles.user_id 
	and (monthname(birthday) = 'May' or monthname(birthday) = 'August')
	order by monthname(birthday)
	;

	
-- (+) 6. ѕодсчитайте средний возраст пользователей в таблице users
    
select floor(avg(TIMESTAMPDIFF(YEAR, birthday, NOW()))) AS age from profiles;

	
-- (+) 7.ѕодсчитайте количество дней рождени€, которые приход€тс€ на каждый из дней недели. 
-- —ледует учесть, что необходимы дни недели текущего года, а не года рождени€.
select count(user_id), weekday(birthday) as cod_day from profiles group by cod_day;

-- 8.(по желанию) ѕодсчитайте произведение чисел в столбце таблицы


create table tab1 (
val int
);

insert into tab1 () values
(1),(2),(3),(4),(5);
select * from tab1;

SELECT exp(SUM(log(val))) FROM tab1;

