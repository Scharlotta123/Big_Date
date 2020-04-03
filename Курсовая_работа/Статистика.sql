-- 1. ���������� ������, �������� � ������� �� 2020 ���,
select count(*) as ����������_������_��_2020 from claim where date_created >= '2020-01-01' AND date_created <= now();
-- 2. ���������� ������, �������� �� ���� 2020,
select count(*) as ����������_������_��_����_2020 from claim where year(date_created) = 2020 and month(date_created) = 3;
-- - ���������� ������������, ��������� �� 2020, 
select count(*) as ����������_������������_��_2020 from claim c where status_id=8 and year(date_created) = 2020;
-- 3. ���������� ������� � ����������������,
select count(*) as ����������_�������_�_���������������� from claim where status_id = 5;
-- 4. ������� ������������ �� ��� ������ �������
select count(*) as ������������_��_���_������� from claim 
inner join departments on claim.department_id = departments.id 
where departments.short_name = 'Mintrud'
and year(claim.date_created) = 2020;
-- 5. ���������� ������������, ���������� �� ����� �� � ���,
select count(*) as '���������� ������������, ���������� �� ����� �� � ���'  
from claim where status_id = 8 
and plase_consultation_id = 1 
and department_id = 9;
-- 6. ����� ���������� ������������, ���������� � ���,
 select count(*) as '���������� ������������, ���������� �� ����� �� � ���' from claim where status_id = 8 and plase_consultation_id = 2;
-- 7. ������������, ���������������������� �� ���� "Trudovoy stag"
select name, surname,topics.short_name from 
users join claim ON users.id = claim.user_id 
join topics ON claim.topic_id = topics.id 
where topics.short_name = "Trudovoy stag";

-- �������� �������������
-- ������������� ���������� ��������� ������������ � ������� ��������
create or replace VIEW view_1 AS
SELECT fool_name as ���������,
count(*) as ����������_������������,
departments.id
from departments
inner join claim on
departments.id = claim.department_id 
where claim.status_id = 8
group by departments.fool_name
ORDER BY fool_name;

-- ������������� ������� ������ � ����� ��������
create or replace VIEW view_2 AS
SELECT name as ������,
count(*) as ����������
from claim_status
join claim on
claim.status_id = claim_status.id
group by ������;

-- �������� ������� � ���������
-- ����� ���������� ����������� ������������ � ����� ���  �� ����������
-- � DBEAVER �� ��������!!! �������� � WORKBENCH
-- ������� �������� ��������� ������������
DELIMITER $$ 
drop function if exists ����������_������������_��_����������;
create FUNCTION ����������_������������_��_���������� (id INT)
returns int 
deterministic 
BEGIN
	DECLARE retval INT;
    RETURN retval;
end; $$
delimiter ;
-- �������� ��������� ������ �� ���������� ������������
CREATE DEFINER=`root`@`localhost` PROCEDURE `�����_��_����������_������������`()
begin
	drop table if exists ������������;
	create temporary table ������������ (
	�����_��� varchar(50),
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
-- ���������� ��������� �������
insert into ������������ 
select distinct address,
����������_������������_��_���������� (offis_mfc.id, 1),
����������_������������_��_���������� (offis_mfc.id, 2),
����������_������������_��_���������� (offis_mfc.id, 3),
����������_������������_��_���������� (offis_mfc.id, 4),
����������_������������_��_���������� (offis_mfc.id, 5),
����������_������������_��_���������� (offis_mfc.id, 6),
����������_������������_��_���������� (offis_mfc.id, 7),
����������_������������_��_���������� (offis_mfc.id, 8),
����������_������������_��_���������� (offis_mfc.id, 9),
����������_������������_��_���������� (offis_mfc.id, 10),
offis_mfc.id
from offis_mfc
order by address;
-- �������� ���������� �������
select * from ������������;
end

-- �������� ��������
-- ��� ���������� ����� ������ � ������� claim ������� ����������� ���������� ����� � ������� departments � ������� claim_sum
-- ��� �������� �������� ������� claim_sum � ������� departments
alter table departments add column claim_sum int unsigned;
-- ������� ��������� � WORKBENCH
CREATE DEFINER=`root`@`localhost` TRIGGER `claim_AFTER_INSERT` AFTER INSERT ON `claim` FOR EACH ROW BEGIN
declare id_department int;
set id_department = NEW.department_id;
update departments set claim_sum = claim_sum+1 
where id = id_department; 
END
-- ��������� ����� ������ � claim � ������� ������, ��� ���� ������� �������� ���������� ������ �� 1 � ������� departments


































