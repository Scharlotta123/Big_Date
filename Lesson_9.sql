-- 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
-- desc users;

select * from shop.users where id = 1;

start transaction;
	insert into sample.users select * from shop.users where id = 1;
	delete from shop.users where id = 1;'
commit;
select * from sample.users where id = 1;


-- 2. Создайте представление, которое выводит название name товарной позиции из таблицы products
-- и соответствующее название каталога name из таблицы catalogs.

create or replace VIEW good_name AS
SELECT products.name as Название_продукта, catalogs.name as Название_позиции_в_каталоге
from products
join catalogs on
products.catalog_id = catalogs.id;

-- 3. Создайте хранимую функцию hello(), 
-- которая будет возвращать приветствие, 
-- в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
-- с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", 
-- с 00:00 до 6:00 — "Доброй ночи".

select hour(now());
use shop;

drop function hello;

DELIMITER /
create function hello()
RETURNS TEXT no sql
begin
	declare chas tinyint;
    set chas = hour(now());
    -- set chas = 1;
    case 
    	WHEN  chas >= 6 and chas < 12  THEN return ('Доброе утро');
        WHEN  chas >= 12 and chas < 18  THEN return ('Добрый день');
        WHEN  chas >= 18 and chas < 24  THEN return ('Добрый вечер');
        WHEN  chas < 6  THEN return ('Доброй ночи');
     END case;
END/
select hello() as ответ;




