-- ��������� ������ Users

-- 1. � �������� ���, ������� ����� 69,  ���������� 10, ����������� ��� 20 (�� ��� �� 1 ���), ����� 1. � �������� ������ ���������� ���� ����
update users set role_id =1 where id <=70;
update users set role_id =2 where id >70 and id <= 80;
update users set role_id =3 where id >80;
update users set role_id =4 where id =1;

select count(*)
from users
group by role_id;

-- 2. ���� �������� � ��������� ���� ����������
update users set created_at = now();
update users set updated_at = now();

-- 3. ������� 
alter table users drop column phone;
alter table users add column phone varchar(45);
update users set phone = concat('+7', floor(RAND()*(9999999998-1000000001)+1000000001));
alter table users modify column phone varchar(45) not null;


-- ��������� ������ profiles_citizen
-- 1. ����� (10 ����, ���� ������ ��� ����)
update profiles_citizen set snils = floor(RAND()*(9999999998-1000000001)+1000000001);
-- 2. ����� ��� (4 �����)
update profiles_citizen set serie_dul = floor(RAND()*(9998-1001)+1001);
-- 3. ����� ��� (6 ����)
update profiles_citizen set nomber_dul = floor(RAND()*(999998-100001)+100001);
-- 4. ���� ������ ������ ���� ������ ���� ��������
update profiles_citizen set date_dul = date_add(birth_day, interval 14 year);
-- 5. ���� �������� � ��������� ���� ����������
update profiles_citizen set created_at = now();
update profiles_citizen set updated_at = now();


-- ��������� ������ profiles_department
-- 1. ��������� �� ������ �� ���������
update profiles_department set position_user = '��������� ��������';
-- 2. � ���� ������������� id ��������� 1, ���� �������� �� 10 ������
UPDATE profiles_department SET department_id = user_id;
-- 3. ���� �������� � ��������� ���� ����������
update profiles_department set created_at = now();
update profiles_department set updated_at = now();

-- ��������� ������ profiles_mfc
-- 1. ��������� �� ������ �� ���������
update profiles_mfc set position_user = '��������� ���';
-- 2. � ���� ������������� id ��� 2, ���� �������� �� 10 ������.
update profiles_mfc set mfc_id = user_id where user_id <=10;
update profiles_mfc set mfc_id = user_id - 10 where user_id > 10 ;
-- 3. ���� �������� � ��������� ���� ����������
update profiles_mfc set created_at = now();
update profiles_mfc set updated_at = now();


-- ��������� ������ profiles_admin
-- 1. ��� ������, ���� ���������.
insert into profiles_admin (user_id, position_user, created_at, updated_at) values
	('1',
	'admin',
	'01.03.2020',
	'01.03.2020');

-- ��������� ������ plase_consultation
-- 1. ������ ����������, ������� ������
delete from plase_consultation where id >2;

-- 
-- ��������� ������ departments
-- 1. ������� 
update departments set phone = concat('+7', floor(RAND()*(9999999998-1000000001)+1000000001));

-- ��������� ������ offis_mfc
-- 1. ������� 
update offis_mfc set phone = concat('+7', floor(RAND()*(9999999998-1000000001)+1000000001));

-- ��������� ������ claim
-- 1. ���� ����� ���������� ������ "�� ����� ��", �� ���� mfc_id ������ ���� null, ��� ��� ������������ ���������� �� ������ �� 

update claim set mfc_id = null 
where plase_consultation_id = 1;

-- 2. ���� ����� ������ "�� ������ ��", �� ���� user_registration ������ ���� ����� user_id, �.�. ���� ������ �������� �� ����, �� �� ������� ��� ���������
update claim set user_registrator_id = user_id 
where creat_plase_id = 2;


