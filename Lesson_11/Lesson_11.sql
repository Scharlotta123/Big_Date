-- ������������ ������� �� ���� ������������ �������� (+_
-- �������� ������� logs ���� Archive. 
-- ����� ��� ������ �������� ������ � �������� users, catalogs � products � ������� logs ���������� ����� � ���� �������� ������, 
-- �������� �������, 
-- ������������� ���������� ����� 
-- � ���������� ���� name.
use shop;
drop table logs;
create table logs (
	ID int unsigned not null AUTO_INCREMENT PRIMARY key,
	����_�����_������ datetime ,
	��������_������� varchar(50),
	���������_����_������ int,
	��� varchar(255)
) ENGINE = Archive;


-- �������� ��������� ����� ����������� � ��������, ��� ���� ����� �� ������ ���� � ������������� ����� ��� �� �����������
CREATE DEFINER=`root`@`localhost` TRIGGER `catalogs_AFTER_INSERT` AFTER INSERT ON `catalogs` FOR EACH ROW BEGIN
insert into logs (����_�����_������, ��������_�������, ���������_����_������, ���) values 
(now(), 'catalogs', new.id, new.name);
end

CREATE DEFINER=`root`@`localhost` TRIGGER `users_AFTER_INSERT` AFTER INSERT ON `users` FOR EACH ROW BEGIN
insert into logs (����_�����_������, ��������_�������, ���������_����_������, ���) values 
(now(), 'users', new.id, new.name);
end

CREATE DEFINER=`root`@`localhost` TRIGGER `products_AFTER_INSERT` AFTER INSERT ON `products` FOR EACH ROW BEGIN
insert into logs (����_�����_������, ��������_�������, ���������_����_������, ���) values 
(now(), 'products', new.id, new.name);
end

-- � �� ������ ��� �� �������� ��� �������, � ��� ������� �������� ������ �������������� ��� � �� ���� ����������� ������������ ���� � ��������, �� ��� ��� ������� � ���� �� ����.

-- ������� � �� �������, � �� ������ ��������� �� ��� ���� � ����� ����� 11. ���� ����������� ������. ������� ��� ���� ���� ����� ������.