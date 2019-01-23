CREATE TABLE Customer (
  Id int AUTO_INCREMENT,
  FName varchar(50),
  LName varchar(50),
  Email varchar(100),
  PassWord varchar(100),
  Sex boolean,
  Balance int,
  PRIMARY KEY (Id)
);

CREATE TABLE Customer_Address (
  Id int AUTO_INCREMENT,
  Customer_Id int NULL,
  Address varchar(100),
  ZipCode varchar(10),  
  PRIMARY KEY (Id),
  FOREIGN KEY (Customer_Id) REFERENCES Customer(Id) ON DELETE CASCADE
);

CREATE TABLE Customer_Phone (
  Customer_Id int,
  Phone varchar(15),
  PRIMARY KEY (Phone,Customer_Id),
  FOREIGN KEY (Customer_Id) REFERENCES Customer(Id) ON DELETE CASCADE
);

CREATE TABLE Store (
  Id int AUTO_INCREMENT,
  Name varchar(50),
  City varchar(50),
  Address varchar(100),
  Phone varchar(15),
  Manager varchar(100),
  OpenTime int,
  CloseTime int,
  PRIMARY KEY (Id)
);

CREATE TABLE Support (
  Id int AUTO_INCREMENT,
  FName varchar(100),
  LName varchar(100),
  Phone varchar(15),
  Address varchar(200),
  Store_Id int,
  PRIMARY KEY (Id),
  FOREIGN KEY (Store_Id) REFERENCES Store(Id) ON DELETE CASCADE
);

CREATE TABLE Operation (
  Id int AUTO_INCREMENT,
  FName varchar(100),
  LName varchar(100),
  Store_Id int,
  PRIMARY KEY (Id),
  FOREIGN KEY (Store_Id) REFERENCES Store(Id) ON DELETE CASCADE
);

CREATE TABLE Delivery (
  Id int AUTO_INCREMENT,
  FName varchar(100),
  LName varchar(100),
  Phone varchar(15),
  Status boolean,
  Balance int,
  Store_Id int,
  PRIMARY KEY (Id),
  FOREIGN KEY (Store_Id) REFERENCES Store(Id) ON DELETE CASCADE
);

CREATE TABLE Product (
  Id int AUTO_INCREMENT,
  Name varchar(100),
  Price int,
  Stock int,
  Discount float,
  Store_Id int,
  PRIMARY KEY (Id),
  FOREIGN KEY (Store_Id) REFERENCES Store(Id) ON DELETE CASCADE
);

CREATE TABLE Orders (
  Id int AUTO_INCREMENT,
  Store_Id int,
  Customer_Id int,
  Address_Id int,
  TotalPrice int,
  Status int,
  DateTime datetime,
  Delivery_Id int,
  CustomerType boolean,
  PaymentType boolean,
  PRIMARY KEY (Id),
  FOREIGN KEY (Customer_Id) REFERENCES Customer(Id) ON DELETE CASCADE,
  FOREIGN KEY (Address_Id) REFERENCES Customer_Address(Id) ON DELETE CASCADE,
  FOREIGN KEY (Delivery_Id) REFERENCES Delivery(Id) ON DELETE CASCADE, 
  FOREIGN KEY (Store_Id) REFERENCES Store(Id) ON DELETE CASCADE
);

CREATE TABLE Cart (
  Id int AUTO_INCREMENT,
  Orders_Id int,
  Product_Id int,
  Amount int,
  PRIMARY KEY (Id),
  FOREIGN KEY (Orders_Id) REFERENCES Orders(Id) ON DELETE CASCADE,
  FOREIGN KEY (Product_Id) REFERENCES Product(Id) ON DELETE CASCADE
);

CREATE TABLE Logs (
  Id int AUTO_INCREMENT,
  TableName varchar(50),
  TableId int,
  OldValue int,
  NewValue int,
  PRIMARY KEY (Id)
);