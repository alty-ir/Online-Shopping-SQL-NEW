--1
select Store.Name,Cart.Product_Id, sum(Cart.Amount)
from Store JOIN Orders Join Cart
WHERE Orders.Store_Id = Store.Id and Cart.Orders_Id = Orders.Id
group by Cart.Product_Id, Orders.Store_Id
Order by sum(Cart.Amount) desc
LIMIT 5

--2
SELECT Customer_Phone.Phone
FROM Customer JOIN Customer_Phone JOIN Orders
WHERE Customer_Phone.Customer_Id = Customer.Id and Orders.Customer_Id = Customer.Id and Orders.Status = 3

--3
select j.aveg - k.sumation
from (select  avg(Orders.TotalPrice) as aveg
from Customer_Address JOIN Orders
WHERE Customer_Address.Id = Orders.Address_Id and Customer_Address.Customer_Id IS NULL) as j,

(select sum(Orders.TotalPrice) as sumation
from Customer_Address JOIN Orders
WHERE Customer_Address.Id = Orders.Address_Id and Customer_Address.Customer_Id IS NOT NULL) as k


--4
select Delivery.FName, Delivery.LName, avg(Orders.TotalPrice)
from Delivery JOIN Orders
WHERE Delivery.Id = Orders.Delivery_Id
GROUP BY Delivery.Id
Order By avg(Orders.TotalPrice) DESC

--5
select i.Name, MAX(i.working_hour)

from (select max(k.working_hour) as max_hour
from (select m.Name,(m.CloseTime-m.OpenTime) as working_hour from Store as m) as k) as j,

(select m.Name,(m.CloseTime-OpenTime) as working_hour
from Store as m) as i

where i.working_hour=j.max_hour
