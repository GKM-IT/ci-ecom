CREATE OR REPLACE
 VIEW `attributes_view`
 AS
SELECT a.*, ag.name AS group_name
FROM attributes a LEFT JOIN attribute_groups ag ON ag.id=a.group_id;

CREATE OR REPLACE
 VIEW `banners_view`
 AS
SELECT b.*, t.name AS type
FROM banners b LEFT JOIN types t ON t.id=b.type_id;

CREATE OR REPLACE
 VIEW `banner_images_view`
 AS
SELECT bi.*, b.name AS banner
FROM banner_images bi LEFT JOIN banners b ON b.id=bi.banner_id;

CREATE OR REPLACE 
 VIEW `carts_view`
 AS
SELECT ct.*, c.name AS customer, p.name AS product, p.image AS product_image, p.mrp, p.price
FROM carts ct LEFT JOIN customers c ON c.id=ct.customer_id LEFT JOIN products p ON p.id=ct.product_id;

CREATE OR REPLACE 
 VIEW `categories_view`
 AS
SELECT c.*, p.name AS parent, t.name AS type
FROM categories c LEFT JOIN types t ON t.id=c.type_id LEFT JOIN categories p ON p.id=c.parent_id;

CREATE OR REPLACE 
 VIEW `cities_view`
 AS
SELECT c.*, ct.name AS country, z.name AS zone
FROM cities c LEFT JOIN countries ct ON ct.id=c.country_id LEFT JOIN zones z ON z.id=c.zone_id;

CREATE OR REPLACE 
 VIEW `customers_view`
 AS
SELECT c.*, cg.name AS group_name
FROM customers c LEFT JOIN customer_groups cg ON cg.id=c.group_id;

CREATE OR REPLACE 
 VIEW `customer_addresses_view`
 AS
SELECT ca.*, c.name AS customer, ct.name AS country, z.name zone, cs.name AS city
FROM customer_addresses ca
    LEFT JOIN customers c ON c.id=ca.customer_id
    LEFT JOIN countries ct ON ct.id=ca.country_id
    LEFT JOIN zones z ON z.id=ca.zone_id
    LEFT JOIN cities cs ON cs.id=ca.city_id;

CREATE OR REPLACE 
 VIEW `customer_sessions_view`
 AS
SELECT cs.*, c.name AS customer
FROM customer_sessions cs LEFT JOIN customers c ON c.id=cs.customer_id;

CREATE OR REPLACE 
 VIEW `customer_wishlists_view`
 AS
SELECT cw.*, c.name AS customer_name, p.name AS product_name, p.price, p.image AS product_image
FROM customer_wishlists cw
    LEFT JOIN customers c ON c.id=cw.customer_id
    LEFT JOIN products p ON p.id=cw.product_id;

CREATE OR REPLACE 
 VIEW `employees_view`
 AS
SELECT e.*, eg.name AS group_name, l.name AS location
FROM employees e
    LEFT JOIN employee_groups eg ON eg.id=e.group_id
    LEFT JOIN locations l ON l.id=e.location_id;

CREATE OR REPLACE 
 VIEW `employee_attendances_view`
 AS
SELECT et.*, l.name AS location, e.name AS employee
FROM employee_attendances et
    LEFT JOIN locations l ON l.id=et.location_id
    LEFT JOIN employees e ON e.id=et.employee_id;

CREATE OR REPLACE 
 VIEW `employee_attendances_view`
 AS
SELECT et.*, l.name AS location, e.name AS employee
FROM employee_attendances et
    LEFT JOIN locations l ON l.id=et.location_id
    LEFT JOIN employees e ON e.id=et.employee_id;

CREATE OR REPLACE 
 VIEW `employee_orders_view`
 AS
SELECT eo.*, e.name AS employee, o.invoice_no, o.comment, o.total, o.total_tax, ot.name AS order_type, os.name AS order_status
FROM employee_orders eo
    LEFT JOIN employees e ON e.id=eo.employee_id
    LEFT JOIN orders o ON o.id=eo.order_id
    LEFT JOIN order_types ot ON ot.id=o.order_type_id
    LEFT JOIN order_statuses os ON os.id=o.order_status_id;

CREATE OR REPLACE 
 VIEW `employee_sessions_view`
 AS
SELECT es.*, e.name AS employee
FROM employee_sessions es
    LEFT JOIN employees e ON e.id=es.employee_id;

CREATE OR REPLACE 
 VIEW `inquiries_view`
 AS
SELECT i.*, it.name AS type
FROM inquiries i
    LEFT JOIN inquiry_types it ON it.id=i.type_id;

CREATE OR REPLACE 
 VIEW `locations_view`
 AS
SELECT l.*, c.name AS country, z.name AS zone, ct.name AS city
FROM locations l
    LEFT JOIN countries c ON c.id=l.country_id
    LEFT JOIN zones z ON z.id=l.zone_id
    LEFT JOIN cities ct on ct.id=l.city_id;

CREATE OR REPLACE 
 VIEW `orders_view`
 AS
SELECT o.*, ot.name AS order_type, cr.name, cr.email, cr.contact, cot.name AS country, z.name AS zone, cit.name AS city, os.name AS order_status
FROM orders o
    LEFT JOIN order_types ot ON ot.id=o.order_type_id
    LEFT JOIN customers cr ON cr.id=o.customer_id
    LEFT JOIN order_statuses os ON os.id=o.order_status_id
    LEFT JOIN countries cot ON cot.id=o.country_id
    LEFT JOIN zones z ON z.id=o.zone_id
    LEFT JOIN cities cit ON cit.id=o.city_id;

CREATE OR REPLACE 
 VIEW `order_products_view`
 AS
SELECT op.*, p.name AS product, p.image AS product_image
FROM order_products op
    LEFT JOIN products p ON p.id=op.product_id;
    
CREATE OR REPLACE 
 VIEW `order_histories_view`
 AS
SELECT oh.*,os.name AS order_status FROM order_histories oh LEFT JOIN order_statuses os ON os.id=oh.order_status_id;

CREATE OR REPLACE 
 VIEW `products_view`
 AS
SELECT p.*, t.name AS type, m.name AS manufacture, tc.name AS tax_class, lc.name length_class, lc.unit AS length_unit, wc.name AS weight_class, wc.unit AS weight_unit
FROM products p
    LEFT JOIN types t ON t.id=p.type_id
    LEFT JOIN manufactures m ON m.id=p.manufacture_id
    LEFT JOIN tax_classes tc ON tc.id=p.tax_class_id
    LEFT JOIN length_classes lc ON lc.id=p.length_class_id
    LEFT JOIN weight_classes wc ON wc.id=p.weight_class_id;

CREATE OR REPLACE 
 VIEW `product_attributes_view`
 AS
SELECT pa.*, p.name AS product, a.name AS attribute
FROM product_attributes pa
    LEFT JOIN products p ON p.id=pa.product_id
    LEFT JOIN attributes a ON a.id=pa.attribute_id;

CREATE OR REPLACE 
 VIEW `product_prices_view`
 AS
SELECT pp.*, p.name AS product, cg.name AS customer_group
FROM product_prices pp
    LEFT JOIN products p ON p.id=pp.product_id
    LEFT JOIN customer_groups cg ON cg.id=pp.customer_group_id;

CREATE OR REPLACE 
 VIEW `product_reviews_view`
 AS
SELECT pr.*, p.name AS product, c.name AS customer, r.name AS rating, r.sort_order AS rate
FROM product_reviews pr
    LEFT JOIN products p ON p.id=pr.product_id
    LEFT JOIN customers c ON c.id=pr.customer_id
    LEFT JOIN ratings r ON r.id=pr.rating_id;

CREATE OR REPLACE
 VIEW `purchases_view`
 AS
SELECT p.*, pt.name AS purchase_type, v.name, v.email, v.contact, ps.name AS purchase_status
FROM purchases p
    LEFT JOIN purchase_types pt ON pt.id=p.purchase_type_id
    LEFT JOIN vendors v ON v.id=p.vendor_id
    LEFT JOIN purchase_statuses ps ON ps.id=p.purchase_status_id;

CREATE OR REPLACE
 VIEW `purchase_products_view`
 AS
SELECT pp.*, p.name AS product, p.image AS product_image
FROM purchase_products pp
    LEFT JOIN products p ON p.id=pp.product_id;

CREATE OR REPLACE
 VIEW `purchase_carts_view`
 AS
SELECT pc.*, u.name
AS user,p.name AS product,p.image AS product_image FROM purchase_carts pc 
LEFT JOIN users u ON u.id=pc.user_id
LEFT JOIN products p ON p.id=pc.product_id;


CREATE OR REPLACE
 VIEW `stocks_view`
 AS
SELECT s.*,p.name AS product,p.image AS productImage,l.name AS location FROM stocks s
LEFT JOIN products p ON p.id=s.product_id
LEFT JOIN locations l ON l.id=s.location_id;

CREATE OR REPLACE
 VIEW `tax_rates_view`
 AS
SELECT tr.*, tc.name AS tax_class
FROM tax_rates tr
    LEFT JOIN tax_classes tc ON tc.id=tr.tax_class_id;

CREATE OR REPLACE
 VIEW `users_view`
 AS
SELECT u.*, ug.name AS group_name
FROM users u
    LEFT JOIN user_groups ug ON ug.id=u.group_id;

CREATE OR REPLACE
 VIEW `user_sessions_view`
 AS
SELECT us.*, u.name
AS user FROM user_sessions us 
LEFT JOIN users u ON u.id=us.user_id;

CREATE OR REPLACE
 VIEW `vendors_view`
 AS
SELECT v.*, vg.name AS group_name
FROM vendors v
    LEFT JOIN vendor_groups vg ON vg.id=v.group_id;

CREATE OR REPLACE
 VIEW `zones_view`
 AS
SELECT z.*, c.name AS country
FROM zones z LEFT JOIN countries c ON c.id=z.country_id;

CREATE OR REPLACE
 VIEW `totalsalesyear`
 AS
SELECT
    SUM(op.price) AS totalPrice,
    SUM(op.quantity) AS totalQty,
    SUM(op.tax) AS totalTax,
    SUM(op.total) AS total,
    YEAR(o.created_at) AS year
FROM order_products op
    LEFT JOIN orders o ON o.id=op.order_id
GROUP BY year;

CREATE OR REPLACE
 VIEW `totalsalesdate`
 AS
SELECT
    SUM(op.price) AS totalPrice,
    SUM(op.quantity) AS totalQty,
    SUM(op.tax) AS totalTax,
    SUM(op.total) AS total,
    DATE(o.created_at) AS date
FROM order_products op
    LEFT JOIN orders o ON o.id=op.order_id
GROUP BY date;

CREATE OR REPLACE
 VIEW `totalsalesmonth`
 AS
SELECT
    SUM(op.price) AS totalPrice,
    SUM(op.quantity) AS totalQty,
    SUM(op.tax) AS totalTax,
    SUM(op.total) AS total,
    MONTHNAME(o.created_at) AS month,
    YEAR(o.created_at) AS year
FROM order_products op
    LEFT JOIN orders o ON o.id=op.order_id
GROUP BY month,year;

CREATE OR REPLACE
 VIEW `totalsalesday`
 AS
SELECT
    SUM(op.price) AS totalPrice,
    SUM(op.quantity) AS totalQty,
    SUM(op.tax) AS totalTax,
    SUM(op.total) AS total,
    DAYNAME(o.created_at) AS day,
    MONTHNAME(o.created_at) AS month,
    YEAR(o.created_at) AS year
FROM order_products op
    LEFT JOIN orders o ON o.id=op.order_id
GROUP BY day,month,year;



CREATE OR REPLACE
 VIEW `productsales`
 AS
SELECT
    p.name AS productName,
    p.image AS productImage,
    SUM(op.price) AS totalPrice,
    SUM(op.quantity) AS totalQty,
    SUM(op.tax) AS totalTax,
    SUM(op.total) AS total
FROM order_products op
    LEFT JOIN products p ON p.id=op.product_id
    LEFT JOIN orders o ON o.id=op.order_id
GROUP BY op.product_id;

CREATE OR REPLACE
 VIEW `coupons_view`
 AS
SELECT c.*,cg.name AS customer_group FROM coupons c LEFT JOIN customer_groups cg ON cg.id=c.customer_group_id;