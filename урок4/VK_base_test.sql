create database vk;

use vk;

drop table users;
create table users (
	id int unsigned not null AUTO_INCREMENT PRIMARY key,
	first_name varchar(100) not null,
	last_name varchar(100) not null,
	email varchar(100) not null unique,
	phone varchar(50) not null unique,
	created_at datetime default now(),
	updated_at datetime default now() on update now()
);


create table profiles (
	user_id int unsigned not null PRIMARY key,
	sex char(1) not null,
	birthday date,
	city varchar(100),
	photo_id int unsigned,
	created_at datetime default now(),
	updated_at datetime default now() on update now()
);

create table messages (
	id int unsigned not null AUTO_INCREMENT PRIMARY key,
	from_user_id int unsigned not null,
	to_user_id int unsigned not null,
	body text not null,
	is_important boolean,
	is_delivered boolean,
	created_at datetime default now()
);

create table friendship (
	user_id int unsigned not null,
	friend_id int unsigned not null,
	status_id int unsigned not null,
	requested_at datetime default now(),
	confirmed_at datetime,
	primary key (user_id, friend_id)
);

create table friendship_statuses (
	id int unsigned not null AUTO_INCREMENT PRIMARY key,
	name varchar(150) not null
);

create table comunities (
	id int unsigned not null AUTO_INCREMENT PRIMARY key,
	name varchar(150) not null
);
	
create table comunities_users  (
	comunity_id int unsigned not null,
	user_id int unsigned not null,
	primary key (comunity_id, user_id)
);


create table media (
	id int unsigned not null AUTO_INCREMENT PRIMARY key,
	media_type_id int unsigned not null,
	user_id int unsigned not null,
	filename varchar(255) not null,
	size int not null,
	mediadate json,
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp on update current_timestamp
);

create table media_types (
	id int unsigned not null AUTO_INCREMENT PRIMARY key,
	name varchar(255) not null unique
);

create table posts(
	id int unsigned not null auto_increment primary key,
	media_id int unsigned,
	user_id int unsigned not null,
	heard varchar (100),
	body mediumtext,
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp on update current_timestamp);