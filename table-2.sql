TABLE - 1
create table client_master73
(client_no varchar(6) primary key check(client_no like 'c%'),
name varchar(20) not null,
address1 varchar(30),
address2 varchar(30),
city varchar(15),
state varchar(15),
pincode number(6),
Bal_due number(10,2));



INSERT DATA OF TABLE -1 :
 insert into client_master73(client_no,name,city,pincode, state, bal_due)values ('c00001' ,'Ivan Bayross','Bombay',400054,'Maharashtra',15000);
 insert into client_master73 (client_no,name,city,pincode, state, bal_due)values ('c00002' ,'Vandana Saitwal','Madaras',780001,'Tamil Nadu',0);
 insert into client_master73 (client_no,name,city,pincode, state, bal_due)values ('c00003' ,'Pramada jaguste','Bombay',400057,'Maharashtra',5000);
 insert into client_master73 (client_no,name,city,pincode, state, bal_due)values ('c00004' ,'Basu Navindgi','Bombay',400056,'Maharashtra',0);
 insert into client_master73 (client_no,name,city,pincode, bal_due)values ('c00005' ,'Ravi Sreedharan','Delhi',100001,2000);
insert into client_master73 (client_no,name,city,pincode, state, bal_due)values ('c00006' ,'Rukmini','Bombay',400050,'Maharashtra',0);


Table 2:
create table Product_master73
(product_no varchar(6) primary key check(product_no like 'p%'),
description varchar(20) not null,
profit_percent number(5,2) not null,
unit_measure varchar(10) not null,
qut_on_hand number(8) not null,
reorder_lvl number(8) not null,
sell_price number(8,2) not null check (sell_price >0),
cost_price number(8,2) not null check (cost_price >0));


INSERT DATA OF TABLE -2 :
 insert into product_master73(product_no,description,profit_percent,unit_measure,qut_on_hand,reorder_lvl,sell_price,cost_price) values ('p00001' ,'1.44 Floppies',5,'piece',100,20,525,500);
 insert into product_master73(product_no,description,profit_percent,unit_measure,qut_on_hand,reorder_lvl,sell_price,cost_price) values ('p03453' ,'Monitors',6,'piece',10,3,12000,11280);
insert into product_master73(product_no,description,profit_percent,unit_measure,qut_on_hand,reorder_lvl,sell_price,cost_price) values ('p06734' ,'Mouse',5,'piece',20,5,1050,1000);
 insert into product_master73(product_no,description,profit_percent,unit_measure,qut_on_hand,reorder_lvl,sell_price,cost_price) values ('p07865' ,'1.22 Floppies',5,'piece',100,20,525,500);
 insert into product_master73(product_no,description,profit_percent,unit_measure,qut_on_hand,reorder_lvl,sell_price,cost_price) values ('p07868' ,'Keyboards',2,'piece',10,3,3150,3050);
 insert into product_master73(product_no,description,profit_percent,unit_measure,qut_on_hand,reorder_lvl,sell_price,cost_price) values ('p07885' ,'CD drive',2.5,'piece',10,3,5250,5100);
 insert into product_master73(product_no,description,profit_percent,unit_measure,qut_on_hand,reorder_lvl,sell_price,cost_price) values ('p07965','540 HDD',4,'piece',10,3,8400,8000);
 insert into product_master73(product_no,description,profit_percent,unit_measure,qut_on_hand,reorder_lvl,sell_price,cost_price) values ('p07975','1.44 Drive ',5,'piece',10,3,1050,1000);
 insert into product_master73(product_no,description,profit_percent,unit_measure,qut_on_hand,reorder_lvl,sell_price,cost_price) values ('p08865','1.22 Drive ',5,'piece',2,3,1050,1000);


Table :3
create table salesman_master73
(Salesman_no varchar(6) primary key check(Salesman_no like 's%'),
Salesman_name varchar(20) not null,
Add1 varchar(30)not null,
Add2 varchar(30),
City varchar(20),
Pincode varchar(6),
State varchar(20),
Sal_amt numeric(8,2)not null check(sal_amt>0),
Tgt_to_get numeric(6,2)not null check(tgt_to_get>0),
Ytd_sales numeric(6,2)not null,
Remarks varchar(60));

INSERT DATA OF TABLE-3  :
insert into salesman_master73(salesman_no,salesman_name,add1,add2,city,pincode,state,sal_amt,Tgt_to_get,Ytd_sales,Remarks)values('s00001','kiran','a/14','worli','bombay',400002,'mah',3000,100,50,'good');
insert into salesman_master73(salesman_no,salesman_name,add1,add2,city,pincode,state,sal_amt,Tgt_to_get,Ytd_sales,Remarks)values('s00002','mansi',65,'nariman','bombay',400001,'mah',3000,200,100,'good');
insert into salesman_master73(salesman_no,salesman_name,add1,add2,city,pincode,state,sal_amt,Tgt_to_get,Ytd_sales,Remarks)values('s00003','ravi','p-7','bandra','bombay',400032,'mah',3000,200,100,'good');
insert into salesman_master73(salesman_no,salesman_name,add1,add2,city,pincode,state,sal_amt,Tgt_to_get,Ytd_sales,Remarks) values('s00004','ashish','a/5','juhu','bombay',400044,'mah',3000,200,150,'good');

Table :4
create table sales_order73
(s_order_no varchar(6) primary key check(s_order_no like 'o%'),
s_order_date date,
client_no varchar(6)references client_master73(client_no),
dely_addr varchar(25),
salesman_no varchar(6)references salesman_master73(salesman_no),
dely_type char(1)default 'F' check(dely_type in('P','F')),
billed_yn char(1),
dely_date date,
order_status varchar(10),
constraint chk_dely_date check(dely_date>=s_order_date),
constraint chk_order_status check(order_status in('in process','fulfilled','backorder','cancled')));

INSERT DATA OF TABLE-4  :
insert into sales_order73(s_order_no,s_order_date,client_no,dely_type,billed_yn,salesman_no,dely_date,order_status) values('o19001','12-jan-96','c00001','f','n','s00001','20-jan-96','ip');
insert into sales_order73(s_order_no,s_order_date,client_no,dely_type,billed_yn,salesman_no,dely_date,order_status) values('o19002','25-jan-96','c00002','p','n','s00002','27-jan-96','c');
insert into sales_order73(s_order_no,s_order_date,client_no,dely_type,billed_yn,salesman_no,dely_date,order_status) values('o46865','18-feb-96','c00003','f','y','s00003','20-feb-96','f');
insert into sales_order73(s_order_no,s_order_date,client_no,dely_type,billed_yn,salesman_no,dely_date,order_status) values('o19003','03-apr-96','c00001','f','y','s00001','07-apr-96','f');
insert into sales_order73(s_order_no,s_order_date,client_no,dely_type,billed_yn,salesman_no,dely_date,order_status) values('o46866','20-may-96','c00004','p','n','s00002','22-may-96','c');
insert into sales_order73(s_order_no,s_order_date,client_no,dely_type,billed_yn,salesman_no,dely_date,order_status) values('o10008','24-may-96','c00005','f','n','s00004','26-may-96','ip');


Table :5
create table sales_order_detail73
(s_order_no varchar(6),
product_no varchar(6),
qty_ordered number(8),
qty_disp number(8),
product_rate number(10,2),
primary key(s_order_no,product_no),
foreign key(s_order_no)references sales_order73(s_order_no),
foreign key(product_no)references product_master73(product_no));


INSERT DATA OF TABLE-5  :
insert into 
sales_order_detail73(s_order_no,product_no,qty_ordered,qty_disp,product_rate) values('o19001','p00001',4,4,525);
insert into 
sales_order_detail73(s_order_no,product_no,qty_ordered,qty_disp,product_rate) values('o19001','p07965',2,1,8400);
insert into 
sales_order_detail73(s_order_no,product_no,qty_ordered,qty_disp,product_rate) values('o19001','p07885',2,1,5250);
insert into 
sales_order_detail73(s_order_no,product_no,qty_ordered,qty_disp,product_rate) values('o19002','p00001',10,0,525);
insert into 
sales_order_detail73(s_order_no,product_no,qty_ordered,qty_disp,product_rate) values('o46865','p07868',3,3,3150);
insert into 
sales_order_detail73(s_order_no,product_no,qty_ordered,qty_disp,product_rate) values('o46865','p07885',3,1,5250);
insert into 
sales_order_detail73(s_order_no,product_no,qty_ordered,qty_disp,product_rate) values('o46865','p00001',10,10,525);
insert into 
sales_order_detail73(s_order_no,product_no,qty_ordered,qty_disp,product_rate) values('o46865','p03453',4,4,1050);
insert into 
sales_order_detail73(s_order_no,product_no,qty_ordered,qty_disp,product_rate) values('o19003','p03453',2,2,1050);
insert into 
sales_order_detail73(s_order_no,product_no,qty_ordered,qty_disp,product_rate) values('o19003','p06734',1,1,12000);
insert into 
sales_order_detail73(s_order_no,product_no,qty_ordered,qty_disp,product_rate) values('o46866','p07965',1,0,8400);
insert into 
sales_order_detail73(s_order_no,product_no,qty_ordered,qty_disp,product_rate) values('o46866','p07975',1,0,1050);
insert into 
sales_order_detail73(s_order_no,product_no,qty_ordered,qty_disp,product_rate) values('o10008','p00001',10,5,525);
insert into 
sales_order_detail73(s_order_no,product_no,qty_ordered,qty_disp,product_rate) values('o10008','p07975',5,3,1050);


Table :6
create table challan_header73
(challan_no varchar(6) primary key check(challan_no like 'CH%'),
s_order_no varchar(6)references sales_order73(s_order_no),
challan_date date not null,
biled_yn char(1) defaultv'N' check(biled_yn in('Y','N')));
 

INSERT DATA OF TABLE-6  :
insert into challan_header73(challan_no,s_order_no,challan_date,biled) values('CH9001','O19001','12-dec-95','Y');
insert into challan_header73(challan_no,s_order_no,challan_date,biled) values('CH6865','O46865','12-nov-95','Y');
insert into challan_header73(challan_no,s_order_no,challan_date,biled) values('CH3965','O10008','12-oct-95','Y');

create table challan_details73
(challan_no varchar(8),
product_no varchar(8),
qty_disp number(3));

insert all
into challan_details73 values('ch9001','p00001',4)
into challan_details73 values('ch9001','p07965',1)
into challan_details73 values('ch9001','p07885',1)
into challan_details73 values('ch6865','p07868',3)
into challan_details73 values('ch6865','p03453',4)
into challan_details73 values('ch6865','p00001',10)
into challan_details73 values('ch3965','p00001',5)
into challan_details73 values('ch3965','p07975',2)
select *from dual;









