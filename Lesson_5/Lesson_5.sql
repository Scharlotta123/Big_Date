-- 1. (+) ����� � ������� users ���� created_at � updated_at ��������� ��������������. ��������� �� �������� ����� � ��������.

select * from users limit 10;

update users set created_at = NOW();
update users set updated_at = NOW();

-- 2. (+) ������� users ���� �������� ��������������. ������ created_at � updated_at ���� ������ ����� VARCHAR 
-- � � ��� ������ ����� ���������� �������� � ������� "20.10.2017 8:10". 
-- ���������� ������������� ���� � ���� DATETIME, �������� �������� ����� ��������.

-- ���� ��� �������������� � ����� datetime

-- 3. (+) � ������� ��������� ������� storehouses_products � ���� value ����� ����������� ����� ������ �����: 
-- 0, ���� ����� ���������� � ���� ����, ���� �� ������ ������� ������. 
-- ���������� ������������� ������ ����� �������, ����� ��� ���������� � ������� ���������� �������� value. 
-- ������, ������� ������ ������ ���������� � �����, ����� ���� �������.

create table storehouses_products(
	id int unsigned not null auto_increment PRIMARY key,
	value int
	);

select * from storehouses_products;

insert into storehouses_products (value) 
	values (2), (5), (4), (0), (2500), (0), (50);

select * from storehouses_products order by value = 0, value;



-- 4. (+) �� ������� users ���������� ������� �������������, ���������� � ������� � ���. ������ ������ � ���� ������ ���������� �������� ('may', 'august')
desc users;
desc profiles;
select * from profiles limit 5;

select users.first_name, users.last_name, monthname(birthday)  
	from users, profiles
	where users.id = profiles.user_id 
	and (monthname(birthday) = 'May' or monthname(birthday) = 'August')
	order by monthname(birthday)
	;

	
-- (+) 6. ����������� ������� ������� ������������� � ������� users
    
select floor(avg(TIMESTAMPDIFF(YEAR, birthday, NOW()))) AS age from profiles;

	
-- (+) 7.����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������. 
-- ������� ������, ��� ���������� ��� ������ �������� ����, � �� ���� ��������.
select count(user_id), weekday(birthday) as cod_day from profiles group by cod_day;

-- 8.(�� �������) ����������� ������������ ����� � ������� �������


create table tab1 (
val int
);

insert into tab1 () values
(1),(2),(3),(4),(5);
select * from tab1;

SELECT exp(SUM(log(val))) FROM tab1;

