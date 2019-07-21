ALTER TABLE `purchase_products`  ADD `tax` DECIMAL(15,8) NOT NULL  AFTER `quantity`;
ALTER TABLE `banners`  ADD `reference` VARCHAR(50) NOT NULL  AFTER `name`,  ADD `reference_id` INT NOT NULL  AFTER `reference`;
ALTER TABLE `products`  ADD `stock` DECIMAL(15,8) NOT NULL  AFTER `inventory`;
ALTER TABLE `products`  ADD `featured` BOOLEAN NOT NULL  AFTER `stock`; 
ALTER TABLE `categories`  ADD `mobile_menu` BOOLEAN NOT NULL  AFTER `image`;
ALTER TABLE `categories`  ADD `top` BOOLEAN NOT NULL  AFTER `mobile_menu`,  ADD `bottom` BOOLEAN NOT NULL  AFTER `top`;
ALTER TABLE `manufactures`  ADD `mobile_menu` BOOLEAN NOT NULL  AFTER `image`;
ALTER TABLE `manufactures`  ADD `top` BOOLEAN NOT NULL  AFTER `mobile_menu`,  ADD `bottom` BOOLEAN NOT NULL  AFTER `top`;

ALTER TABLE `customers`  ADD `pan_number` VARCHAR(50) NOT NULL  AFTER `image`,  ADD `gst_number` VARCHAR(50) NOT NULL  AFTER `pan_number`;


CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `discount` decimal(15,8) NOT NULL,
  `used_limit` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `coupon_histories` (
  `id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `discount` decimal(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;