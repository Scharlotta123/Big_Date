-- --������������ ������� �� ���� ����������, ����������, ���������� � �����������.
-- --��������� �������
-- --�������� � �� vk � ��������� �������, ������� �� ������������� �����:
-- --1. ���������������� �������, ������� ����������� �� �������, ���������� ��������� ������������� �/��� ��������� (JOIN ���� �� ���������).
-- 2. (+) ���������� ����� ���������� ������, ������� �������� 10 ����� ������� �������������.
desc profiles;
desc likes;


SELECT sum(target_id)
FROM likes
where user_id = (
select TIMESTAMPDIFF(YEAR, birthday, NOW())
from profiles
where user_id = likes.user_id
);


-- 3. ���������� ��� ������ �������� ������ (�����) - ������� ��� �������?

SELECT count(target_id) as results, 'm' as sex
FROM likes
where user_id =(
select user_id from profiles where user_id = likes.user_id and sex = 'm')
union 
SELECT count(target_id) as results, 'f' as sex
FROM likes
where user_id =(
select user_id from profiles where user_id = likes.user_id and sex = 'f');

-- --4. ����� 10 �������������, ������� ��������� ���������� ���������� � ������������� ���������� ����.