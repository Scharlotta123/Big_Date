create database MFC;
use mfc;

-- --������������
create table users (
	id int unsigned not null auto_increment unique PRIMARY key,
	name varchar(45) not null,
	surname varchar(45) not null,
	patronymic varchar(45), -- �������� ����� �� ����, ��������� � 55 ��
	email varchar(45) not null unique,
	phone varchar(45) not null unique,
	role_id int unsigned not null,
	created_at datetime default now(),
	updated_at datetime default now() on update now());
alter table users add constraint fk_users_role_id foreign key (role_id) references roles (id);

-- ������� ����������
create table profiles_citizen (
	user_id int unsigned not null unique PRIMARY key,
	birth_day date,
	snils varchar(45) not null unique,
	address varchar(45) not null,
	living_address varchar(45) not null,
	serie_dul int not null, -- ����� ��������� ��������������� �������� (���)
	nomber_dul int not null,-- ����� ��������� ��������������� �������� (���)
	date_dul date,-- ���� ������ ��������� ��������������� �������� (���)
	issued_by_dul varchar(45) not null,-- ��� ����� �������� ��������������� �������� (���)
	created_at datetime default now(),
	updated_at datetime default now() on update now());
alter table profiles_citizen add constraint fk_profiles_citizen_user_id foreign key (user_id) references users (id) on delete cascade;

-- ������� ���������
create table profiles_department (
	user_id int unsigned not null unique PRIMARY key,
	position_user varchar(45),-- ���������
	department_id int unsigned not null,
	created_at datetime default now(),
	updated_at datetime default now() on update now());	
alter table profiles_department 
add constraint fk_profiles_department_user_id foreign key (user_id) references users(id) on delete cascade,
add constraint fk_profiles_department_department_id foreign key (department_id) references departments (id);

-- ������� ���������� ���
create table profiles_mfc (
	user_id int unsigned not null unique PRIMARY key,
	position_user varchar(45),-- ���������
	mfc_id int unsigned not null,
	created_at datetime default now(),
	updated_at datetime default now() on update now());
alter table profiles_mfc 
add constraint fk_profiles_mfc_user_id foreign key (user_id) references users(id) on delete cascade,
add constraint fk_profiles_mfc_mfc_id foreign key (mfc_id) references mfc(id);

-- ������� ������������� �������
create table profiles_admin (
	user_id int unsigned not null unique PRIMARY key,
	position_user varchar(45),-- ���������
	created_at datetime default now(),
	updated_at datetime default now() on update now());
alter table profiles_admin add constraint fk_profiles_admin_user_id foreign key (user_id) references users (id) on delete cascade;

-- --����
create table roles (
	id int unsigned not null auto_increment unique PRIMARY key,
	name varchar(20) not null
);
insert into roles (name) values
	('���������'),
	('��������'),
	('���������_���'),
	('�������������')
;


-- --����� ���������� ������������
drop table plase_consultation;
create table plase_consultation(
id int unsigned not null auto_increment unique PRIMARY key,
	name varchar(45) not null
);

insert into plase_consultation (name) values
	('�� ���� ��'),
	('� ����� ���');
drop table  create_plase;

-- --����� ������ ������
create table creat_plase(
id int unsigned not null auto_increment unique PRIMARY key,
	name varchar(45) not null
);

insert into creat_plase (name) values
	('� ����� ���'),
	('���� ��');


-- --���������
create table departments(
	id int unsigned not null auto_increment unique PRIMARY key,
	fool_name varchar(60) not null,
	short_name varchar(20) not null,
	body varchar(2000) not null,
	email varchar(45) not null unique,
	phone varchar(45) not null unique
);

-- --����
create table topics(
	id int unsigned not null auto_increment unique PRIMARY key,
	fool_name varchar(60) not null,
	short_name varchar(20) not null,
	department_id int unsigned not null);
alter table topics add constraint fk_topics_department_id foreign key (department_id) references departments (id) on delete cascade;

-- --����� ���
create table mfc(
	id int unsigned not null auto_increment unique PRIMARY key,
	address varchar(45) not null, -- � ��� ��� ������� � ��������, ������ ������
	phone varchar(45) not null,
	email varchar(45) not null,
	site varchar(45) not null
);

-- --������
drop table claim;
create table claim(
	claim_nomber int unsigned not null auto_increment unique PRIMARY key,
	date_created datetime default now(),
	status_id int unsigned not null,
	user_id int unsigned not null,
	department_id int unsigned not null,
	topic_id int unsigned not null,
	body varchar(2000) not null,
	plase_consultation_id int unsigned not null,
	creat_plase_id int unsigned not null,
	mfc_id int unsigned not null,
	reception_id int unsigned not null,
	user_registrator_id int unsigned not null, -- ������������, ������������������ ������
	updated_at datetime default now() on update now());

alter table claim 
add constraint fk_claim_status_id foreign key (status_id) references claim_status (id),
add constraint fk_claim_user_id foreign key (user_id) references users(id) on delete cascade,
add constraint fk_claim_department_id foreign key (department_id) references departments (id),
add constraint fk_claim_topic_id foreign key (topic_id) references topics (id),
add constraint fk_claim_plase_consultation_id foreign key (plase_consultation_id) references plase_consultation (id),
add constraint fk_claim_mfc_id foreign key (mfc_id) references mfc (id),
add constraint fk_claim_reception_id foreign key (reception_id) references reception (id),
add constraint fk_claim_user_registrator_id foreign key (user_registrator_id) references users(id),
add constraint fk_claim_creatplase_id foreign key (creat_plase_id) references creat_plase (id);



-- --������ ������
create table claim_status(
	id int unsigned not null auto_increment unique PRIMARY key,
	name varchar(45) not null
);

insert into claim_status (name) values
	('�����'),
	('�� ������������'),
	('�� ���������'),
	('�������'),
	('�����'),
	('��������'),
	('��������� ������������'),
	('������������ ���������'),
	('��������� �� ������')
;

-- --���������� ������������
create table reception(
	id int unsigned not null auto_increment unique PRIMARY key,
	department_id int unsigned not null,
	date_time_consultation datetime);
alter table reception add constraint fk_reception_department_id foreign key (department_id) references departments (id) on delete cascade;


