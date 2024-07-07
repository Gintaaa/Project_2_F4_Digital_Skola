-- Tabel Categories
CREATE TABLE public.categories (
    categoryID INT PRIMARY KEY,
    categoryName VARCHAR(256),
    description VARCHAR(256),
    picture VARCHAR(256)
);

-- Tabel Customers
CREATE TABLE public.customers (
    customerID VARCHAR(5) PRIMARY KEY,
    companyName VARCHAR(256),
    contactName VARCHAR(256),
    contactTitle VARCHAR(256),
	address VARCHAR(256),
    city VARCHAR(256),
    region VARCHAR(256),
    postalCode VARCHAR(256),
	country VARCHAR(256),
    phone VARCHAR(256),
    fax VARCHAR(256)
);

-- Tabel Employee Territories
CREATE TABLE public.employee_territories (
    employeeID INT,
    territoryID INT
);

-- Tabel Employees
CREATE TABLE public.employees (
    employeeID INT PRIMARY KEY,
    lastName VARCHAR(256),
	firstName VARCHAR(256),
    title VARCHAR(256),
    titleOfCourtesy VARCHAR(256),
    birthDate TIMESTAMP,
	hireDate TIMESTAMP,
    address VARCHAR(256),
    city VARCHAR(256),
	region VARCHAR(256),
    postalCode VARCHAR(256),
	country VARCHAR(256),
    homePhone VARCHAR(256),
    extension INT,
	photo VARCHAR(256),
	notes VARCHAR(256),
	reportsTo INT,
	photoPath VARCHAR(256)
);

-- Tabel Order Details
CREATE TABLE public.order_details (
    orderID DECIMAL(10, 3),
    productID DECIMAL(10, 3),
    unitPrice DECIMAL(10, 3),
    quantity DECIMAL(10, 3),
    discount DECIMAL(10, 3)
);

-- Tabel Orders
CREATE TABLE public.orders (
    orderID INT PRIMARY KEY,
    customerID VARCHAR(256),
    employeeID INT,
    orderDate TIMESTAMP,
    requiredDate TIMESTAMP,
	shippedDate TIMESTAMP,
    shipVia	 INT,
    freight DECIMAL(10, 3),
	shipName VARCHAR(256),
	shipAddress	 VARCHAR(256),
    shipCity VARCHAR(256),
	shipRegion VARCHAR(256),
    shipPostalCode VARCHAR(256),
    shipCountry VARCHAR(256)
);


-- Tabel Products
CREATE TABLE public.products (
    productID INT PRIMARY KEY,
    productName VARCHAR(256),
    supplierID INT,
    categoryID INT,
    quantityPerUnit VARCHAR(256),
	unitPrice DECIMAL(10, 3),
	unitsInStock INT,
	unitsOnOrder INT,
	reorderLevel INT,
	discontinued INT
);

-- Tabel Regions
CREATE TABLE public.regions (
    regionID INT PRIMARY KEY,
    regionDescription VARCHAR(256)
);

-- Tabel shippers
CREATE TABLE public.shippers (
    shipperID INT PRIMARY KEY,
    companyName VARCHAR(256),
    phone VARCHAR(256)
);

-- Tabel suppliers
CREATE TABLE public.suppliers (
    supplierID INT PRIMARY KEY,
    companyName VARCHAR(256),
    contactName VARCHAR(256),
    contactTitle VARCHAR(256),
	address VARCHAR(256),
    city VARCHAR(256),
	region VARCHAR(256),
    postalCode VARCHAR(256),
	country VARCHAR(256),
	phone VARCHAR(256),
    fax VARCHAR(256),
	homePage VARCHAR(256)
);

-- Tabel territories
CREATE TABLE public.territories (
    territoryID INT PRIMARY KEY,
    territoryDescription VARCHAR(256),
    regionID INT
);












