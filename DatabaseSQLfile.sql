create database bakehouse;
use bakehouse;

create table items (itemID INT auto_increment primary key not null, itemName varchar(45),priceInPkr INT,quantity varchar(25));

create table customer (customerNo INT auto_increment primary key not null, cname varchar(100),address varchar(500),email varchar(200));

create table itemSale (orderID INT auto_increment primary key not null, customerNo INT,foreign key (customerNo) references customer(customerNo),itemID INT,foreign key (itemID) references items(itemID));

create table workers (workerID INT auto_increment primary key not null, Wname varchar(45),contactNo DECIMAL(12),position varchar(50));

insert into workers (Wname,contactNo,position) values ('Rhys',14252123203,'Owner');
insert into workers (Wname,contactNo,position) values ('Boston',12057404179,'chef');
insert into workers (Wname,contactNo,position) values ('Alex',3376427519,'manager');
insert into workers (Wname,contactNo,position) values ('Dave',547682145,'Delivery Boy');
insert into workers (Wname,contactNo,position) values ('Sydney',3379684002,'chef');
insert into workers (Wname,contactNo,position) values ('May',3379340767,'supply manager');
insert into workers (Wname,contactNo,position) values ('Raymond',3372113733,'cleaner');



insert into items(itemName,priceInPkr,quantity) values ('Waffles',450,'3 waffles');
insert into items(itemName,priceInPkr,quantity) values ('French toasts',350,'4 slices');
insert into items(itemName,priceInPkr,quantity) values ('Bento Cake',1000,'0.5 lbs');
insert into items(itemName,priceInPkr,quantity) values ('Cheesecake',2000,'3 lbs');
insert into items(itemName,priceInPkr,quantity) values ('Bagel',450,'1 bagel');
insert into items(itemName,priceInPkr,quantity) values ('Brownies',500,'2 pieces');
insert into items(itemName,priceInPkr,quantity) values ('Cookies',300,'3 pieces');
insert into items(itemName,priceInPkr,quantity) values ('Apple Pie',1000,'9 inches pie');
