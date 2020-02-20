-- select * from profiles limit 100;
-- show tables;
desc users;
select * from users limit 10;
update users set created_at = updated_at where created_at > updated_at;
update users set phone = concat('+7', phone);
update users set phone = replace (phone, 'x', 1);
update users set phone = replace (phone, '.', 2);
update users set phone = replace (phone, '-', 9);
update users set phone = replace (phone, ')', 7);
update users set phone = replace (phone, '(', 4);


select * from profiles limit 10;
update profiles set sex = '';
create temporary table sex (sex char(1));
insert into sex values ('m'), ('f');
select * from sex;
update profiles set sex = (select sex from sex order by rand () limit 1);
update profiles set photo_id = floor(1 + (rand()*100)) ;
select floor(1 + (rand()*100));
select count(*) from media;
update profiles set created_at = updated_at where created_at > updated_at;



update messages set
	from_user_id = floor(1 + (rand()*100)),
	to_user_id = floor(1 + (rand()*100));
select * from messages where from_user_id = to_user_id;
update messages set to_user_id=from_user_id +1 where to_user_id = from_user_id;

select * from media limit 10;
select * from media_types;
delete from media_types;
truncate media_types;

insert into media_types (name) value
	('photo'),
	('audio'),
	('video');

update media set media_type_id =  floor(1 + (rand()*3));
update media set user_id =  floor(1 + (rand()*100));


update media set filename = concat('http://dropbox.net/vk/file_', filename); 
update media set size = 234556 where size = 0;
update media set metadate = concat ('{"owner":"', 
	(select concat(first_name, ' ', last_name) from users where id = user_id),
	'"}');


desc media;
alter table media modify metadate json;
alter table media rename column mediadate to metadate;


select * from friendship limit 10;
select * from friendship_statuses;

truncate friendship_statuses;

insert into friendship_statuses (name) value
	 ('Requested'),
	 ('Confirmed'),
	 ('Rejected');
	

update friendship set
	user_id = floor(1 + (rand()*100)),
	friend_id = floor(1 + (rand()*100));
update friendship set status_id =  floor(1 + (rand()*3));
update friendship set requested_at = confirmed_at where requested_at > confirmed_at;


select * from comunities;
delete from comunities where id > 10;

select * from comunities_users;
update comunities_users set comunity_id = floor(1 + (rand()*10));
update comunities_users set user_id = floor(1 + (rand()*100));

desc comunities_users;

alter table comunities add column is_open boolean default false;
alter table comunities add column description varchar(255) after name;

update comunities set is_open = true where id in (2, 4, 6, 8);
select * from comunities;
update comunities set is_open = false where is_open is null;

update comunities set description = 
	(select body from messages where messages.id = comunities.id);


select * from posts limit 10;
update posts set user_id = floor(1 + (rand()*100));
update posts set media_id = floor(1 + (rand()*100));
update posts set created_at = updated_at where created_at > updated_at;

	









