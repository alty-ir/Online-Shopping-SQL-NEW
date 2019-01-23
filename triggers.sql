
DELIMITER //
CREATE TRIGGER OrderLog AFTER UPDATE ON Orders
FOR EACH ROW
BEGIN
 if NEW.Status <> OLD.Status THEN

      INSERT INTO `Logs` (`Id`, `TableName`, `TableId`, `OldValue`, `NewValue`) VALUES (NULL, 'Orders', NEW.Id, OLD.Status, NEW.Status);

      
END IF;
END;//
DELIMITER ;

---------------
DELIMITER //
CREATE TRIGGER DeliveryLog AFTER UPDATE ON Delivery
FOR EACH ROW
BEGIN
 if NEW.Status <> OLD.Status THEN

      INSERT INTO `Logs` (`Id`, `TableName`, `TableId`, `OldValue`, `NewValue`) VALUES (NULL, 'Delivery', NEW.Id, OLD.Status, NEW.Status);

      
END IF;
END;//
DELIMITER ;


DROP TRIGGER IF EXISTS `Hash`;CREATE DEFINER=`nexco`@`localhost` TRIGGER `Hash` BEFORE INSERT ON `Customer` FOR EACH ROW SET NEW.PassWord = PASSWORD(NEW.PassWord)

