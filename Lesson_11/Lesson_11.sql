-- Практическое задание по теме “Оптимизация запросов” (+_
-- Создайте таблицу logs типа Archive. 
-- Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи, 
-- название таблицы, 
-- идентификатор первичного ключа 
-- и содержимое поля name.
use shop;
drop table logs;
create table logs (
	ID int unsigned not null AUTO_INCREMENT PRIMARY key,
	дата_ввода_записи datetime ,
	название_таблицы varchar(50),
	первичный_ключ_записи int,
	имя varchar(255)
) ENGINE = Archive;


-- Триггеры создавала через конструктор в воркбэнч, тут пишу текст на случай если в прикрепляемом дампе они не отобразятся
CREATE DEFINER=`root`@`localhost` TRIGGER `catalogs_AFTER_INSERT` AFTER INSERT ON `catalogs` FOR EACH ROW BEGIN
insert into logs (дата_ввода_записи, название_таблицы, первичный_ключ_записи, имя) values 
(now(), 'catalogs', new.id, new.name);
end

CREATE DEFINER=`root`@`localhost` TRIGGER `users_AFTER_INSERT` AFTER INSERT ON `users` FOR EACH ROW BEGIN
insert into logs (дата_ввода_записи, название_таблицы, первичный_ключ_записи, имя) values 
(now(), 'users', new.id, new.name);
end

CREATE DEFINER=`root`@`localhost` TRIGGER `products_AFTER_INSERT` AFTER INSERT ON `products` FOR EACH ROW BEGIN
insert into logs (дата_ввода_записи, название_таблицы, первичный_ключ_записи, имя) values 
(now(), 'products', new.id, new.name);
end

-- Я бы хотела как то задачать тип таблицы, и при запуске триггера должен распознаваться тип и по нему выполняться определенный блок в триггере, но как это сделать я пока не знаю.

-- Рэдисон я не сделала, я не смогла повторить то что было в видео уроке 11. Буду разбираться дальше. Рэдисон для меня пока очень сложно.