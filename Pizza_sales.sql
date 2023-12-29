Create database `Pizza_sales`;
use Pizza_sales;

# Tables imported from a csv file
select * from Booking;
select * from order_details;

# count of bookings  (There are 21350 bookings)
select count(*) from booking;

# Count of Order details is 48620 orders
select count(*) from Order_details;

# Doing an inner join for the two tables
select * from booking b join order_details O on b.`booking_id` = o.`order_id`;

# Differences in pizza Names
select distinct(name) from  booking b join order_details O on b.`booking_id` = o.`order_id`;

# Count of Distinct pizza Names
select count(distinct name) from  booking b join order_details O on b.`booking_id` = o.`order_id`;
# There are 32 Pizza types

# Sum of Pizza sales
select sum(Price) from  booking b join order_details O on b.`booking_id` = o.`order_id`;
# Pizza sales = $801944.7

# Average of Pizza sales
select avg(price) from  booking b join order_details O on b.`booking_id` = o.`order_id`;
# Average sales is $16.5

# Max price of pizza 
select max(price) from  booking b join order_details O on b.`booking_id` = o.`order_id`;
# Max price is $35.95

# Lowest Price of pizza
select min(price) from  booking b join order_details O on b.`booking_id` = o.`order_id`;
# Lowest Price of Pizza is $9.75

# Numbers of orders booked where pizza prize is 35.95
select Count(*)
from  booking b join order_details O on b.`booking_id` = o.`order_id`where price = '35.95';
# there are 28 orders


# Pizza Names Quarter sales
select name, year(date), quarter(date), sum(price)
 From booking b join order_details O on b.`booking_id` = o.`order_id` group by name, year(date), quarter(date)
 order by Name, year(date), quarter(date);

# 2015 Quarter Sales by Pizza Category
select category, quarter(date), sum(price)
 From booking b join order_details O on b.`booking_id` = o.`order_id` group by category, quarter(date)
 order by category, quarter(date);
 
 # Unique Pizza Names and Ingredients
 Select distinct name, ingredients  from  booking b join order_details O on b.`booking_id` = o.`order_id`;

#Get orders in January only
select Name, Date, pizza_type,price from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-01-%';
select sum(price) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-01-%';
#Total sales in January is 68472.7
select  count(Date) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-01-%'; #Total Orders in January

# Order In Februrary
select Name, Date, pizza_type,price from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-02-%';
# Total Sales in feb is 64067.4
select sum(price) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-02-%';
#Count of Feb orders is 3892
select  count(Date) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-02-%';

# March orders
select Name, Date, pizza_type,price from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-03-%';
# Count of March Orders is 4186
select  count(Date) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-03-%';
#Total sales is 69198
select sum(price) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-03-%';

# April Orders
select Name, Date, pizza_type,price from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-04-%';
#Count of April Orders is 4067
select  count(Date) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-04-%';
select sum(price) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-04-%'; # April sales is 67286.2


# May Orders
select Name, Date, pizza_type,price from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-05-%';
# Count of May orders is 4239
select  count(Date) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-05-%';
select sum(price) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-05-%'; # May sales is 69939.4


# June orders
select Name, Date, pizza_type,price from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-06-%';
# Count of June Orders is 4025
select  count(Date) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-06-%';
select sum(price) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-06-%'; # June sales is 66796.3

# July Orders
select Name, Date, pizza_type,price from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-07-%';
select  count(Date) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-07-%'; # Count of july orders is 4301
select sum(price) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-07-%';#July sales is 71027.45

# August Orders
select Name, Date, pizza_type,price from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-08-%';
select  count(Date) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-08-%';# August Orders count 4094
select sum(price) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-08-%';# August Sales is 67068.8


#September Orders
select Name, Date, pizza_type,price from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-09-%';
select  count(Date) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-09-%'; # Total order 3819
select sum(price) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-09-%'; # Total sales 63018 

#October Orders
select Name, Date, pizza_type,price from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-10-%';
select  count(Date) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-10-%'; #Total Orders 3797
select sum(price) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-10-%'; # Total sales 2566.5

#November orders 
select Name, Date, pizza_type,price from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-11-%';
select count(Date) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-11-%'; # Total orders 4185
select sum(price) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-11-%'; # Total sales 69054

#December Orders
select Name, Date, pizza_type,price from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-12-%';
select  count(Date) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-12-%'; # Total orders 3859
select sum(price) from booking b join order_details O on b.`booking_id` = o.`order_id` where date like '%-12-%'; # Total sales 63449.9