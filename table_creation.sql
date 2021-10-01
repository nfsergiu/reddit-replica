create database reddit;

use reddit;
drop table if exists community;
drop table if exists comment;
drop table if exists post;
drop table if exists user;
create table user (
id_user int not null auto_increment,
username varchar(100) not null,
password varchar(100) not null,
primary key (id_user));

create table post (
id_post int not null auto_increment,
content varchar(2000) not null,
title varchar (50) not null,
id_user int not null, primary key (id_post));

create table comment (
id_comment int not null auto_increment,
text varchar(4000) not null,
id_post int not null,
id_user int not null,
foreign key(id_post) references post(id_post) on delete cascade,
foreign key(id_user) references `user`(id_user) on delete cascade,
primary key(id_comment));

create table `community`(
id_community int not null auto_increment,
name varchar(30) not null,
description varchar(50) not null,
primary key (id_community));

create table `user_community`(
id_community int not null,
id_user int not null,
primary key (id_user, id_community));