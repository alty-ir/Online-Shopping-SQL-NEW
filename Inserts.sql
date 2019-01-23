INSERT INTO `Customer` (`Id`, `FName`, `LName`, `Email`, `PassWord`, `Sex`, `Balance`) VALUES (NULL, 'Ali', 'ahmadi', 'al@jd.com', '123456', '1', '0');
INSERT INTO `Customer` (`Id`, `FName`, `LName`, `Email`, `PassWord`, `Sex`, `Balance`) VALUES (NULL, 'mohamad', 'ahmadi', 'alsa@jds.com', '1234567', '1', '0');
INSERT INTO `Customer` (`Id`, `FName`, `LName`, `Email`, `PassWord`, `Sex`, `Balance`) VALUES (NULL, 'sama', 'ahmadi', 'asl@jsad.com', '123456', '0', '0');

INSERT INTO `Customer_Address` (`Id`, `Customer_Id`, `Address`, `ZipCode`) VALUES (NULL, '1', 'khonashon', '16161');
INSERT INTO `Customer_Address` (`Id`, `Customer_Id`, `Address`, `ZipCode`) VALUES (NULL, '1', 'yej dg', '31222');
INSERT INTO `Customer_Address` (`Id`, `Customer_Id`, `Address`, `ZipCode`) VALUES (NULL, '2', 'tehran', '123');
INSERT INTO `Customer_Address` (`Id`, `Customer_Id`, `Address`, `ZipCode`) VALUES (NULL, '3', 'karaj', '4123');
INSERT INTO `Customer_Address` (`Id`, `Customer_Id`, `Address`, `ZipCode`) VALUES (NULL, NULL, 'khonashosa san', '16161')

INSERT INTO `Customer_Phone` (`Customer_Id`, `Phone`) VALUES ('1', '222222');
INSERT INTO `Customer_Phone` (`Customer_Id`, `Phone`) VALUES ('2', '333333');
INSERT INTO `Customer_Phone` (`Customer_Id`, `Phone`) VALUES ('2', '444444');
INSERT INTO `Customer_Phone` (`Customer_Id`, `Phone`) VALUES ('3', '555555');

INSERT INTO `Store` (`Id`, `Name`, `City`, `Address`, `Phone`, `Manager`, `OpenTime`, `CloseTime`) VALUES (NULL, 'digikala', 'tehran', 'tehran ... ', '1616161', 'mohamadi', '6', '18');
INSERT INTO `Store` (`Id`, `Name`, `City`, `Address`, `Phone`, `Manager`, `OpenTime`, `CloseTime`) VALUES (NULL, 'bamilo', 'karaj', 'karaj ... ', '1616161', 'irancell', '6', '18');

INSERT INTO `Product` (`Id`, `Name`, `Price`, `Stock`, `Discount`, `Store_Id`) VALUES (NULL, 'mobile', '1000', '5', '0', '1');
INSERT INTO `Product` (`Id`, `Name`, `Price`, `Stock`, `Discount`, `Store_Id`) VALUES (NULL, 'mobile2', '2000', '5', '0', '1');
INSERT INTO `Product` (`Id`, `Name`, `Price`, `Stock`, `Discount`, `Store_Id`) VALUES (NULL, 'ghaza', '10000', '5', '0', '2');
INSERT INTO `Product` (`Id`, `Name`, `Price`, `Stock`, `Discount`, `Store_Id`) VALUES (NULL, 'ghaza2', '20000', '5', '0', '2');

INSERT INTO `Orders` (`Id`, `Store_Id`, `Customer_Id`, `Address_Id`, `TotalPrice`, `Status`, `DateTime`, `Delivery_Id`, `CustomerType`, `PaymentType`) VALUES (NULL, '1', '1', '1', '1000', '3', '2019-01-15 00:00:00', '1', '1', '1');
INSERT INTO `Orders` (`Id`, `Store_Id`, `Customer_Id`, `Address_Id`, `TotalPrice`, `Status`, `DateTime`, `Delivery_Id`, `CustomerType`, `PaymentType`) VALUES (NULL, '1', '1', '5', '2000', '3', '2019-01-15 00:00:00', '1', '1', '1');

INSERT INTO `Support` (`Id`, `FName`, `LName`, `Phone`, `Address`, `Store_Id`) VALUES (NULL, 'sajjad', 'amiri', '1616161', 'tehran ,.....', '1');
INSERT INTO `Support` (`Id`, `FName`, `LName`, `Phone`, `Address`, `Store_Id`) VALUES (NULL, 'ali', 'amiri', '1616161', 'tehran ,.....', '1');
INSERT INTO `Support` (`Id`, `FName`, `LName`, `Phone`, `Address`, `Store_Id`) VALUES (NULL, 'mahsa', 'amiri', '1616161', 'tehran ,.....', '2');
INSERT INTO `Support` (`Id`, `FName`, `LName`, `Phone`, `Address`, `Store_Id`) VALUES (NULL, 'sama', 'amiri', '1616161', 'tehran ,.....', '2');

INSERT INTO `Operation` (`Id`, `FName`, `LName`, `Store_Id`) VALUES (NULL, 'mahin', 'khabir', '1');
INSERT INTO `Operation` (`Id`, `FName`, `LName`, `Store_Id`) VALUES (NULL, 'tima', 'hama', '1');
INSERT INTO `Operation` (`Id`, `FName`, `LName`, `Store_Id`) VALUES (NULL, 'sama', 'khabir', '2');

INSERT INTO `Delivery` (`Id`, `FName`, `LName`, `Phone`, `Status`, `Balance`, `Store_Id`) VALUES (NULL, 'bita', 'haman', '6161616', '0', '10000', '1');
INSERT INTO `Delivery` (`Id`, `FName`, `LName`, `Phone`, `Status`, `Balance`, `Store_Id`) VALUES (NULL, 'mahsa', 'samir', '6161616', '1', '0', '1');
INSERT INTO `Delivery` (`Id`, `FName`, `LName`, `Phone`, `Status`, `Balance`, `Store_Id`) VALUES (NULL, 'ahmad', 'haman', '6161616', '0', '10000', '2');
INSERT INTO `Delivery` (`Id`, `FName`, `LName`, `Phone`, `Status`, `Balance`, `Store_Id`) VALUES (NULL, 'ali', 'samir', '6161616', '1', '0', '2');

INSERT INTO `Delivery` (`Id`, `FName`, `LName`, `Phone`, `Status`, `Balance`, `Store_Id`) VALUES (NULL, 'bita', 'haman', '6161616', '0', '10000', '1');
INSERT INTO `Delivery` (`Id`, `FName`, `LName`, `Phone`, `Status`, `Balance`, `Store_Id`) VALUES (NULL, 'mahsa', 'samir', '6161616', '1', '0', '1');
INSERT INTO `Delivery` (`Id`, `FName`, `LName`, `Phone`, `Status`, `Balance`, `Store_Id`) VALUES (NULL, 'ahmad', 'haman', '6161616', '0', '10000', '2');
INSERT INTO `Delivery` (`Id`, `FName`, `LName`, `Phone`, `Status`, `Balance`, `Store_Id`) VALUES (NULL, 'ali', 'samir', '6161616', '1', '0', '2');

INSERT INTO `Cart` (`Id`, `Orders_Id`, `Product_Id`, `Amount`) VALUES (NULL, '1', '1', '1');
INSERT INTO `Cart` (`Id`, `Orders_Id`, `Product_Id`, `Amount`) VALUES (NULL, '1', '2', '1');