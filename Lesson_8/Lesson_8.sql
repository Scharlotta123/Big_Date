-- 1. �������� ����������� ������� ����� ��� ���� ������ ���� ������ vk (��������� �������).
��������� � ����� Vk_base_test.sql
-- 2. �� ��������� ������ ������� ER ���������, ��������� Dbeaver (��������� ����������� ���� � ��).
��������� � ����� ������_���������.jpeg
-- 3. ���������� �������, ������� � �� ����� 6 � �������������� JOIN (��� �������).
-- 3.1 (+) ���������� ����� ���������� ������, ������� �������� 10 ����� ������� �������������.
desc profiles;

desc likes;

SELECT count(target_id)
FROM likes as l
join 
profiles as p
on l.target_id = p.user_id  
order by p.birthday 
limit 10
;

-- 3.2 (+) ���������� ��� ������ �������� ������ (�����) - ������� ��� �������?

select count(id)as resalt_sum
FROM likes
join 
profiles
on likes.user_id =profiles.user_id
group by profiles.sex
;