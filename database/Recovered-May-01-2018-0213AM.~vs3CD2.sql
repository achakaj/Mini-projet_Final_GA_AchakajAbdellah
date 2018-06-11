create database mastermind
use mastermind
create table maters (IdMaster int primary key identity, name varchar(30),city varchar(30), tel varchar(10),email varchar(50),age int,cause varchar(100),achievements varchar(200),friend varchar(30),readytotravel varchar(5),price varchar(50),problems varchar(100))
alter table maters add Is_Approved bit;
create table messag (name varchar(30), email varchar(30), msg varchar(200));