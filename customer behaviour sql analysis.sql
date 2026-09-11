-- 1) which product categories  generate  the most revenue.
select category,sum(purchase_amount) as revenue
from customer_data
group by category
order by revenue desc;

-- 2) which customers used a discount but still spent more than the average purchase amount.
select customer_id,purchase_amount
from customer_data
where discount_applied = 'yes' and purchase_amount >= (select avg(purchase_amount) from customer_data);

-- 3)What percentage of customers are subscribers vs non-subscribers?
select  Subscription_Status,
count(*) as  customer_count,
round(count(*) * 100.0 / (select count(*) from customer_data),2) as percentage
from customer_data
group by subscription_status;

-- 4)Who are the highest-spending customers, and what is their rank?
select
customer_id,
sum(purchase_amount) as total_spent,
rank() over (order by sum(purchase_amount) desc) as spending_rank
from customer_data
group by customer_id
order by spending_rank;

-- 5) which payment method is most popular among high-value purchases?
select
payment_method,
count(*) as purchase_count
from customer_data
where purchase_amount > (
select avg(purchase_amount)
from customer_data
)
group by payment_method
order by purchase_count desc;

-- 6)segment customers based on their previous purchases.
select  customer_id,previous_purchases,
case
 when previous_purchases <= 5 then 'new customer'
 when previous_purchases <=15 then 'regular customer'
 else 'loyal customer'
 end as customer_segment
 from customer_data;
  
 -- 7)find customers who have made more purchases than the average customer.
 with average_purchases as (
select avg(previous_purchases) as avg_previous_purchases
from customer_data
)
select
customer_id,
previous_purchases
from customer_data
where previous_purchases > (
select avg_previous_purchases
from average_purchases
)
order by previous_purchases desc;

-- 8)which combination of season and category generates the highest revenue?
select
season,
category,
sum(purchase_amount) as total_revenue
from customer_data
group by season, category
order by total_revenue desc
limit 1;