
FINAL DATABASE CODE (GROUP 10)
CREATE DATABASE INFO_330_PROJ_100
USE INFO_330_PROJ_100
GO
CREATE TABLE tblCOUNTRY
(CountryID INT IDENTITY(1,1) primary key,
CountryName VARCHAR(225) not NULL
);
GO
CREATE TABLE tblCUSTOMER
(CustomerID INT IDENTITY(1,1) primary key,
Fname VARCHAR(225) not null,
Lname VARCHAR(225) not null,
Email VARCHAR(225) not null,
StateName VARCHAR(225) not null,
City VARCHAR(225) not null,
Phone INT not null,
CountryID INT NOT NULL
);
GO
CREATE TABLE tblDISCOUNT
(DiscountID INT IDENTITY(1,1) primary key,
DiscountName VARCHAR(225) not null,
DiscountPercentage INT not null,
StartDate date not null,
EndDate date not null,
Conditions VARCHAR(225)
);
GO
CREATE TABLE tblORDER
(OrderID INT IDENTITY(1,1) primary key,
CustomerID INT not null,
CalendarDate date not null,
TotalAmount INT NOT NULL
);
CREATE TABLE tblCAMPAIGN
(CampaignID INT IDENTITY(1,1) primary key,
ProdName VARCHAR(225) not null,
CampaignDescription VARCHAR(225) not null,
StartDate date not null,
EndDate DATE NOT NULL
);
GO
CREATE TABLE tblORDER_PRODUCT
(Product_DetailID INT IDENTITY(1,1) primary key,
Order_ProductName VARCHAR(225) NOT NULL
);
GO
CREATE TABLE tblBRAND
(BrandID INT IDENTITY(1,1) primary key,
BrandName VARCHAR(225) not null,
BrandDescription VARCHAR(225) null,
Country VARCHAR(225) not null,
Phone INT NOT NULL
);
GO
CREATE TABLE tblPRODUCT
(ProductID INT IDENTITY(1,1) primary key,
ProdName varchar(225) not null,
Price INT NOT null,
ProdDescription VARCHAR(225) NULL
);
GO
CREATE TABLE tblPRODUCT_DETAIL
(Product_DetailID INT IDENTITY(1,1) primary key,
Prod_DetailName VARCHAR(225) not null,
Prod_DetailDescription VARCHAR(225) NULL
);
GO
CREATE TABLE tblEMPLOYEE
(EmployeeID INT IDENTITY(1,1) primary key,
Fname VARCHAR(225) not null,
Lname VARCHAR(225) not null,
City VARCHAR(225) not null,
EmployeeState VARCHAR(225) not null,
Zip INT not null,
DepartmentID INT NOT NULL
);
GO
CREATE TABLE tblDEPARTMENT
(DepartmentID INT IDENTITY(1,1) primary key,
DeptName VARCHAR(225) NOT NULL
);
GO
CREATE TABLE tblEMPLOYEE_POSITION
(PositionID INT IDENTITY(1,1) primary key,
StartDate date not null,
EndDate date not null,
DepartmentID INT NOT NULL
);
GO
CREATE TABLE tblPRODUCT_TYPE
(Product_typeID INT IDENTITY(1,1) primary key,
Quantity INT not null,
Prod_TypeDescription varchar(225) NULL
);
GO
CREATE TABLE tblDETAIL
(Size <type>,
`Image` <type>,
`Price` <type>,
`Material` <type>
);
CREATE TABLE tblPOSITION
(PositionID INT IDENTITY(1,1) primary key,
Title VARCHAR(225) not null,
Description VARCHAR(225) NULL
);
(INSERTING DATA INTO TABLES)
INSERT INTO tblCOUNTRY (CountryName)
VALUES
('United States'),
('United Kingdom'),
('Canada'),
('Australia'),
('Germany'),
('France'),
('Italy'),
('Spain'),
('Japan'),
('China'),
('Brazil'),
('India'),
('South Korea'),
('Mexico'),
('Russia'),
('Sweden'),
('Netherlands'),
('Switzerland'),
('Norway'),
('Denmark');
-- Sample data for tblCUSTOMER table (additional rows)
INSERT INTO tblCUSTOMER (Fname, Lname, Email, StateName, City, Phone, CountryID)
VALUES
('Ella', 'Gonzalez', 'ella.gonzalez@email.com', 'California', 'San Jose', 40878, 1),
('Oliver', 'Perez', 'oliver.perez@email.com', 'Texas', 'San Antonio', 21045, 1),
('Scarlett', 'Smith', 'scarlett.smith@email.com', 'Florida', 'Orlando', 40756, 1),
('Henry', 'Martin', 'henry.martin@email.com', 'New York', 'Albany', 51867, 1),
('Elizabeth', 'Baker', 'elizabeth.baker@email.com', 'Washington', 'Seattle', 20689,
1),
('Samuel', 'Adams', 'samuel.adams@email.com', 'Oregon', 'Portland', 50345, 1),
('Grace', 'Morales', 'grace.morales@email.com', 'Arizona', 'Phoenix', 60256, 1),
('Daniel', 'Wright', 'daniel.wright@email.com', 'Georgia', 'Atlanta', 40467, 1),
('Lily', 'Hughes', 'lily.hughes@email.com', 'Illinois', 'Springfield', 21789, 1),
('Matthew', 'Gomez', 'matthew.gomez@email.com', 'Michigan', 'Detroit', 31345, 1),
('Avery', 'Reyes', 'avery.reyes@email.com', 'Minnesota', 'Minneapolis', 61256, 1),
('Sofia', 'Scott', 'sofia.scott@email.com', 'Colorado', 'Denver', 30367, 1),
('Benjamin', 'Mitchell', 'benjamin.mitchell@email.com', 'Massachusetts', 'Boston',
61789, 1),
('Chloe', 'Bell', 'chloe.bell@email.com', 'Ohio', 'Columbus', 61445, 1),
('William', 'Howard', 'william.howard@email.com', 'Texas', 'Fort Worth', 81756, 1),
('Victoria', 'Cook', 'victoria.cook@email.com', 'Tennessee', 'Nashville', 61567, 1),
('Mason', 'Turner', 'mason.turner@email.com', 'Indiana', 'Indianapolis', 31789, 1),
('Aubrey', 'Phillips', 'aubrey.phillips@email.com', 'North Carolina', 'Charlotte',
70445, 1),
('James', 'Flores', 'james.flores@email.com', 'Missouri', 'Kansas City', 81656, 1),
('Nora', 'Collins', 'nora.collins@email.com', 'Wisconsin', 'Milwaukee', 41467, 1),
('Elijah', 'Morgan', 'elijah.morgan@email.com', 'Maryland', 'Baltimore', 41089, 1),
('Addison', 'Reed', 'addison.reed@email.com', 'Kentucky', 'Lexington', 85945, 1),
('Aiden', 'Cooper', 'aiden.cooper@email.com', 'Louisiana', 'New Orleans', 50456, 1),
('Natalie', 'Parker', 'natalie.parker@email.com', 'Nebraska', 'Omaha', 40267, 1);
-- Add more rows as needed
-- ...
-- Sample data for tblDISCOUNT table
INSERT INTO tblDISCOUNT (DiscountName, DiscountPercentage, StartDate, EndDate,
Conditions)
VALUES
('Summer Sale', 20, '2023-06-01', '2023-06-30', 'Valid on selected apparel and
accessories.'),
('Black Friday', 30, '2023-11-24', '2023-11-26', 'Valid on all products site-wide.'),
('Back to School', 15, '2023-08-15', '2023-09-15', 'Valid on clothing, backpacks, and
school supplies.'),
('Mother''s Day', 25, '2023-05-01', '2023-05-10', 'Valid on jewelry and beauty
products.'),
('Valentine''s Day', 10, '2023-02-01', '2023-02-14', 'Valid on selected gifts and
fragrances.'),
('Holiday Clearance', 50, '2023-12-26', '2023-12-31', 'Valid on seasonal items and
decorations.'),
('Mid-Season Sale', 30, '2023-04-15', '2023-05-15', 'Valid on clothing and
accessories.'),
('Winter Clearance', 40, '2023-01-15', '2023-01-31', 'Valid on cold-weather apparel
and boots.'),
('Summer Essentials', 15, '2023-07-01', '2023-07-15', 'Valid on swimwear and beach
accessories.'),
('Fall Fashion', 20, '2023-09-01', '2023-09-30', 'Valid on selected fall clothing.'),
('Cyber Monday', 25, '2023-11-27', '2023-11-27', 'Valid on online purchases only.'),
('Anniversary Sale', 30, '2023-07-20', '2023-08-10', 'Valid on clothing, shoes, and
accessories.'),
('Clearance Blowout', 70, '2023-02-15', '2023-02-28', 'Valid on clearance items
only.'),
('Spring Refresh', 15, '2023-03-20', '2023-04-05', 'Valid on home decor and
bedding.'),
('Summer Shoe Sale', 20, '2023-06-15', '2023-07-05', 'Valid on selected footwear.'),
('Fitness Gear Sale', 25, '2023-01-02', '2023-01-15', 'Valid on athletic wear and
fitness equipment.'),
('Designer Spotlight', 10, '2023-08-05', '2023-08-15', 'Valid on featured designer
collections.'),
('Summer Beauty Sale', 15, '2023-07-01', '2023-07-10', 'Valid on skincare and beauty
products.'),
('End of Season Sale', 40, '2023-12-15', '2023-12-31', 'Valid on selected items.'),
('Holiday Gifts', 10, '2023-12-01', '2023-12-15', 'Valid on gifts for friends and
family.'),
('Wedding Season', 20, '2023-05-15', '2023-06-30', 'Valid on dresses and
formalwear.'),
('Outdoor Adventure', 15, '2023-06-15', '2023-07-31', 'Valid on camping and outdoor
gear.'),
('Tech Bonanza', 10, '2023-09-15', '2023-09-30', 'Valid on tech accessories and
gadgets.'),
('Luxury Collection', 30, '2023-10-01', '2023-10-15', 'Valid on high-end designer
products.'),
('New Year New You', 20, '2023-01-01', '2023-01-10', 'Valid on health and wellness
products.');
INSERT INTO tblORDER (CustomerID, CampaignID, CalendarDate, TotalAmount)
VALUES
(1, 5, '2023-06-01', 250),
(2, 3, '2023-06-02', 180),
(3, 8, '2023-06-03', 320),
(4, 12, '2023-06-04', 450),
(5, 15, '2023-06-05', 150),
(6, 7, '2023-06-06', 280),
(7, 9, '2023-06-07', 370),
(8, 1, '2023-06-08', 410),
(9, 4, '2023-06-09', 290),
(10, 6, '2023-06-10', 500),
(11, 11, '2023-06-11', 390),
(12, 2, '2023-06-12', 420),
(13, 9, '2023-06-13', 280),
(14, 10, '2023-06-14', 200),
(15, 15, '2023-06-15', 150),
(16, 2, '2023-06-16', 330),
(17, 4, '2023-06-17', 190),
(18, 6, '2023-06-18', 270),
(19, 1, '2023-06-19', 310),
(20, 11, '2023-06-20', 280);
–
-- Insert 25 sample rows for the tblCAMPAIGN table
INSERT INTO tblCAMPAIGN (ProdName, CampaignDescription, StartDate, EndDate)
VALUES
('Floral Maxi Dress', 'Spring Fashion Sale - Get ready for the season with our
beautiful floral maxi dresses!', '2023-06-01', '2023-06-15'),
('Leather Crossbody Bag', 'Handbag Extravaganza - Shop our exclusive collection of
leather crossbody bags!', '2023-06-05', '2023-06-30'),
('Men''s Designer Watch', 'Timepiece Showcase - Discover the latest men''s designer
watches in our collection!', '2023-06-10', '2023-06-25'),
('Luxury Fragrance Set', 'Fragrance Sensation - Treat yourself to our luxurious
fragrance sets!', '2023-06-15', '2023-07-15'),
('Women''s Athletic Apparel', 'Active Lifestyle Event - Stay fit and fabulous with our
premium athletic apparel!', '2023-06-20', '2023-07-10'),
('Tech Accessories Sale', 'Gadget Galore - Upgrade your tech game with our high-
quality accessories!', '2023-09-05', '2023-09-30'),
('Home Decor Accessories', 'Interior Elegance - Spruce up your home with our stylish
decor accessories!', '2023-09-10', '2023-10-10'),
('Men''s Formal Attire', 'Black Tie Event - Get ready for any special occasion with
our impeccable men''s formal attire!', '2023-09-15', '2023-10-15'),
('Women''s Summer Sandals', 'Sandal Frenzy - Step into summer with our trendy and
comfortable sandals!', '2023-09-20', '2023-10-20'),
('Luxury Designer Jewelry', 'Glamorous Gems - Explore our exclusive collection of
luxury designer jewelry!', '2023-09-25', '2023-10-25'),
('Tech Accessories Sale', 'Gadget Galore - Upgrade your tech game with our high-
quality accessories!', '2023-10-01', '2023-10-30');
–
-- Insert 25 sample rows for tblORDER_PRODUCT table
INSERT INTO tblORDER_PRODUCT (OrderID, Order_ProductName)
VALUES
(1, 'Floral Maxi Dress'),
(1, 'Leather Crossbody Bag'),
(2, 'Men''s Designer Watch'),
(2, 'Luxury Fragrance Set'),
(3, 'Women''s Athletic Apparel'),
(3, 'Designer Sunglasses'),
(4, 'Home Decor Accessories'),
(5, 'Men''s Formal Attire'),
(5, 'Women''s Summer Sandals'),
(6, 'Luxury Designer Jewelry'),
(6, 'Tech Accessories Sale'),
(7, 'Cosmetics Bonanza'),
(8, 'Designer Tote Bags'),
(8, 'Children''s Apparel Collection'),
(9, 'Luxury Watch Showcase'),
(10, 'Athletic Shoes Extravaganza'),
(11, 'Home Fragrance Delights'),
(12, 'Designer Handbags Sale'),
(13, 'Beauty and Skincare Event'),
(14, 'Designer Sunglasses'),
(15, 'Home Decor Accessories'),
(16, 'Men''s Formal Attire'),
(17, 'Women''s Summer Sandals'),
(18, 'Luxury Designer Jewelry'),
(19, 'Tech Accessories Sale'),
(20, 'Designer Handbags Sale');
-- Insert 25 sample rows for tblBRAND table
INSERT INTO tblBRAND (BrandName, BrandDescription, Country, Phone)
VALUES
('Nordstrom', 'Leading fashion retailer', 'United States', 12345),
('Calvin Klein', 'Iconic American brand', 'United States', 98765),
('Michael Kors', 'Luxury fashion house', 'United States', 45678),
('Gucci', 'Italian luxury brand', 'Italy', 10293),
('Nike', 'Sportswear and equipment', 'United States', 56789),
('Adidas', 'Sportswear and equipment', 'Germany', 98765),
('Chanel', 'French fashion house', 'France', 12345),
('Louis Vuitton', 'Luxury fashion house', 'France', 67890),
('Tory Burch', 'American lifestyle brand', 'United States', 90817),
('Dior', 'French luxury goods', 'France', 23456),
('Kate Spade New York', 'American luxury fashion', 'United States', 78901),
('Ralph Lauren', 'American fashion brand', 'United States', 34567),
('Tom Ford', 'Luxury fashion house', 'United States', 67890),
('Burberry', 'British luxury fashion', 'United Kingdom', 90123),
('Coach', 'American luxury accessories', 'United States', 54321),
('Fendi', 'Italian luxury fashion', 'Italy', 87654),
('Under Armour', 'Sportswear and accessories', 'United States', 12348),
('Versace', 'Italian luxury fashion', 'Italy', 56780),
('Hermès', 'French luxury goods', 'France', 98765),
('Balenciaga', 'French luxury fashion', 'France', 32109),
('Puma', 'Sportswear and accessories', 'Germany', 90876),
('Valentino', 'Italian luxury fashion', 'Italy', 43210),
('Jimmy Choo', 'Luxury fashion brand', 'United Kingdom', 65432),
('Salvatore Ferragamo', 'Italian luxury brand', 'Italy', 21098),
('Prada', 'Italian luxury fashion', 'Italy', 45678);
-- Insert 25 sample rows for tblPRODUCT table
INSERT INTO tblPRODUCT (BrandID, ProdName, Price, ProdDescription)
VALUES
(1, 'Floral Maxi Dress', 150, 'Elegant floral maxi dress perfect for any special
occasion.'),
(2, 'Leather Crossbody Bag', 220, 'Stylish leather crossbody bag with adjustable
strap.'),
(3, 'Men''s Designer Watch', 350, 'Classic men''s designer watch with stainless steel
strap.'),
(4, 'Luxury Fragrance Set', 180, 'Exquisite luxury fragrance set with three different
scents.'),
(5, 'Women''s Athletic Apparel', 90, 'Comfortable and trendy women''s athletic
apparel.'),
(6, 'Designer Sunglasses', 200, 'High-quality designer sunglasses for both men and
women.'),
(7, 'Home Decor Accessories', 60, 'Chic home decor accessories to add a touch of
elegance.'),
(8, 'Men''s Formal Attire', 280, 'Sophisticated men''s formal attire for special
events.'),
(9, 'Women''s Summer Sandals', 120, 'Fashionable and comfortable summer sandals for
women.'),
(10, 'Luxury Designer Jewelry', 400, 'Extravagant luxury designer jewelry for a
glamorous look.'),
(11, 'Tech Accessories Sale', 40, 'Trendy tech accessories for your gadgets and
devices.'),
(12, 'Cosmetics Bonanza', 80, 'Wide selection of high-quality cosmetics and makeup
products.'),
(13, 'Designer Tote Bags', 180, 'Stylish and spacious designer tote bags for daily
use.'),
(14, 'Children''s Apparel Collection', 70, 'Adorable and comfortable children''s
apparel collection.'),
(15, 'Luxury Watch Showcase', 500, 'Exclusive luxury watch collection for watch
enthusiasts.'),
(16, 'Athletic Shoes Extravaganza', 120, 'Top-notch athletic shoes for your active
lifestyle.'),
(17, 'Home Fragrance Delights', 50, 'Delightful home fragrances to create a pleasant
ambiance.'),
(18, 'Designer Handbags Sale', 250, 'Designer handbags at discounted prices for a
limited time.'),
(19, 'Beauty and Skincare Event', 90, 'Revitalize your skin with our beauty and
skincare products.'),
(20, 'Designer Sunglasses', 180, 'Elegant and stylish designer sunglasses for a chic
look.');
-- Insert 25 sample rows for tblPRODUCT_DETAIL table
INSERT INTO tblPRODUCT_DETAIL (Prod_DetailName, Prod_DetailDescription)
VALUES
('Material', 'Silk'),
('Material', 'Leather'),
('Material', 'Stainless Steel'),
('Material', 'Fragrance Set'),
('Material', 'Polyester'),
('Material', 'Plastic'),
('Material', 'Ceramic'),
('Material', 'Wool'),
('Material', 'Rubber'),
('Material', 'Diamond'),
('Material', 'Silicone'),
('Material', 'Metal'),
('Material', 'Cotton'),
('Material', 'Nylon'),
('Material', 'Sapphire'),
('Material', 'Cashmere'),
('Material', 'Foam'),
('Material', 'Gold'),
('Material', 'Pearl'),
('Material', 'Velvet'),
('Material', 'Suede'),
('Material', 'Titanium'),
('Material', 'Alloy'),
('Material', 'Canvas'),
('Material', 'Silver');
-- Insert 25 sample rows for tblDEPARTMENT table
INSERT INTO tblDEPARTMENT (DeptName)
VALUES
('Women''s Apparel'),
('Men''s Apparel'),
('Children''s Apparel'),
('Shoes'),
('Accessories'),
('Beauty'),
('Home Decor'),
('Jewelry'),
('Handbags'),
('Watches'),
('Fragrances'),
('Cosmetics'),
('Lingerie'),
('Athletic Wear'),
('Tech Accessories'),
('Gifts'),
('Sunglasses'),
('Home Furniture'),
('Electronics'),
('Books'),
('Toys'),
('Kitchenware'),
('Sports Equipment'),
('Music'),
('Pet Supplies');
-- Insert 25 sample rows for tblEMPLOYEE table
INSERT INTO tblEMPLOYEE (Fname, Lname, City, EmployeeState, Zip, DepartmentID)
VALUES
('John', 'Smith', 'Seattle', 'Washington', 98101, 1),
('Emily', 'Johnson', 'New York', 'New York', 10001, 2),
('Michael', 'Williams', 'Los Angeles', 'California', 90001, 3),
('Jessica', 'Jones', 'Chicago', 'Illinois', 60601, 4),
('Matthew', 'Brown', 'San Francisco', 'California', 94101, 5),
('Emma', 'Davis', 'Boston', 'Massachusetts', 02101, 6),
('Christopher', 'Miller', 'Dallas', 'Texas', 75201, 7),
('Olivia', 'Wilson', 'Miami', 'Florida', 33101, 8),
('Daniel', 'Anderson', 'Denver', 'Colorado', 80201, 9),
('Sophia', 'Martinez', 'Houston', 'Texas', 77001, 10),
('William', 'Taylor', 'Phoenix', 'Arizona', 85001, 11),
('Ava', 'Thomas', 'Atlanta', 'Georgia', 30301, 12),
('James', 'Robinson', 'Las Vegas', 'Nevada', 89101, 13),
('Isabella', 'Lee', 'Seattle', 'Washington', 98101, 14),
('Benjamin', 'Harris', 'New York', 'New York', 10001, 15),
('Mia', 'Clark', 'Los Angeles', 'California', 90001, 16),
('Elijah', 'Lewis', 'Chicago', 'Illinois', 60601, 17),
('Avery', 'Scott', 'San Francisco', 'California', 94101, 18),
('Alexander', 'Green', 'Boston', 'Massachusetts', 02101, 19),
('Harper', 'Evans', 'Dallas', 'Texas', 75201, 20),
('Ethan', 'King', 'Miami', 'Florida', 33101, 21),
('Scarlett', 'Baker', 'Denver', 'Colorado', 80201, 22),
('Liam', 'Gonzalez', 'Houston', 'Texas', 77001, 23),
('Chloe', 'Adams', 'Phoenix', 'Arizona', 85001, 24),
('Amelia', 'Nelson', 'Atlanta', 'Georgia', 30301, 25);
-- Insert 25 sample rows for tblEMPLOYEE_POSITION table
INSERT INTO tblEMPLOYEE_POSITION (StartDate, EndDate, DepartmentID)
VALUES
('2020-01-15', '2021-03-30', 1),
('2019-12-10', '2020-11-22', 2),
('2021-05-03', '2022-08-18', 3),
('2022-02-28', '2023-04-14', 4),
('2018-11-17', '2019-09-01', 5),
('2023-01-05', '2023-12-20', 6),
('2020-06-15', '2021-09-30', 7),
('2019-08-20', '2021-06-10', 8),
('2022-04-01', '2023-05-30', 9),
('2017-07-25', '2018-12-31', 10),
('2021-11-10', '2023-02-15', 11),
('2020-09-05', '2021-11-01', 12),
('2018-03-12', '2019-07-20', 13),
('2023-06-30', '2024-09-25', 14),
('2019-10-15', '2021-02-28', 15),
('2022-03-20', '2023-08-10', 16),
('2021-01-05', '2022-04-30', 17),
('2018-12-20', '2020-05-15', 18),
('2023-09-01', '2024-11-10', 19),
('2019-06-05', '2020-10-30', 20),
('2022-08-10', '2024-01-05', 21),
('2020-12-01', '2022-03-25', 22),
('2018-09-15', '2019-12-31', 23),
('2023-04-20', '2024-07-15', 24),
('2021-07-10', '2023-01-20', 25);
-- Insert 25 sample rows for tblPRODUCT_TYPE table
INSERT INTO tblPRODUCT_TYPE (Quantity, Prod_TypeDescription)
VALUES
(100, 'Women''s Apparel'),
(50, 'Men''s Apparel'),
(200, 'Children''s Apparel'),
(80, 'Shoes'),
(30, 'Accessories'),
(150, 'Beauty Products'),
(40, 'Home Decor'),
(20, 'Jewelry'),
(60, 'Handbags'),
(70, 'Watches'),
(90, 'Fragrances'),
(35, 'Cosmetics'),
(75, 'Lingerie'),
(25, 'Athletic Wear'),
(55, 'Tech Accessories'),
(120, 'Gifts'),
(65, 'Sunglasses'),
(30, 'Home Furniture'),
(10, 'Books'),
(15, 'Toys'),
(40, 'Kitchenware'),
(70, 'Sports Equipment'),
(25, 'Music'),
(5, 'Pet Supplies');
-- Insert 25 sample rows for tblDETAIL table
INSERT INTO tblDETAIL (Size, Image, Price, Material)
VALUES
('Small', 'image1.jpg', 50, 'Cotton'),
('Medium', 'image2.jpg', 60, 'Polyester'),
('Large', 'image3.jpg', 70, 'Silk'),
('X-Large', 'image4.jpg', 80, 'Wool'),
('XX-Large', 'image5.jpg', 90, 'Leather'),
('Small', 'image6.jpg', 60, 'Cotton'),
('Medium', 'image7.jpg', 70, 'Polyester'),
('Large', 'image8.jpg', 80, 'Silk'),
('X-Large', 'image9.jpg', 90, 'Wool'),
('XX-Large', 'image10.jpg', 100, 'Leather'),
('Small', 'image11.jpg', 70, 'Cotton'),
('Medium', 'image12.jpg', 80, 'Polyester'),
('Large', 'image13.jpg', 90, 'Silk'),
('X-Large', 'image14.jpg', 100, 'Wool'),
('XX-Large', 'image15.jpg', 110, 'Leather'),
('Small', 'image16.jpg', 80, 'Cotton'),
('Medium', 'image17.jpg', 90, 'Polyester'),
('Large', 'image18.jpg', 100, 'Silk'),
('X-Large', 'image19.jpg', 110, 'Wool'),
('XX-Large', 'image20.jpg', 120, 'Leather'),
('Small', 'image21.jpg', 90, 'Cotton'),
('Medium', 'image22.jpg', 100, 'Polyester'),
('Large', 'image23.jpg', 110, 'Silk'),
('X-Large', 'image24.jpg', 120, 'Wool'),
('XX-Large', 'image25.jpg', 130, 'Leather');
-- Insert 25 sample rows for tblPOSITION table
INSERT INTO tblPOSITION (Title, Description)
VALUES
('Sales Associate', 'Responsible for assisting customers and providing excellent
service.'),
('Store Manager', 'Oversee daily store operations and manage staff.'),
('Visual Merchandiser', 'Design and implement store displays to enhance the shopping
experience.'),
('Cashier', 'Process customer transactions and handle payments.'),
('Stylist', 'Provide fashion advice and assist customers in selecting clothing.'),
('Inventory Specialist', 'Manage and track store inventory levels.'),
('Tailor', 'Alter and customize clothing to fit customers.'),
('Beauty Consultant', 'Offer beauty product recommendations and provide makeup
tips.'),
('Customer Service Representative', 'Address customer inquiries and resolve issues.'),
('Buyer', 'Source and purchase products for the store.'),
('Human Resources Coordinator', 'Assist with HR-related tasks and employee
onboarding.'),
('Security Officer', 'Ensure the safety and security of the store and its
customers.'),
('Fashion Designer', 'Create and develop new clothing designs.'),
('Marketing Specialist', 'Plan and execute marketing campaigns.'),
('IT Support Specialist', 'Provide technical support for store systems and
equipment.'),
('Event Coordinator', 'Organize and manage in-store events and promotions.'),
('Warehouse Associate', 'Handle incoming and outgoing inventory shipments.'),
('Brand Ambassador', 'Promote and represent the brand at events and in-store.'),
('Social Media Manager', 'Manage and curate the store''s social media presence.'),
('Fashion Stylist', 'Create and style outfits for customers and photo shoots.'),
('Fashion Buyer', 'Select and purchase clothing and accessories for the store.'),
('Personal Shopper', 'Provide personalized shopping experiences for customers.'),
('Loss Prevention Specialist', 'Prevent theft and protect store assets.'),
('Graphic Designer', 'Create visual materials for the store, including signage and
advertisements.'),
('Tailoring Specialist', 'Expert in garment alterations and tailoring techniques.'),
('Brand Manager', 'Oversee and maintain the store''s brand image and identity.');
(INDIVIDUAL CODE)
–person 1 (Mia)
--2 complex queries
--Write the sql to determine the top 5 employees with an address in 'New York, NY'
that have worked for Nordstrom longer than 10 years.
SELECT TOP 5 Fname, Lname
FROM tblEMPLOYEE E
JOIN tblEMPLOYEE E ON EP.DepartmentID = E.DepartmentID
JOIN tblEMPLOYEE_POSITION EP ON E.DepartmentID = EP.DepartmentID
WHERE E.STATE = 'New York, NY'
AND DATEDIFF(YEAR, StartDate, GETDATE()) > 10
ORDER BY StartDate ASC;
--Write the sql to determine which state has had the most customers shop at Nordstrom
after 'January 16, 2013'.
SELECT TOP 1 State, COUNT(CustomerID) AS TotalCustomers
FROM tblCUSTOMER C
JOIN tblCUSTOMER C ON O.CustomerID = C.CustomerID
JOIN tblORDER O ON C.CustomerID = O.CustomerID
WHERE O.Date > '2013-01-16'
GROUP BY State
ORDER BY TotalCustomers DESC;
--2 business rules
--No employee with an address in the state of 'Texas, TX' can purchase from the
'Children's Apparel' department.
GO
CREATE FUNCTION mcbyrd_noTX
RETURNS INT
AS
BEGIN
DECLARE @RET INT = 0
IF
EXISTS (SELECT *
FROM tblEMPLOYEE
JOIN tblEMPLOYEE E ON D.DepartmentID = E.DepartmentID
JOIN tblDEPARTMENT D ON E.DepartmentID = D.DepartmentID
JOIN tblEMPLOYEE_POSITION EP ON D.DepartmentID = EP.DepartmentID
WHERE E.State NOT LIKE 'Texas,TX'
AND D.DeptName <> 'Childrens Apparel'
)
SET @RET = 1
RETURN @RET
END
GO
--No employee with a last name starting with 'C' can work in the 'Cosmetics'
department after 'September 7, 2020'
GO
CREATE FUNCTION mcbyrd_noC
RETURNS INT
AS
BEGIN
DECLARE @RET INT = 0
IF
EXISTS (SELECT *
FROM tblEMPLOYEE
JOIN tblEMPLOYEE E ON D.DepartmentID = E.DepartmentID
JOIN tblDEPARTMENT D ON E.DepartmentID = D.DepartmentID
JOIN tblEMPLOYEE_POSITION EP ON D.DepartmentID = EP.DepartmentID
WHERE E.LName NOT LIKE 'C%'
AND D.DeptName <> 'Cosmetics'
AND EP.StartDate <= '2020-09-07'
)
SET @RET = 1
RETURN @RET
END
GO
--2 computed columns
--write the sql to create a computed column to determine the TotalSales for a
department over the last 10 years.
CREATE FUNCTION total_sales10
RETURNS NUMERIC (10,2)
AS
BEGIN
DECLARE @RET NUMERIC (10,2) = (
SELECT SUM(TotalAmount)
FROM tblORDERS
WHERE Date >= DATEADD(YEAR, -10, GetDate())
)
RETURN @RET
END
DECLARE @TotalSales NUMERIC(10,2);
SET @TotalSales = dbo.total_sales10();
SELECT @TotalSales;
--write the sql to create a computed column to determine the TotalSales for a
department over the last 5 years.
CREATE FUNCTION total_sales5
RETURNS NUMERIC (10,2)
AS
BEGIN
DECLARE @RET NUMERIC (10,2) = (
SELECT SUM(TotalAmount)
FROM tblORDERS
WHERE Date >= DATEADD(YEAR, -5, GetDate())
)
RETURN @RET
END
DECLARE @TotalSales NUMERIC(10,2);
SET @TotalSales = dbo.total_sales5();
SELECT @TotalSales;
--2 stored procedures
--Write the sql to create a stored procedure to update tblCUSTOMER with new phone
numbers
GO
CREATE PROCEDURE updatecustnumbers
@CustomerID INT,
@NewPhone VARCHAR(20)
AS
BEGIN
UPDATE tblCUSTOMER
SET Phone = @NewPhone
WHERE CustomerID = @CustomerID;
END;
EXEC updatecustnumbers
@CustomerID = 2345
@NewPhone = '92789';
--Write the SQL to create a stored procedure to INSERT a new row into tblBRAND.
GO
CREATE PROCEDURE mcbyrd_InsertBrand
(
@BrandName VARCHAR(100),
@BrandDescription VARCHAR(100),
@Country VARCHAR(100),
@Phone VARCHAR(15)
)
AS
BEGIN
INSERT INTO tblBRAND (BrandName, BrandDescription, Country, Phone)
VALUES (@BrandName, @BrandDescription, @Country, @Phone)
END;
EXEC mcbyrd_InsertBrand
@BrandName = 'FreePeople',
@BrandDescription = 'Trendy Clothes',
@Country = 'United States',
@Phone = '97348'
Person 2 (Nathaniel)
--complex queries
--Write the sql to determine which employees with a 'manager' position have worked for
more than 3 departments before 2015.
SELECT TOP 5 Fname, Lname
FROM tblEMPLOYEE E
JOIN tblEMPLOYEE E ON D.DepartmentID = E.DepartmentID
JOIN tblDEPARTMENT D ON E.DepartmentID = D.DepartmentID
JOIN tblEMPLOYEE_POSITION EP ON D.DepartmentID = EP.DepartmentID
WHERE EP.PositionName = 'manager'
AND E.EmployeeID IN (
SELECT EmployeeID
FROM (
SELECT EmployeeID, COUNT(DISTINCT DepartmentID) AS NumDepartments
FROM tblEMPLOYEE_POSITION
WHERE YEAR(StartDate) < 2015
GROUP BY EmployeeID
) AS DepartmentCounts
WHERE NumDepartments > 3
);
--Write the sql to determine which customer living in 'Texas, TX' has the most orders
after 'March 17, 2020',
SELECT TOP 1 C.Fname, C.Lname, C.State, COUNT(O.Date) AS TotalOrders
FROM tblCUSTOMER C
JOIN tblCUSTOMER C ON O.CustomerID = C.CustomerID
JOIN tblORDER O ON C.CustomerID = O.CustomerID
WHERE C.State = 'Texas, TX'
AND O.Date > '2020-03-17'
GROUP BY C.Fname, C.Lname, C.State
ORDER BY TotalOrders DESC;
--business rules
--No product from the shoe department can be purchased by a customer with a first name
starting with 'K'.
GO
CREATE FUNCTION noshoek
RETURNS INT
AS
BEGIN
DECLARE @RET INT = 0
IF
EXISTS (SELECT *
FROM tblORDER O
JOIN tblCUSTOMER C ON O.CustomerID = C.CustomerID
JOIN tblPRODUCT PR ON O.ProductID = PR.ProductID
WHERE C.Fname LIKE 'K%'
AND PR.Department = 'Shoe'
)
SET @RET = 1
RETURN @RET
END
GO
DECLARE @Result INT
SET @Results = dbo.noshoek();
SELECT @Result;
--No product with a price lower than $20 can be eligible for a discount of '50%'.
GO
CREATE FUNCTION productdiscount
RETURNS INT
AS
BEGIN
DECLARE @RET INT = 0
IF
EXISTS (SELECT *
FROM tblPRODUCT
WHERE Price > 20
AND Percentage = '50%'
)
SET @RET = 1
RETURN @RET
END
GO
DECLARE @Result INT;
SET @Result = dbo.productdiscount();
SELECT @Result;
--computed columns
--write the sql to create a computed column to determine the total profit made from
selling shoes in 2018.
CREATE FUNCTION shoeprofit
RETURNS NUMERIC (10,2)
AS
BEGIN
DECLARE @RET NUMERIC (10, 2) = (
SELECT SUM(SalesAmount)
FROM tblORDER
WHERE Product = 'shoes'
AND YEAR(Date) = 2018
)
RETURN @RET
END
DECLARE @TotalProfit NUMERIC(10,2);
SET @TotalProfit = dbo.shoeprofit();
SELECT @TotalProfit;
--Write the sql to create a computed column to determine the total profit made from
selling childrens apparel in 2014.
CREATE FUNCTION childprofit
RETURNS NUMERIC (10,2)
AS
BEGIN
DECLARE @RET NUMERIC (10, 2) = (
SELECT SUM(SalesAmount)
FROM tblORDER
JOIN tblDEPARTMENT D ON O.DepartmentID = D.DepartmentID
WHERE D.Name = 'childrens apparel'
AND YEAR(Date) = 2014
)
RETURN @RET
END
DECLARE @TotalProfit NUMERIC(10,2);
SET @TotalProfit = dbo.childprofit();
SELECT @TotalProfit;
--stored procedures
----Write the SQL to create a stored procedure to insert a new row into tblDISCOUNT.
GO
CREATE PROCEDURE insertdiscount
@Name VARCHAR(50),
@Percentage NUMERIC(10,2),
@StartDate DATE,
@EndDate DATE
AS
BEGIN
INSERT INTO tblDISCOUNT (Name, Percentage, StartDate, Enddate)
VALUES (@Name, @Percentage, @StartDate, @EndDate);
END;
EXEC insertdiscount
@Name ='ShoeSale23',
@Percentage = 20,
@StartDate = '2023-06-01',
@EndDate = '2023-08-30';
--Write the SQL to create a stored procedure to UPDATE which employee is assigned to
work in a particular department.
CREATE PROCEDURE updatedepartment
@EmployeeID INT;
@NewDepartmentID INT
AS
BEGIN
UPDATE tblEMPLOYEE
SET DepartmentID = @NewDepartmentID
WHERE EmployeeID = @EmployeeID;
END;
EXEC updatedepartment
@EmployeeID = 6789
@NewDepartmentID = 906;
Student 3 (Elroe)
-1)Write SQL to create 4 Stored Procedure to populate Customer)to get
order,product,country and INSERT into customer.
--Stored Procedure to get order
CREATE PROCEDURE GetOrderID
@OrderName VARCHAR(50),
@OrderID INT OUTPUT
AS
BEGIN
SET @OrderID = (SELECT OrderID FROM Order WHERE OrderName = @OrderName)
END
GO
--Stored Procedure to get product
CREATE PROCEDURE GetProductID
@ProductName VARCHAR(50),
@ProductID INT OUTPUT
AS
BEGIN
SET @ProductID = (SELECT ProductID FROM Product WHERE ProductID Name =
@Product Name)
END
GO
--Stored Procedure to get country
CREATE PROCEDURE GetCountryID
@CountryName VARCHAR(50),
@CountryID INT OUTPUT
AS
BEGIN
SET @CountryID = (SELECT CountryID FROM Country WHERE CountryName =
@CountryName)
END
GO
--Stored Procedure to insert into customer
CREATE PROCEDURE Populate Customer
@Fname VARCHAR(50),
@Lname VARCHAR(50),
@Email VARCHAR(100),
@State VARCHAR(50),
@City VARCHAR(50),
@Phone VARCHAR(20),
@CountryID INT
AS
BEGIN
DECLARE @Cust_ID INT, @O_ID INT, @C_ID INT,@P_ID INT
EXEC GetOrderID @OrderName, @OrderID,@OrderDate,@TotalAmount = @O_ID OUTPUT
EXEC GetProductID @ProdName,@ProdPrice,@Proddesc @ProdID = @P_ID OUTPUT
EXEC GetCountryID @Couname,@CounID = @C_ID OUTPUT
EXEC GetCustomerID
@CustFName,@CustLName,@CustEmail,@CustState,@CustCity,@CustPhone,@CusID=
Cust_ID OUTPUT
BEGIN TRANSACTION G1
INSERT INTO Customer(Fname, Lname, Email, State,City, Phone,CountryID)
VALUES (@Fname, @Lname, @Email, @State, @City, @Phone, @CountryID)
IF @@ERROR <> 0
BEGIN
PRINT 'Error occurred. Rolling back.'
ROLLBACK TRANSACTION G1
END
ELSE
BEGIN
COMMIT TRANSACTION G1
END
END
GO
2)Stored Procedure for populating the Order table:
CREATE PROCEDURE ElroeINSERT_Employee
(
@Fname VARCHAR(30),
@Lname VARCHAR(30),
@City VARCHAR(30),
@State VARCHAR(30),
@Zip VARCHAR(30)
)
AS
BEGIN
BEGIN TRANSACTION G1
INSERT INTO Employee (Fname, Lname, City, State, Zip)
VALUES (@Fname, @Lname, @City, @State, @Zip)
IF @@ERROR <> 0
BEGIN
PRINT 'error occurred ';
ROLLBACK TRANSACTION G1;
END
ELSE
COMMIT TRANSACTION G1;
END
Write the SQL to create a business rule that restricts the following condition
customers can’t receive a discount if the product price is less than $30,
CREATE FUNCTION dbo.elNo21_year() RETURNS INT
AS
BEGIN
DECLARE @RET INT = 0
IF EXISTS (
SELECT 1
FROM PRODUCT P
JOIN CUSTOMER C ON P.ProductID = C.ProductID
JOIN Discount D ON C.DiscountID = D.DiscountID
WHERE P.ProductPrice < 30
AND C.Discount = 1
)
SET @RET = 1
RETURN @RET
END
GO
ALTER TABLE CUSTOMER_DISCOUNT
ADD CONSTRAINT CK_NoDiscountUnder30 CHECK (dbo.CheckProductPrice(ProductID) =
1);
-Write the SQL to create a business rule that restricts the following
condition: customers outside of the United States cannot order more than 10
items.
CREATE FUNCTION dbo.GetTotalQuantityOrderedOutsideUS() RETURNS INT
AS
BEGIN
DECLARE @TotalQuantity INT
SELECT @TotalQuantity = SUM(C.Quantity)
FROM Customer C
JOIN Order O ON C.OrderID = O.OrderID
JOIN Country CO ON C.CountryID = CO.CountryID
WHERE CO.CountryName <> 'United States'
RETURN ISNULL(@TotalQuantity, 0)
END
GO
ALTER TABLE Customer ADD Discount BIT DEFAULT 0
GO
ALTER TABLE Customer ADD CONSTRAINT CK_NoDiscount CHECK
(dbo.GetTotalQuantityOrderedOutsideUS() <= 10)
GO
–Create a Computed column that returns the total amount of order by summing the prices
of the associated products.
CREATE FUNCTION dbo.GetOrderTotalAmount(@OrderID INT) RETURNS DECIMAL(10, 2) AS
BEGIN
DECLARE @TotalAmount DECIMAL(10, 2)
SELECT @TotalAmount = SUM(P.Price)
FROM Order_Product OP
JOIN Product_Detail PD ON OP.Product_DetailID = PD.Product_DetailID
JOIN Product P ON PD.ProductID = P.ProductID
WHERE OP.OrderID = @OrderID
RETURN @TotalAmount
END
GO
ALTER TABLE [Order] ADD TotalAmount AS
dbo.GetOrderTotalAmount(OrderID)
--Create a Computed column that returns the total number discount a customer received
CREATE FUNCTION dbo.GetTotalDiscountsForCustomer (@CustomerID INT)
RETURNS INT
AS
BEGIN
DECLARE @TotalDiscounts INT;
SELECT @TotalDiscounts = SUM(DiscountAmount)
FROM Discount
WHERE CustomerID = @CustomerID;
IF (@TotalDiscounts IS NULL)
SET @TotalDiscounts = 0;
RETURN @TotalDiscounts;
END;
--write the query to determine Which employee meets the following conditions: holds
the position of "Manager," works at a store in "France," and works for the department
of "Children's Apparel"?
SELECT E.EmployeeID,E.EmployeeName,P.PositionName,C.CountryName,D.DepartmentName
FROM Employee E
JOIN Position P ON E.PositionID = P.PositionID
JOIN Department D ON E.DepartmentID = D.DepartmentID
JOIN Country C ON E.CountryID = C.CountryID
WHERE P.PositionName = 'Manager'
AND C.CountryName = 'Austria'
AND D.DepartmentName = 'Children''s Apparel';
--Write the query to determine which product meet the following conditions: product is
ordered most frequently and the most expensive is over 200 hundred
SELECT COUNT(O.OrderID) AS
OrderFrequency,P.ProductID,P.ProductName,P.ProductPrice
FROM PRODUCT P
JOIN ORDER_DETAILS OD ON P.ProductID = OD.ProductID
JOIN ORDERS O ON OD.OrderID = O.OrderID
WHERE P.ProductPrice > 200 -- Product price is greater than $200
GROUP BY P.ProductID, P.ProductName, P.ProductPrice
ORDER BY OrderFrequency DESC, P.ProductPrice DESC;
Annotations
