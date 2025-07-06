
create database zomoto_ltd;

use zomoto_ltd;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    JoinDate DATE NOT NULL,
    City VARCHAR(50) NOT NULL
);

INSERT INTO Customers (Name, Email, JoinDate, City) VALUES
('Alice Sharma', 'alice.sharma@email.com', '2021-05-10', 'Delhi'),
('Bob Verma', 'bob.verma@email.com', '2022-02-15', 'Mumbai'),
('Charlie Mehta', 'charlie.mehta@email.com', '2023-01-20', 'Bangalore'),
('David Kapoor', 'david.kapoor@email.com', '2021-07-18', 'Hyderabad'),
('Eva Joshi', 'eva.joshi@email.com', '2022-09-25', 'Chennai'),
('Farhan Sheikh', 'farhan.sheikh@email.com', '2023-03-14', 'Delhi'),
('Gita Nair', 'gita.nair@email.com', '2021-11-30', 'Mumbai'),
('Hari Patel', 'hari.patel@email.com', '2022-06-22', 'Bangalore'),
('Ishaan Rao', 'ishaan.rao@email.com', '2023-04-08', 'Hyderabad'),
('Juhi Singh', 'juhi.singh@email.com', '2021-12-12', 'Chennai'),
('Kunal Sharma', 'kunal.sharma@email.com', '2022-01-05', 'Delhi'),
('Lakshmi Menon', 'lakshmi.menon@email.com', '2023-05-15', 'Mumbai'),
('Mohan Reddy', 'mohan.reddy@email.com', '2021-08-28', 'Bangalore'),
('Nisha Gupta', 'nisha.gupta@email.com', '2022-07-11', 'Hyderabad'),
('Omkar Desai', 'omkar.desai@email.com', '2023-02-20', 'Chennai'),
('Pooja Tiwari', 'pooja.tiwari@email.com', '2021-06-05', 'Delhi'),
('Quentin Dsouza', 'quentin.dsouza@email.com', '2022-10-14', 'Mumbai'),
('Rajiv Bajaj', 'rajiv.bajaj@email.com', '2023-01-30', 'Bangalore'),
('Sanya Kapoor', 'sanya.kapoor@email.com', '2021-09-10', 'Hyderabad'),
('Tushar Jain', 'tushar.jain@email.com', '2022-03-17', 'Chennai'),
('Usha Ramesh', 'usha.ramesh@email.com', '2023-06-21', 'Delhi'),
('Vikram Malhotra', 'vikram.malhotra@email.com', '2021-04-15', 'Mumbai'),
('Wahid Khan', 'wahid.khan@email.com', '2022-08-30', 'Bangalore'),
('Xavier Fernandez', 'xavier.fernandez@email.com', '2023-07-05', 'Hyderabad'),
('Yamini Iyer', 'yamini.iyer@email.com', '2021-10-20', 'Chennai');


CREATE TABLE Restaurants (
    RestaurantID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Cuisine VARCHAR(50) NOT NULL,
    Rating DECIMAL(2,1) CHECK (Rating >= 0 AND Rating <= 5),
    City VARCHAR(50) NOT NULL
);

INSERT INTO Restaurants (Name, Cuisine, Rating, City) VALUES
('The Spice Hub', 'Indian', 4.5, 'Delhi'),
('Pizza Heaven', 'Italian', 4.3, 'Mumbai'),
('Burger Town', 'Fast Food', 4.1, 'Bangalore'),
('Sizzling Wok', 'Chinese', 4.6, 'Delhi'),
('Tandoori Nights', 'Indian', 4.7, 'Hyderabad'),
('Pasta Delight', 'Italian', 4.2, 'Chennai'),
('Royal Biryani', 'Indian', 4.8, 'Delhi'),
('Quick Bites', 'Fast Food', 4.0, 'Mumbai'),
('The Noodle House', 'Chinese', 4.4, 'Bangalore'),
('Cheesy Crust', 'Italian', 4.5, 'Hyderabad'),
('Grill & Chill', 'BBQ', 4.3, 'Chennai'),
('South Spice', 'South Indian', 4.6, 'Delhi'),
('Momos Junction', 'Tibetan', 4.1, 'Mumbai'),
('Urban Tadka', 'Indian', 4.7, 'Bangalore'),
('Chopstick Express', 'Chinese', 4.2, 'Hyderabad'),
('Kebab Factory', 'Indian', 4.8, 'Chennai'),
('Curry House', 'Indian', 4.5, 'Delhi'),
('Sushi Central', 'Japanese', 4.3, 'Mumbai'),
('BBQ Nation', 'BBQ', 4.6, 'Bangalore'),
('Dosa Delight', 'South Indian', 4.2, 'Hyderabad'),
('Falafel Street', 'Middle Eastern', 4.5, 'Chennai'),
('Taco Fiesta', 'Mexican', 4.3, 'Delhi'),
('Punjab Express', 'Indian', 4.7, 'Mumbai'),
('The Waffle Spot', 'Desserts', 4.4, 'Bangalore'),
('Heavenly Bakes', 'Bakery', 4.6, 'Hyderabad');



CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT NOT NULL,
    RestaurantID INT NOT NULL,
    OrderDate DATE NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    Status ENUM('Pending', 'Delivered', 'Cancelled') NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);

INSERT INTO Orders (CustomerID, RestaurantID, OrderDate, Amount, Status) VALUES
(1, 5, '2024-01-05', 500.00, 'Delivered'),
(2, 3, '2024-01-10', 750.00, 'Delivered'),
(3, 7, '2024-01-15', 1200.00, 'Pending'),
(4, 2, '2024-02-01', 600.00, 'Delivered'),
(5, 6, '2024-02-05', 900.00, 'Cancelled'),
(6, 10, '2024-02-10', 450.00, 'Delivered'),
(7, 12, '2024-02-12', 1100.00, 'Pending'),
(8, 15, '2024-02-15', 500.00, 'Delivered'),
(9, 1, '2024-02-18', 1300.00, 'Delivered'),
(10, 9, '2024-02-20', 650.00, 'Cancelled'),
(11, 18, '2024-02-22', 800.00, 'Delivered'),
(12, 20, '2024-02-25', 700.00, 'Pending'),
(13, 17, '2024-02-28', 550.00, 'Delivered'),
(14, 23, '2024-03-01', 1400.00, 'Delivered'),
(15, 24, '2024-03-03', 900.00, 'Pending'),
(16, 22, '2024-03-05', 600.00, 'Cancelled'),
(17, 8, '2024-03-07', 750.00, 'Delivered'),
(18, 19, '2024-03-10', 1150.00, 'Delivered'),
(19, 11, '2024-03-12', 480.00, 'Pending'),
(20, 4, '2024-03-15', 990.00, 'Delivered'),
(21, 14, '2024-03-17', 530.00, 'Cancelled'),
(22, 13, '2024-03-20', 800.00, 'Delivered'),
(23, 16, '2024-03-22', 870.00, 'Pending'),
(24, 21, '2024-03-25', 620.00, 'Delivered'),
(25, 25, '2024-03-28', 740.00, 'Delivered');


CREATE TABLE DeliveryPartners (
    PartnerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Rating DECIMAL(2,1) CHECK (Rating >= 0 AND Rating <= 5),
    City VARCHAR(50) NOT NULL
);

INSERT INTO DeliveryPartners (Name, Rating, City) VALUES
('Ramesh Kumar', 4.8, 'Delhi'),
('Suresh Patel', 4.2, 'Mumbai'),
('Amit Sharma', 4.6, 'Bangalore'),
('Pooja Reddy', 4.5, 'Hyderabad'),
('Vikram Singh', 4.7, 'Chennai'),
('Neha Verma', 4.3, 'Delhi'),
('Rajesh Gupta', 4.9, 'Mumbai'),
('Anil Kapoor', 4.1, 'Bangalore'),
('Priya Nair', 4.4, 'Hyderabad'),
('Manoj Tiwari', 4.5, 'Chennai'),
('Arun Joshi', 4.0, 'Delhi'),
('Meena Das', 4.6, 'Mumbai'),
('Ravi Kumar', 4.2, 'Bangalore'),
('Sonia Iyer', 4.7, 'Hyderabad'),
('Karthik Rao', 4.8, 'Chennai'),
('Vinay Malhotra', 4.3, 'Delhi'),
('Sunita Mehta', 4.9, 'Mumbai'),
('Gaurav Yadav', 4.1, 'Bangalore'),
('Ritika Sharma', 4.4, 'Hyderabad'),
('Deepak Chawla', 4.6, 'Chennai'),
('Alok Desai', 4.0, 'Delhi'),
('Swati Mishra', 4.5, 'Mumbai'),
('Yashwant Bansal', 4.2, 'Bangalore'),
('Tanya Kapoor', 4.7, 'Hyderabad'),
('Mohit Jain', 4.8, 'Chennai');

CREATE TABLE Deliveries (
    DeliveryID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT NOT NULL,
    PartnerID INT NOT NULL,
    DeliveryTime INT NOT NULL, -- Delivery time in minutes
    Status ENUM('Pending', 'Delivered', 'Cancelled') NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (PartnerID) REFERENCES DeliveryPartners(PartnerID)
);

INSERT INTO Deliveries (OrderID, PartnerID, DeliveryTime, Status) VALUES
(1, 5, 30, 'Delivered'),
(2, 3, 45, 'Delivered'),
(3, 7, 50, 'Pending'),
(4, 2, 35, 'Delivered'),
(5, 6, 40, 'Cancelled'),
(6, 10, 32, 'Delivered'),
(7, 12, 55, 'Pending'),
(8, 15, 28, 'Delivered'),
(9, 1, 48, 'Delivered'),
(10, 9, 42, 'Cancelled'),
(11, 18, 37, 'Delivered'),
(12, 20, 50, 'Pending'),
(13, 17, 33, 'Delivered'),
(14, 23, 52, 'Delivered'),
(15, 24, 39, 'Pending'),
(16, 22, 44, 'Cancelled'),
(17, 8, 30, 'Delivered'),
(18, 19, 49, 'Delivered'),
(19, 11, 36, 'Pending'),
(20, 4, 47, 'Delivered'),
(21, 14, 31, 'Cancelled'),
(22, 13, 38, 'Delivered'),
(23, 16, 45, 'Pending'),
(24, 21, 41, 'Delivered'),
(25, 25, 43, 'Delivered');





Alter table customers
add constraint Pk_CustomerID primary key (CustomerID);

Alter table orders
add constraint Pk_OrderID primary key (OrderID);

Alter table restaurants
add constraint Pk_RestaurantID primary key (RestaurantID);

Alter table deliverypartners
add constraint Pk_PartnerID primary key (PartnerID);



Alter table Orders
add constraint FK_CustomerID 
foreign key (CustomerID) references customers(CustomerID);

Alter table orders
add constraint Pk_OrderID primary key (OrderID);

Alter table restaurants
add constraint Pk_RestaurantID primary key (RestaurantID);

Alter table deliverypartners
add constraint Pk_PartnerID primary key (PartnerID);



-- Basic Select statement to see table
select * from customers;


-- Show all customer details who are from Mumbai.
select * from customers
where city = "Mumbai";


-- Total Orders by Status
select status,count(*) as Total_count from deliveries
group by status;


-- Average Order Value (AOV)
select round(avg(amount)) as Avarage_Order_Amount from orders
where status = "Delivered";


-- Find restaurants serving Indian, Italian, or Bakery cuisine with a rating greater than 4.4
select * from restaurants
where Cuisine in ("Indian","Italian","Bakery")
and Rating > 4.4;


-- Find Restaurants with a Name Containing Grill or BBQ
select * from restaurants
where Name LIKE "Grill%" or Name LIKE "BBQ%";


-- Top 5 Restaurants with the Highest Average Rating

Select Name,City,Cuisine,Rating 
from restaurants
order by rating desc
limit 5;


-- Top 5 Restaurants with the Highest Average Rating

SELECT Name, City, Cuisine, Rating 
FROM Restaurants 
ORDER BY Rating DESC 
LIMIT 5;

-- Total Revenue by Month
select Monthname(OrderDate) as Month ,status,sum(Amount) as Total_Revenue from orders
where Status = "Delivered"
group by Monthname(OrderDate)
order by Total_Revenue desc;

-- Most Ordered Cuisine

select r.Cuisine,count(o.orderid) as total_orders from 
restaurants r inner join orders o
on r.RestaurantID=o.RestaurantID
group By r.Cuisine
order by total_orders desc
limit 1;

-- Customers Who Have Placed the Most Orders

select C.Name, C.City, COUNT(O.OrderID) as TotalOrders 
from Orders O join Customers C 
on O.CustomerID = C.CustomerID
group by C.CustomerID
Order by TotalOrders desc
limit 5;

--  Customers Who Have Spent the Most

select c.name,c.city,sum(o.amount) as Total_spent  from
customers c join orders o
on c.customerID=o.customerID
where o.Status = "Delivered"
group by c.customerID
order by sum(amount) desc
limit 3;

-- How can we find restaurants that have a rating higher than the average rating of other restaurants serving the same cuisine

select * from restaurants r1
where Rating > (select avg(Rating) from restaurants r2
				where r1.Cuisine=r2.Cuisine);


-- How can we categorize restaurants based on their ratings and display them in descending order of category

select name as Restaurants_Name,
case 
when Rating >= 4.8 then "SUPER-MAX"
when rating >= 4.7 then  "SUPER-Classic"
when rating >= 4.6 then  "Classic"
else "Good"
end as Category 
from restaurants
order by Category desc;

--  Top 5 Highest Rated Restaurants Using CTE

with Top_Restaurants as (
select * from Restaurants
order by Rating desc
limit 5
)
select * from Top_Restaurants;


-- Create View: Monthly Revenue from Delivered Orders

SELECT * FROM zomoto_ltd.monthly_revenue_view;





