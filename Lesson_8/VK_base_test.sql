create database vk;
use vk;

-- ÏÎËÜÇÎÂÀÒÅËÈ 
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

-- ÏĞÎÔÈËÈ
create table profiles (
	user_id int unsigned not null PRIMARY key,
	sex char(1) not null,
	birthday date,
	city varchar(100),
	photo_id int unsigned,
	created_at datetime default now(),
	updated_at datetime default now() on update now()
);
alter table profiles
 add constraint profiles_user_id_fk
 	foreign key (user_id) references users(id)
 		on delete cascade,
 add constraint profiles_photo_id_fk
 	foreign key (photo_id) references media(id)
 		on delete set null;
 	

-- ÑÎÎÁÙÅÍÈß
drop table messages;
create table messages (
	id int unsigned not null AUTO_INCREMENT PRIMARY key,
	from_user_id int unsigned not null,
	to_user_id int unsigned not null,
	comunities_id int unsigned not null,
	body text not null,
	is_important boolean,
	is_delivered boolean,
	created_at datetime default now()
);
desc messages;

alter table messages 
 add constraint messages_from_user_id_fk
 	foreign key (from_user_id) references users(id),
 add constraint messages_to_user_id_fk
 	foreign key (to_user_id) references users(id),
 add constraint messages_comunities_id_fk
 	foreign key (comunities_id) references comunities (id)	
 		

-- ÄĞÓÆÁÀ
create table friendship (
	user_id int unsigned not null,
	friend_id int unsigned not null,
	status_id int unsigned not null,
	requested_at datetime default now(),
	confirmed_at datetime,
	primary key (user_id, friend_id)
);
desc friendship;

alter table friendship 
 add constraint friendship_user_id_fk
 	foreign key (user_id) references users(id);
 
 
-- ÑÒÀÒÓÑÛ ÄĞÓÆÁÛ
create table friendship_statuses (
	id int unsigned not null AUTO_INCREMENT PRIMARY key,
	name varchar(150) not null
);

-- ÑÎÎÁÙÅÑÒÂÀ
create table comunities (
	id int unsigned not null AUTO_INCREMENT PRIMARY key,
	name varchar(150) not null
);
	
-- ÏÎËÜÇÎÂÀÒÅËÈ ÑÎÎÁÙÅÑÒÂÀ
create table comunities_users  (
	comunity_id int unsigned not null,
	user_id int unsigned not null,
	primary key (comunity_id, user_id)
);
alter table comunities_users
 add constraint comunities_users_comunity_id_fk
 	foreign key (comunity_id) references comunities(id)
 	on delete cascade,
 add constraint comunities_users_user_id_fk
 	foreign key (user_id) references users(id)
 		on delete cascade
 ;

-- ÌÅÄÈÀ
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
alter table media
 add constraint media_media_type_id_fk
 	foreign key (media_type_id) references media_types(id),
 add constraint media_user_id_fk
 	foreign key (user_id) references users(id)
 		on delete cascade
;

-- ÒÈÏÛ ÌÅÄÈÀ
create table media_types (
	id int unsigned not null AUTO_INCREMENT PRIMARY key,
	name varchar(255) not null unique
);

-- ÏÎÑÒÛ
create table posts(
	id int unsigned not null auto_increment primary key,
	media_id int unsigned,
	user_id int unsigned not null,
	heard varchar (100),
	body mediumtext,
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp on update current_timestamp
);
alter table posts
 add constraint posts_media_id_fk
 	foreign key (media_id) references media(id)
 	on delete NO ACTION,
 add constraint posts_user_id_fk
 	foreign key (user_id) references users(id)
 		on delete cascade
;	
-- ËÀÉÊÈ
drop table if exists likes;
create table likes (
	id int unsigned not null auto_increment primary key,
	user_id int unsigned not null,
	target_id int unsigned not null,
	target_type_id int unsigned not null,
	created_at datetime default current_timestamp
);
alter table likes
add constraint likes_user_id_fk
 	foreign key (user_id) references users(id)
 		on delete cascade,
add constraint likes_target_type_id_fk
 	foreign key (target_type_id) references target_types(id)
 		on delete no action
;
alter table likes
add constraint likes_target_id_fk
 	foreign key (user_id) references users(id)
 		on delete cascade
 ;

-- ÒÈÏÛ ËÀÉÊÎÂ
drop table if exists target_type;
create table target_types (
	id int unsigned not null auto_increment primary key,
	name varchar(255) not null unique,
	created_at datetime default current_timestamp
);
insert into target_types (name) values
	('messeges'),
	('posts'),
	('media'),
	('users');

insert into likes 
	select 
	id,
	floor(1 + (rand() * 100)),
	floor(1 + (rand() * 100)),
	floor(1 + (rand() * 4)),
	current_timestamp
	from messages;

-- select * from likes limit 10;


