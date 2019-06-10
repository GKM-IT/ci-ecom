DROP TRIGGER IF EXISTS `order_history_insert`;
CREATE TRIGGER `order_history_insert` AFTER INSERT ON `orders` FOR EACH ROW INSERT INTO order_histories SET 
id=NEW.id,
order_status_id=NEW.order_status_id,
comment=NEW.comment,
status=NEW.status,
created_by=NEW.created_by,
created_at=now(),
updated_by=NEW.updated_by,
updated_at=now();

DROP TRIGGER IF EXISTS `order_history_update`;
CREATE TRIGGER `order_history_update` BEFORE UPDATE ON `orders` FOR EACH ROW INSERT INTO order_histories SET 
id=OLD.id,
order_status_id=OLD.order_status_id,
comment=OLD.comment,
status=OLD.status,
created_by=OLD.created_by,
created_at=now(),
updated_by=OLD.updated_by,
updated_at=now();


DROP TRIGGER IF EXISTS `puchase_history_insert`;
CREATE TRIGGER `puchase_history_insert` AFTER INSERT ON `purchases` FOR EACH ROW INSERT INTO purchase_histories SET 
id=NEW.id,
purchase_status_id=NEW.purchase_status_id,
comment=NEW.comment,
status=NEW.status,
created_by=NEW.created_by,
created_at=now(),
updated_by=NEW.updated_by,
updated_at=now();

DROP TRIGGER IF EXISTS `puchase_history_update`;
CREATE TRIGGER `puchase_history_update` BEFORE UPDATE ON `purchases` FOR EACH ROW INSERT INTO purchase_histories SET 
id=OLD.id,
purchase_status_id=OLD.purchase_status_id,
comment=OLD.comment,
status=OLD.status,
created_by=OLD.created_by,
created_at=now(),
updated_by=OLD.updated_by,
updated_at=now();


DROP TRIGGER IF EXISTS `employee_order_history_insert`;
CREATE TRIGGER `employee_order_history_insert` AFTER INSERT ON `employee_orders` FOR EACH ROW INSERT INTO employee_order_histories SET
id=NEW.id,
remark=NEW.remark,
status=NEW.status,
created_by=NEW.created_by,
created_at=now(),
updated_by=NEW.updated_by,
updated_at=now();


DROP TRIGGER IF EXISTS `employee_order_history_update`;
CREATE TRIGGER `employee_order_history_update` BEFORE UPDATE ON `employee_orders` FOR EACH ROW INSERT INTO employee_order_histories SET
id=OLD.id,
remark=OLD.remark,
status=OLD.status,
created_by=OLD.created_by,
created_at=now(),
updated_by=OLD.updated_by,
updated_at=now();


