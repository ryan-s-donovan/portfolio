IF NOT EXISTS(SELECT name FROM master.dbo.sysdatabases
	WHERE name = N'GiroDM')
	
	CREATE DATABASE	GiroDM
GO

USE GiroDM
GO

IF EXISTS(
	SELECT *
	FROM sys.tables
	WHERE NAME = N'FastPurchaseHistory')
	
ALTER TABLE FactPurchaseHistory DROP CONSTRAINT fk_FactPurchaseHistory_DimCustomer;
ALTER TABLE FactPurchaseHistory DROP CONSTRAINT fk_FactPurchaseHistory_DimProduct;
ALTER TABLE FactPurchaseHistory DROP CONSTRAINT fk_FactPurchaseHistory_DimEmployee;
ALTER TABLE FactPurchaseHistory DROP CONSTRAINT fk_FactPurchaseHistory_DimPayment;
ALTER TABLE FactPurchaseHistory DROP CONSTRAINT fk_FactPurchaseHistory_DimLocation;
ALTER TABLE FactPurchaseHistory DROP CONSTRAINT fk_FactPurchaseHistory_DimPurchaseDate;
	DROP TABLE FactPurchaseHistory;


IF EXISTS(
	SELECT *
	FROM sys.tables
	WHERE NAME = N'DimCustomer')
	
	DROP TABLE DimCustomer;


IF EXISTS(
	SELECT *
	FROM sys.tables
	WHERE NAME = N'DimProduct')
	
	DROP TABLE DimProduct;


IF EXISTS(
	SELECT *
	FROM sys.tables
	WHERE NAME = N'DimEmployee')
	
	DROP TABLE DimEmployee;


IF EXISTS(
	SELECT *
	FROM sys.tables
	WHERE NAME = N'DimPayment')
	
	DROP TABLE DimPayment;


IF EXISTS(
	SELECT *
	FROM sys.tables
	WHERE NAME = N'DimLocation')
	
	DROP TABLE DimLocation;


IF EXISTS(
	SELECT *
	FROM sys.tables
	WHERE NAME = N'DimDate')
	
	DROP TABLE DimDate;


CREATE TABLE DimDate
	(
	Date_SK INT PRIMARY KEY,
	Date DATE,
	FullDate NCHAR(10),-- Date in MM-dd-yyyy format
	DayOfMonth INT, -- Field will hold day number of Month
	DayName NVARCHAR(9), -- Contains name of the day, Sunday, Monday
	DayOfWeek INT,-- First Day Sunday=1 and Saturday=7
	DayOfWeekInMonth INT, -- 1st Monday or 2nd Monday in Month
	DayOfWeekInYear INT,
	DayOfQuarter INT,
	DayOfYear INT,
	WeekOfMonth INT,-- Week Number of Month
	WeekOfQuarter INT, -- Week Number of the Quarter
	WeekOfYear INT,-- Week Number of the Year
	Month INT, -- Number of the Month 1 to 12{}
	MonthName NVARCHAR(9),-- January, February etc
	MonthOfQuarter INT,-- Month Number belongs to Quarter
	Quarter NCHAR(2),
	QuarterName NVARCHAR(9),-- First,Second..
	Year INT,-- Year value of Date stored in Row
	YearName CHAR(7), -- CY 2017,CY 2018
	MonthYear CHAR(10), -- Jan-2018,Feb-2018
	MMYYYY INT,
	FirstDayOfMonth DATE,
	LastDayOfMonth DATE,
	FirstDayOfQuarter DATE,
	LastDayOfQuarter DATE,
	FirstDayOfYear DATE,
	LastDayOfYear DATE,
	IsHoliday BIT,-- Flag 1=National Holiday, 0-No National Holiday
	IsWeekday BIT,-- 0=Week End ,1=Week Day
	Holiday NVARCHAR(50),--Name of Holiday in US
	Season NVARCHAR(10)--Name of Season
	);

CREATE TABLE DimLocation
	(
	Location_SK         INT IDENTITY (1,1) NOT NULL PRIMARY KEY,
	Location_BK 		INT NOT NULL,
	City				NVARCHAR(20),
	StateName		NVARCHAR(20),
	ZipCode			NVARCHAR(10),
	SalesTax			DECIMAL(8,4),
	TimeZone			NVARCHAR(10),
	IsOnline			NVARCHAR(8) NOT NULL
	);

CREATE TABLE DimPayment
	(
	Payment_SK			INT IDENTITY (1,1) NOT NULL PRIMARY KEY,
	Payment_BK			INT NOT NULL,
	PaymentType			NVARCHAR(4) NOT NULL
	);

CREATE TABLE DimEmployee
	(
	Employee_SK			INT IDENTITY (1,1) NOT NULL PRIMARY KEY,
	Employee_BK			INT NOT NULL,
	FirstName			NVARCHAR(15),
	LastName			NVARCHAR(20),
	Department			NVARCHAR(40)
	);

CREATE TABLE DimProduct
	(
	Product_SK			INT IDENTITY (1,1) NOT NULL PRIMARY KEY,
	Product_BK			INT NOT NULL,
	EquipmentCategoryName	NVARCHAR(20) NOT NULL,
	SportCategoryName	NVARCHAR(20) NOT NULL,
	SportName			NVARCHAR(20) NOT NULL,
	ProductName			NVARCHAR(40) NOT NULL
	);

CREATE TABLE DimCustomer
	(
	Customer_SK			INT IDENTITY (1,1) NOT NULL PRIMARY KEY,
	Customer_BK 		INT NOT NULL,
	FirstName			NVARCHAR(15) NOT NULL,
	LastName			NVARCHAR(20) NOT NULL,
	DOB					DATE NOT NULL,
	Age					INT,
	Rewards				INT NOT NULL
	);

CREATE TABLE FactPurchaseHistory
	(
	Product_SK 			INT NOT NULL,
	Employee_SK			INT NULL,
	Location_SK			INT NULL,
	Customer_SK			INT NOT NULL,
	Payment_SK			INT NOT NULL,
	PurchaseDate		INT NOT NULL,
	ProductPrice		MONEY NOT NULL,
	ProductCost			MONEY NOT NULL,
	PurchaseHistoryID 	INT NOT NULL,
	CONSTRAINT pk_FactPurchaseHistory PRIMARY KEY (PurchaseHistoryID, PurchaseDate, Product_SK, Customer_SK, Payment_SK),
	CONSTRAINT fk_FactPurchaseHistory_DimCustomer FOREIGN KEY (Customer_SK) REFERENCES DimCustomer(Customer_SK),
	CONSTRAINT fk_FactPurchaseHistory_DimPurchaseDate FOREIGN KEY (PurchaseDate) REFERENCES DimDate(Date_SK),
	CONSTRAINT fk_FactPurchaseHistory_DimLocation FOREIGN KEY (Location_SK) REFERENCES DimLocation(Location_SK),
	CONSTRAINT fk_FactPurchaseHistory_DimPayment FOREIGN KEY (Payment_SK) REFERENCES DimPayment(Payment_SK),
	CONSTRAINT fk_FactPurchaseHistory_DimEmployee FOREIGN KEY (Employee_SK) REFERENCES DimEmployee(Employee_SK),
	CONSTRAINT fk_FactPurchaseHistory_DimProduct FOREIGN KEY (Product_SK) REFERENCES DimProduct(Product_SK)
	);


