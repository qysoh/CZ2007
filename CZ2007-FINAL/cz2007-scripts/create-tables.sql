-- TABLE 1
CREATE TABLE Shops
(
    ShopName VARCHAR (200) NOT NULL,
    PRIMARY KEY (ShopName),
);

-- TABLE 2
CREATE TABLE Users
(
    UserId INT NOT NULL,
    UserName VARCHAR(200) NOT NULL,
    PRIMARY KEY (UserId),
);

-- TABLLE 3
CREATE TABLE Orders
(
    OrderId INT NOT NULL,
    UserId INT,
    ShippingAddress VARCHAR (200),
    TotalShippingCost FLOAT,
    OrderDateTime datetime,
    PRIMARY KEY (OrderId),
    FOREIGN KEY (UserId) REFERENCES Users(UserId)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

);

-- TABLE 7
CREATE TABLE Employees
(

    EID INT NOT NULL,
    EmployeeName VARCHAR (200),
    Salary INT CHECK(Salary > 0),
    PRIMARY KEY (EID),

);

-- TABLE 8
CREATE TABLE Products
(

    PID INT NOT NULL IDENTITY(1,1),
    ProductName VARCHAR (200),
    Maker VARCHAR (200),
    Category VARCHAR (200),
    PRIMARY KEY (PID)

);

-- TABLE 4
CREATE TABLE Complaints
(
    ComplaintID INT NOT NULL IDENTITY(1,1),
    UserID INT,
    EID INT,
    HandledDateTime datetime DEFAULT NULL,
    ComplaintText varchar(1000) NOT NULL,
    ComplaintStatus varchar(20) NOT NULL,
    CHECK (ComplaintStatus IN('pending', 'being handled', 'addressed')),
    FilledDateTime datetime,
    PRIMARY KEY (ComplaintID),
    FOREIGN KEY (UserId) REFERENCES USERS (UserId)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY(EID) REFERENCES Employees(EID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
);

-- TABLE 5
CREATE TABLE ComplaintsOnShops
(
    ComplaintID INT,
    ShopName VARCHAR (200),
    PRIMARY KEY (ComplaintID),
    FOREIGN KEY (ComplaintID) REFERENCES Complaints(ComplaintID)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (ShopName) REFERENCES Shops(ShopName)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
);

-- -- TABLE  6
CREATE TABLE ComplaintsOnOrders
(
    ComplaintID INT,
    OrderId INT,
    PRIMARY KEY (ComplaintID),
    FOREIGN KEY (ComplaintID) REFERENCES Complaints(ComplaintID),


    FOREIGN KEY (OrderId) REFERENCES Orders(OrderId)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
);


-- TABLE 9
CREATE TABLE ProductsInOrder
(

    PID INT,
    OrderId INT,
    ShopName VARCHAR (200) NOT NULL,
    OrderStatus VARCHAR (50) NOT NULL CHECK (OrderStatus IN('being processed', 'shipped', 'delivered')) DEFAULT ('being processed'),
    DeliveryDate DATETIME DEFAULT NULL,
    Price FLOAT NOT NULL CHECK (Price > 0.00),
    Quantity INT NOT NULL CHECK (Quantity > 0),
    PRIMARY KEY
    (PID, OrderId),
    FOREIGN KEY
    (ShopName) REFERENCES Shops
    (ShopName)
    ON
    DELETE CASCADE
    ON
    UPDATE CASCADE,
    FOREIGN KEY (PID) REFERENCES Products (PID)
    ON
    DELETE CASCADE
    ON
    UPDATE CASCADE,
    FOREIGN KEY (OrderId) REFERENCES Orders (OrderId)
    ON
    DELETE CASCADE
    ON
    UPDATE CASCADE,
);

-- TABLE 10
CREATE TABLE ProductsInShops
(
    ShopName VARCHAR (200),
    PID INT,
    Price FLOAT CHECK (Price >= 0.00),
    Quantity INT CHECK (Quantity >= 0),
    PRIMARY KEY (ShopName, PID),
    FOREIGN KEY (ShopName) REFERENCES Shops (ShopName)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (PID) REFERENCES Products (PID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);



-- TABLE 12
CREATE TABLE Feedback
(
    UserId INT,
    PID INT,
    FeedbackDateTime DATETIME NOT NULL,
    Rating INT NOT NULL CHECK(Rating <= 5 AND Rating >= 1),
    Comment VARCHAR (100),
    PRIMARY KEY (UserId, PID, FeedbackDateTime),
    FOREIGN KEY (UserId) REFERENCES Users(UserId)
ON DELETE CASCADE
ON UPDATE CASCADE,
    FOREIGN KEY (PID) REFERENCES Products (PID)
ON DELETE CASCADE
ON UPDATE CASCADE,
);






