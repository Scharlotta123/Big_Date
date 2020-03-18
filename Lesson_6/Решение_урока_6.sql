use vk;
select * from users where id = 3;


select first_name,
	last_name,
	(select filename from media where id =
	(select photo_id from profiles where user_id = users.id limit 1)) as photo,
	(select city from profiles where user_id = users.id) as city
		from users where id =3;
	
select filename from media
	where user_id = 2
		and media_type_id = (
		select id from media_types where name ='photo'
);

	
select concat(
	'Пользователь ',
	(select concat(first_name, ' ', last_name)
	from users where id = media.user_id),
	' добавил фото ',
	filename,
	created_at) as news
		from media
		where user_id = 4
			and media_type_id = (
		select id from media_types where name ='photo'
);


select 
	(select concat(first_name, ' ', last_name)
	from users u
		where u.id = m.user_id) as owner,
filename, 
size 
	from media m
	order by size desc 
	limit 10;

desc friendship;


(select friend_id from friendship where user_id = 10 
	and status_id in 
	(select id from friendship_statuses where name = 'Confirmed'))
union 
(select user_id from friendship where friend_id = 10 
	and status_id in 
	(select id from friendship_statuses where name = 'Confirmed'));

select * from friendship_statuses;

select filename from media where user_id in (
(select friend_id from friendship where user_id = 10 
	and status_id in 
	(select id from friendship_statuses where name = 'Confirmed'))
union 
(select user_id from friendship where friend_id = 10 
	and status_id in 
	(select id from friendship_statuses where name = 'Confirmed')));
	

select filename from media where user_id = 10
union 
select filename from media where user_id in (
(select friend_id from friendship where user_id = 10 
	and status_id in 
	(select id from friendship_statuses where name = 'Confirmed'))
union 
(select user_id from friendship where friend_id = 10 
	and status_id in 
	(select id from friendship_statuses where name = 'Confirmed')));
	

select user_id, sum(size) as total
	from media
	group by user_id 
	having total > 100000000
	order by total desc;
	
select target_id as mediafile, count(*) as likes
	from likes
	where target_id in (
		select filename from media where user_id in (
			(select friend_id from friendship where user_id = 3
			and status_id in 
			(select id from friendship_statuses where name = 'Confirmed'))
			union 
				(select user_id from friendship where friend_id = 3 
				and status_id in 
				(select id from friendship_statuses where name = 'Confirmed')))
				)
	and target_type_id = (select id from target_types where name = 'media')
	group by target_id;


select count(id) as arhive, monthname(created_at) as month
	from media
	group by month;

select count(id) as new, 
	monthname(created_at) as month,
	month (created_at) as month_num
	from media
		where year (created_at) = year (now())
	group by month_num, month 
	order by month_num desc;

select from_user_id, to_user_id, body, is_delivered, created_at
	from messages
	where from_user_id = 55
	 or to_user_id =55
	 order by created_at desc;

	
select (
	select concat(first_name, ' ', last_name)
	from users
	where id=user_id) as friend,
	case (sex)
		when 'm' then 'man'
		when 'f' then 'women'
	and as sex
	timestampdiff (year, birthday, now()) as age
	from profiles
	where user_id in (
	select friend_id 
	from friendship 
	where user_id = 10 
		and confirmed_at is not null
		and status_id in 
			(select id from friendship_statuses 
			where name = 'Confirmed')
	union
		select user_id 
		from friendship 
		where friend_id = 10
			and confirmed_at is not null
			and status_id in ( 
				select id from friendship_statuses 
				where name = 'Confirmed')
	);
	
select concat(first_name, ' ', last_name) as fullname
	from users
	where first_name like 'M%';

select concat(first_name, ' ', last_name) as fullname
	from users
	where last_name Rlike '^M.*s$';

	
	

	 
