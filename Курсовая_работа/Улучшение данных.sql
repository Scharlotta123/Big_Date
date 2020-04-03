-- Улучшение данных Users

-- 1. Я задумала что, граждан будет 69,  чиновников 10, сотрудников МФЦ 20 (по два на 1 МФЦ), админ 1. В тестовых данных количество было иное
update users set role_id =1 where id <=70;
update users set role_id =2 where id >70 and id <= 80;
update users set role_id =3 where id >80;
update users set role_id =4 where id =1;

select count(*)
from users
group by role_id;

-- 2. Даты создания и изменения были устревшими
update users set created_at = now();
update users set updated_at = now();

-- 3. Телефон 
alter table users drop column phone;
alter table users add column phone varchar(45);
update users set phone = concat('+7', floor(RAND()*(9999999998-1000000001)+1000000001));
alter table users modify column phone varchar(45) not null;


-- Улучшение данных profiles_citizen
-- 1. СНИЛС (10 цифр, пока подряд без тире)
update profiles_citizen set snils = floor(RAND()*(9999999998-1000000001)+1000000001);
-- 2. Серия ДУЛ (4 цифры)
update profiles_citizen set serie_dul = floor(RAND()*(9998-1001)+1001);
-- 3. Номер дул (6 цифр)
update profiles_citizen set nomber_dul = floor(RAND()*(999998-100001)+100001);
-- 4. Дата выдачи должна быть больше даты рождения
update profiles_citizen set date_dul = date_add(birth_day, interval 14 year);
-- 5. Даты создания и изменения были устревшими
update profiles_citizen set created_at = now();
update profiles_citizen set updated_at = now();


-- Улучшение данных profiles_department
-- 1. Должность не похожа на должность
update profiles_department set position_user = 'Сотрудник ведомств';
-- 2. У всех пользователей id ведомства 1, надо заменить на 10 разных
UPDATE profiles_department SET department_id = user_id;
-- 3. Даты создания и изменения были устревшими
update profiles_department set created_at = now();
update profiles_department set updated_at = now();

-- Улучшение данных profiles_mfc
-- 1. Должность не похожа на должность
update profiles_mfc set position_user = 'Сотрудник МФЦ';
-- 2. У всех пользователей id МФЦ 2, надо заменить на 10 разных.
update profiles_mfc set mfc_id = user_id where user_id <=10;
update profiles_mfc set mfc_id = user_id - 10 where user_id > 10 ;
-- 3. Даты создания и изменения были устревшими
update profiles_mfc set created_at = now();
update profiles_mfc set updated_at = now();


-- Улучшение данных profiles_admin
-- 1. Нет данных, надо заполнить.
insert into profiles_admin (user_id, position_user, created_at, updated_at) values
	('1',
	'admin',
	'01.03.2020',
	'01.03.2020');

-- Улучшение данных plase_consultation
-- 1. Данные задвоенные, убираем лишние
delete from plase_consultation where id >2;

-- 
-- Улучшение данных departments
-- 1. Телефон 
update departments set phone = concat('+7', floor(RAND()*(9999999998-1000000001)+1000000001));

-- Улучшение данных offis_mfc
-- 1. Телефон 
update offis_mfc set phone = concat('+7', floor(RAND()*(9999999998-1000000001)+1000000001));

-- Улучшение данных claim
-- 1. Если место проведения выбран "На своем ПК", по поле mfc_id должно быть null, так как консультация проводится со своего пк 

update claim set mfc_id = null 
where plase_consultation_id = 1;

-- 2. Если место подачи "Со своего ПК", то поле user_registration должно быть равно user_id, т.е. если заявка подается из дома, то ее создает сам заявитель
update claim set user_registrator_id = user_id 
where creat_plase_id = 2;


