1.select name from client_master73;
2.select *from client_master73;
3.select name,city from client_master73;
4.select description from product_master73;
5.select name from client_master73 where name like '_a%';
6.select name from client_master73 where city like '_a%';
7.select name from client_master73 where city in('bombay','delhi','madars');
8.select name from client_master73 where city='bombay';
9.select name from client_master73 where bal_due>1000;
10.select *from sales_order73 where to_char(s_order_date,'mn')='73';
11.select *from sales_order where client_no in('c0001','c0002');
12.select *from product_master73 where description in('1.44drive','1.22drive');
13.select *from product_master73 where sell_price>2000 and sell_price<=5000;
14.select product_no,sell_price,sell_price*15 as new_price from product_master73 where sell_price>1500;
15.rename the new column above new query as new_price(already done in question 14).
16.select *from product_master73 where cost_price<1500;
17.select *from product_master73 order by description;
18.select product_no,sqrt(sell_price) as sqrt_price from product_master73;
19.select product_no,description,cost_price/(sell_price-100) as result from product_master73 where description='540 hdd';
20.select name, city, state from client_master73 where state != 'maharashtra';
21.select product_no, description, sell_price from product_master73 where description like 'm%';
22.select *from sales_order73 where order status='c' and s_order_date like '%-n';
23.select count(*) as total_order from sales_order73;
24.select avg(sell_price) from product_master73;
25.select min(sell_price) as average_price from product_master73;
26.select max(sell_price)as minimum_price from product_master73;
27.select count(*) as product_count from product_master73 where sell_price>=1500;
28.select *from product_master73 where qty_on_hand< reorder_lvl;
29.
30.
31.
32.