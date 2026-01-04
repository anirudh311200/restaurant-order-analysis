-- ======================================================
-- SQL Project: Restaurant Order Analysis
-- Repository: restaurant-order-analysis
-- Author: Anirudh Mahanti
-- Purpose: Analyze restaurant order data to uncover 
--          insights on menu popularity, customer behavior, 
--          and high-value orders.
-- ======================================================


-- =========================
-- Objective 1: Explore menu_items table
-- =========================

use restaurant_db;

-- Total number of items on the menu
select
    count(*) as number_of_items
from
    menu_items;

-- Price range: least and most expensive items
select
    min(price) as least_expensive_item,
    max(price) as most_expensive_item
from
    menu_items;

-- Item names corresponding to least and most expensive items
select
    item_name, 
    price
from
    menu_items
where
    price = (select min(price) from menu_items) 
    or price = (select max(price) from menu_items);

-- Number of Italian dishes
select
    count(item_name) as number_of_italian_dishes,
    category
from
    menu_items
where
    category = 'italian';

-- Price range of Italian dishes
select
    min(price),
    max(price)
from
    menu_items
where
    category = 'italian';

-- Italian dishes corresponding to min and max price
select
    item_name,
    price
from
    menu_items
where
    category = 'italian'
    and price = (select min(price) from menu_items where category = 'italian') 
    or price = (select max(price) from menu_items where category = 'italian');

-- Overview of categories
select
    category
from
    menu_items;

select
    count(category) as number_of_italian_dishes
from
    menu_items
where
    category = 'italian';

select
    category,
    count(*) as total_dishes,
    round(avg(price), 2) as average_price
from
    menu_items
group by
    category
order by
    total_dishes desc;


-- =========================
-- Objective 2: Explore order_details table
-- =========================

use restaurant_db;

-- View full order_details table
select
    *
from
    order_details;

-- Date range of orders
select
    min(order_date) as earliest_date,
    max(order_date) as last_date
from
    order_details;

-- Total number of unique orders and total items ordered
select
    count(distinct order_id) as number_of_orders,
    count(*) as total_items_ordered
from
    order_details;

-- Number of items in each order
select
    order_id,
    count(*) as number_of_items
from 
    order_details
group by
    order_id
order by
    number_of_items desc;

-- Number of orders with more than 12 items
select
    count(*) as orders_with_more_than_12_items
from
(
    select
        order_id,
        count(*) as number_of_items
    from
        order_details
    group by
        order_id
    having
        count(*) > 12
) as subquery;


-- =========================
-- Objective 3: Analyze customer behavior
-- =========================

-- Combine menu_items and order_details
select
    menu_items.menu_item_id,
    menu_items.item_name,
    menu_items.category,
    menu_items.price,
    order_details.item_id,
    order_details.order_date,
    order_details.order_details_id,
    order_details.order_id,
    order_details.order_time
from
    menu_items
join
    order_details
on
    order_details.item_id = menu_items.menu_item_id;

-- Most and least ordered items
select
    menu_items.item_name,
    menu_items.category,
    count(*) as times_ordered
from
    menu_items
join
    order_details
on
    order_details.item_id = menu_items.menu_item_id
group by
    menu_items.item_name,
    menu_items.category
order by
    times_ordered asc;

-- Top 5 orders by total spend
select
    order_details.order_id,
    sum(menu_items.price) as total_spend
from
    order_details
join
    menu_items
on
    menu_items.menu_item_id = order_details.item_id
group by
    order_details.order_id
order by
    total_spend desc
limit 5;

-- Details of the highest spend order
select
    order_details.order_id,
    menu_items.item_name,
    menu_items.category,
    menu_items.price
from
    order_details
join
    menu_items
on
    menu_items.menu_item_id = order_details.item_id
where
    order_id = 440;

-- BONUS: Details of the top 5 highest spend orders
select
    order_details.order_id,
    menu_items.item_name,
    menu_items.category,
    menu_items.price
from
    order_details
join
    menu_items
    on menu_items.menu_item_id = order_details.item_id
join (
    select
        order_details.order_id
    from
        order_details
    join
        menu_items
        on menu_items.menu_item_id = order_details.item_id
    group by
        order_details.order_id
    order by
        sum(menu_items.price) desc
    limit 5
) as top_orders
on
    order_details.order_id = top_orders.order_id
order by
    order_details.order_id;
