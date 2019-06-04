DROP TRIGGER IF EXISTS `order_history_insert`;
CREATE TRIGGER `order_history_insert` AFTER INSERT ON `orders` FOR EACH ROW INSERT INTO order_histories SET 
order_id=NEW.id,
order_status_id=NEW.order_status_id,
comment=NEW.comment,
status=NEW.status,
created_by=NEW.created_by,
created_at=now(),
updated_by=NEW.updated_by,
updated_at=now();

DROP TRIGGER IF EXISTS `order_history_update`;
CREATE TRIGGER `order_history_update` BEFORE UPDATE ON `orders` FOR EACH ROW INSERT INTO order_histories SET 
order_id=OLD.id,
order_status_id=OLD.order_status_id,
comment=OLD.comment,
status=OLD.status,
created_by=OLD.created_by,
created_at=now(),
updated_by=OLD.updated_by,
updated_at=now();