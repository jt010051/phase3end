create database taskmanager;
use taskmanager;
create table users (id int (3) primary key auto_increment not null, username varchar(20), password varchar(100) , active boolean);
create table task(id int(3) primary key auto_increment not null, name varchar(255), start_date varchar (255) , 
end_date varchar(255) , description varchar(255), email varchar(255), severity varchar(20));
insert into users values (1, 'jt0100','$2y$12$OMzA60vz4faAIWrrmswPgOfqQ2CGgEnkN8FXPR1fN6iXnFkaxgviq', true);
insert into task values (1, 'Check Inventory','2008-01-02','2008-01-05', 'make sure all items are counted correctly', 'jt010051@gmail.com', 'low');
create table roles (id int (3) primary key auto_increment not null, role varchar(20));

select * from users;
drop table task;
select * from task;
drop table users;
drop table roles;
SET foreign_key_checks = 0;
REPLACE INTO `roles` VALUES (1,'ADMIN');
select * from task;
