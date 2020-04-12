-- 1. � ���� ������ shop � sample ������������ ���� � �� �� �������, ������� ���� ������. 
-- ����������� ������ id = 1 �� ������� shop.users � ������� sample.users. ����������� ����������.
-- desc users;

select * from shop.users where id = 1;

start transaction;
	insert into sample.users select * from shop.users where id = 1;
	delete from shop.users where id = 1;'
commit;
select * from sample.users where id = 1;


-- 2. �������� �������������, ������� ������� �������� name �������� ������� �� ������� products
-- � ��������������� �������� �������� name �� ������� catalogs.

create or replace VIEW good_name AS
SELECT products.name as ��������_��������, catalogs.name as ��������_�������_�_��������
from products
join catalogs on
products.catalog_id = catalogs.id;

-- 3. �������� �������� ������� hello(), 
-- ������� ����� ���������� �����������, 
-- � ����������� �� �������� ������� �����. 
-- � 6:00 �� 12:00 ������� ������ ���������� ����� "������ ����", 
-- � 12:00 �� 18:00 ������� ������ ���������� ����� "������ ����", 
-- � 18:00 �� 00:00 � "������ �����", 
-- � 00:00 �� 6:00 � "������ ����".

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
    	WHEN  chas >= 6 and chas < 12  THEN return ('������ ����');
        WHEN  chas >= 12 and chas < 18  THEN return ('������ ����');
        WHEN  chas >= 18 and chas < 24  THEN return ('������ �����');
        WHEN  chas < 6  THEN return ('������ ����');
     END case;
END/
select hello() as �����;




