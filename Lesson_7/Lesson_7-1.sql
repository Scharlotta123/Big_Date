alter table orders add column 
	product_id SERIAL PRIMARY KEY;

insert into orders (user_id ) values
	(1), (3), (3), (4);

ALTER TABLE orders 
ADD FOREIGN KEY (product_id)
REFERENCES products (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

-- 1. (+) Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
desc users;
desc orders;

select 
u.id, 
u.name,
o.id as order_cod
from users as u
join
orders as o
on 
u.id=o.user_id
group by u.id
;


-- (+) Выведите список товаров products и разделов catalogs, который соответствует товару.
desc products;
desc catalogs;
select
p.id,
p.name,
c.name
from products as p
join 
catalogs as c
on 
p.catalog_id = c.id;


-- Пусть имеется таблица рейсов flights (id, from, to) 
-- и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов flights с русскими названиями городов.

create table flights(
	id SERIAL PRIMARY key,
	Fly_from varchar (255),
	Fly_to varchar (255)
);


insert into flights 
(Fly_from, Fly_to) 
values
('moscow', 'omsc'),
('novgorod', 'kazan'),
('ircutsk','moscow'),
('omsc', 'ircutsk'),
('moscow', 'kazan');
select * from flights;

drop table city;
create table city (
	id SERIAL PRIMARY key,
	lable varchar (255),
	name varchar (255)
);

insert into city 
(lable, name) 
values
('moscow','Москва'),
('novgorod','Новгород'),
('omsc','Омск'),
('ircutsk','Иркутск'),
('kazan','Казань');
select * from city;

select Fly_from, Fly_to 
from flights as f
join
city as c
if f.Fly_from = c.lable set c.name;

-- Не получилось пока
