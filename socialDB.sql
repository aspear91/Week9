create database if not exists social;

use social;

drop table if exists comments;
drop table if exists posts;
drop table if exists userdata;


create table userdata (
	id int(11) not null auto_increment,
	user_name varchar(30) not null,
	email varchar(50) not null,
	password varchar(32) not null,
	primary key(id)
);

create table posts (
	id int(11) not null auto_increment,
	user_id int (11) not null,
	content varchar(255) not null,
	date_posted datetime default current_timestamp,
	primary key (id),
	foreign key (user_id) references userdata(id)
);


create table comments (
	id int(11) not null auto_increment,
	post_id int (11) not null,
	user_id int (11) not null,
	content varchar(255) not null,
	date_commented datetime default current_timestamp,
	primary key (id),
	foreign key (post_id) references posts(id),
	foreign key (user_id) references userdata(id)
);




