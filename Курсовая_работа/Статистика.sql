-- 1. количество заявок, поданных в систему за 2020 год,
select count(*) as Количество_заявок_за_2020 from claim where date_created >= '2020-01-01' AND date_created <= now();
-- 2. количество заявок, поданных за март 2020,
select count(*) as Количество_заявко_за_март_2020 from claim where year(date_created) = 2020 and month(date_created) = 3;
-- - количество консультаций, оказанных за 2020, 
select count(*) as Количество_консультаций_за_2020 from claim c where status_id=8 and year(date_created) = 2020;
-- 3. количество отказов в консультировании,
select count(*) as Количество_отказов_в_консультировании from claim where status_id = 5;
-- 4. сколько кондультаций за год оказал Минтруд
select count(*) as Консультаций_за_год_Минтруд from claim 
inner join departments on claim.department_id = departments.id 
where departments.short_name = 'Mintrud'
and year(claim.date_created) = 2020;
-- 5. количество консультаций, полученных на своем ПК в МВД,
select count(*) as 'Количество консультаций, полученных на своем ПК в МВД'  
from claim where status_id = 8 
and plase_consultation_id = 1 
and department_id = 9;
-- 6. общее количество консультаций, полученных у МФЦ,
 select count(*) as 'Количество консультаций, полученных на своем ПК у МВД' from claim where status_id = 8 and plase_consultation_id = 2;
-- 7. Пользователи, проконсультировавшиеся по теме "Trudovoy stag"
select name, surname,topics.short_name from 
users join claim ON users.id = claim.user_id 
join topics ON claim.topic_id = topics.id 
where topics.short_name = "Trudovoy stag";

-- Создание представлений
-- Представление количество оказанных консультаций в разрезе ведомств
create or replace VIEW view_1 AS
SELECT fool_name as Ведомства,
count(*) as Количество_консультаций,
departments.id
from departments
inner join claim on
departments.id = claim.department_id 
where claim.status_id = 8
group by departments.fool_name
ORDER BY fool_name;

-- Представление сколько заявок в каких статусах
create or replace VIEW view_2 AS
SELECT name as Статус,
count(*) as Количетсво
from claim_status
join claim on
claim.status_id = claim_status.id
group by статус;

-- Создание функции и процедуры
-- Вывод количества проведенных консультаций в офисе МФЦ  по ведомствам
-- В DBEAVER НЕ РАБОТАЕТ!!! РАБОТАЕТ В WORKBENCH
-- функция подсчета оказанных консультаций
DELIMITER $$ 
drop function if exists количество_консультаций_по_ведомствам;
create FUNCTION количество_консультаций_по_ведомствам (id INT)
returns int 
deterministic 
BEGIN
	DECLARE retval INT;
    RETURN retval;
end; $$
delimiter ;
-- хранимая процедура отчета по количеству консультаций
CREATE DEFINER=`root`@`localhost` PROCEDURE `отчет_по_количеству_консультаций`()
begin
	drop table if exists консультации;
	create temporary table консультации (
	Адрес_мфц varchar(50),
	Mintrud int,
	FSSP_Office int,
	Minsvyz int,
	Bar_Association int,
	DIZO int,
	PFR int,
	Rospotrebnadzor int,
	AGP int,
	MVD int,
	Kadastr int,
	mfc_id int
    ); 
-- заполнение временной таблицы
insert into консультации 
select distinct address,
количество_консультаций_по_ведомствам (offis_mfc.id, 1),
количество_консультаций_по_ведомствам (offis_mfc.id, 2),
количество_консультаций_по_ведомствам (offis_mfc.id, 3),
количество_консультаций_по_ведомствам (offis_mfc.id, 4),
количество_консультаций_по_ведомствам (offis_mfc.id, 5),
количество_консультаций_по_ведомствам (offis_mfc.id, 6),
количество_консультаций_по_ведомствам (offis_mfc.id, 7),
количество_консультаций_по_ведомствам (offis_mfc.id, 8),
количество_консультаций_по_ведомствам (offis_mfc.id, 9),
количество_консультаций_по_ведомствам (offis_mfc.id, 10),
offis_mfc.id
from offis_mfc
order by address;
-- передача информации клиенту
select * from консультации;
end

-- Создание триггера
-- при добавлении новой строки в таблицу claim триггер увеличивает количество завок в таблице departments в столбце claim_sum
-- для триггера добавлен столбец claim_sum в таблицу departments
alter table departments add column claim_sum int unsigned;
-- триггер создавала в WORKBENCH
CREATE DEFINER=`root`@`localhost` TRIGGER `claim_AFTER_INSERT` AFTER INSERT ON `claim` FOR EACH ROW BEGIN
declare id_department int;
set id_department = NEW.department_id;
update departments set claim_sum = claim_sum+1 
where id = id_department; 
END
-- добавляла новую запись в claim в таблицу руками, при этом триггер увеличил количество заявок на 1 в таблице departments


































