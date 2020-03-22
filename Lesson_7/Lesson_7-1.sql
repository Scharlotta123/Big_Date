alter table orders add column 
	product_id SERIAL PRIMARY KEY;

insert into orders (user_id ) values
	(1), (3), (3), (4);

ALTER TABLE orders 
ADD FOREIGN KEY (product_id)
REFERENCES products (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

-- 1. (+) ��������� ������ ������������� users, ������� ����������� ���� �� ���� ����� orders � �������� ��������.
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


-- (+) �������� ������ ������� products � �������� catalogs, ������� ������������� ������.
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


-- ����� ������� ������� ������ flights (id, from, to) 
-- � ������� ������� cities (label, name). 
-- ���� from, to � label �������� ���������� �������� �������, ���� name � �������. 
-- �������� ������ ������ flights � �������� ���������� �������.

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
('moscow','������'),
('novgorod','��������'),
('omsc','����'),
('ircutsk','�������'),
('kazan','������');
select * from city;

select Fly_from, Fly_to 
from flights as f
join
city as c
if f.Fly_from = c.lable set c.name;

-- �� ���������� ����
