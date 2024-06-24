-- 1. Select all products along with their supplier names
SELECT p.product_name, sp.supplier_name
FROM product p
JOIN supplier sp ON sp.supplier_id = sp.supplier_id
JOIN contact s ON sp.contact_id = s.contact_id;

-- 2. Select all sales along with salesperson name and contact name of the buyer
SELECT sa.sales_date, sp.contact_id AS salesperson_contact, c.contact_name AS customer_name
FROM sales sa
JOIN salesperson sp ON sa.salesperson_id = sp.salesperson_id
JOIN contact c ON sp.contact_id = c.contact_id;

-- 3. Select all orders with their total value and associated sales date
SELECT o.order_id, o.total_order_value, sa.sales_date
FROM orders o
JOIN sales sa ON o.sales_id = sa.sales_id;

-- 4. Select all deliveries, including warehouse name and the city it's located in
SELECT d.delivery_id, d.delivery_date, w.warehouse_name, w.warehouse_city
FROM deliveries d
JOIN warehouse w ON d.warehouse_id = w.warehouse_id;

-- 5. Select all purchase items, including the product name and quantity
SELECT pi.purchase_item_id, p.product_name, pi.quantity
FROM purchase_item pi
JOIN product p ON pi.product_id = p.product_id;

-- 6. Select all sales items, including the product name and revenue per item
SELECT si.sales_item_id, p.product_name, si.revenue_per_item
FROM sales_item si
JOIN product p ON si.product_id = p.product_id;

-- 7. Select all payments, including the sales date and payment amount
SELECT pa.payment_id, sa.sales_date, pa.payment_amount
FROM payment pa
JOIN sales sa ON pa.sales_id = sa.sales_id;

-- 8. Select all reward points along with the contact name of the customer
SELECT rp.reward_points_id, c.contact_name, rp.points_earned, rp.points_redeemed
FROM reward_points rp
JOIN contact c ON rp.contact_id = c.contact_id;