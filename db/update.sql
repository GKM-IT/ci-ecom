ALTER TABLE `products`  ADD `margin` DECIMAL(15,4) NOT NULL  AFTER `mrp`;
ALTER TABLE `product_prices`  ADD `discount` DECIMAL(15,4) NOT NULL  AFTER `customer_group_id`;