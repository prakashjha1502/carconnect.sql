CREATE DATABASE carconnect;
USE carconnect;

CREATE TABLE Customer (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(35) NOT NULL,
    LastName VARCHAR(35) NOT NULL,
    Email VARCHAR(70) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(30) UNIQUE NOT NULL,
    Address VARCHAR(155),
    Username VARCHAR(40) UNIQUE NOT NULL,
    Password VARCHAR(50) NOT NULL,
    RegistrationDate DATE
) AUTO_INCREMENT = 1001 ;

CREATE TABLE Vehicle (
    VehicleID INT AUTO_INCREMENT PRIMARY KEY,
    Model VARCHAR(35) NOT NULL,
    Make VARCHAR(55) NOT NULL,
    Year INT,
    Color VARCHAR(10),
    RegistrationNumber VARCHAR(40) UNIQUE NOT NULL,
    Availability BOOLEAN,
    DailyRate DECIMAL(10, 2)
) AUTO_iNCREMENT=101 ;

CREATE TABLE Reservation (
    ReservationID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    VehicleID INT,
    StartDate DATETIME,
    EndDate DATETIME,
    TotalCost DECIMAL(10, 2),
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
) AUTO_INCREMENT=10001 ;

CREATE TABLE Admin (
    AdminID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(25) NOT NULL,
    LastName VARCHAR(25) NOT NULL,
    Email VARCHAR(60) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(20),
    Username VARCHAR(50) UNIQUE NOT NULL,
    Password VARCHAR(25) NOT NULL,
    Role VARCHAR(25),
    JoinDate DATETIME
) AUTO_INCREMENT=01 ;
INSERT INTO Customer (FirstName, LastName, Email, PhoneNumber, Address, Username, Password, RegistrationDate)
VALUES
    ('Michael', 'Brown', 'michael.b@example.com', '222-333-4444', '345 Birch St, Riverside', 'michaelb', 'brownpass', '2024-01-21'),
    ('Sophie', 'Miller', 'sophie.m@example.com', '111-222-3333', '678 Cedar St, Suburbia', 'sophiem', 'miller123', '2024-01-21'),
    ('David', 'Taylor', 'david.t@example.com', '999-888-7777', '901 Redwood St, Metropolis', 'davidtaylor', 'taylorpass', '2024-01-21'),
    ('Olivia', 'White', 'olivia.w@example.com', '666-777-8888', '234 Oakwood St, Cityscape', 'oliviaw', 'whitepass', '2024-01-21'),
    ('Samuel', 'Lee', 'samuel.l@example.com', '333-444-5555', '456 Pinecone St, Natureville', 'samuellee', 'leesecure', '2024-01-21');
SELECT * FROM Customer;

INSERT INTO Vehicle (Model, Make, Year, Color, RegistrationNumber, Availability, DailyRate)
VALUES
    ('Cruze', 'Chevrolet', 2023, 'Black', 'MNO789', FALSE, 65.00),
    ('Fusion', 'Ford', 2021, 'White', 'PQR123', TRUE, 55.00),
    ('Sentra', 'Nissan', 2022, 'Gray', 'STU456', TRUE, 50.00),
    ('Focus', 'Ford', 2020, 'Purple', 'VWX789', FALSE, 60.00),
    ('Altima', 'Nissan', 2023, 'Orange', 'YZA123', TRUE, 55.00);
    SELECT * FROM Vehicle;

INSERT INTO Reservation (CustomerID, VehicleID, StartDate, EndDate, TotalCost, Status)
VALUES
    ( 106, '2024-06-25', '2024-07-01', 270.00, 'Completed'),
    ( 107, '2024-07-10', '2024-07-15', 190.00, 'Completed'),
    ( 108, '2024-08-20', '2024-08-25', 320.00, 'In Progress'),
    ( 109, '2024-09-05', '2024-09-10', 240.00, 'In Progress'),
    ( 110, '2024-10-15', '2024-10-20', 280.00, 'Completed');
    SELECT * FROM Reservation;

INSERT INTO Admin (FirstName, LastName, Email, PhoneNumber, Username, Password, Role, JoinDate)
VALUES
    ('Aarav', 'Kumar', 'aarav.kumar@example.com', '9876543210', 'aaravk', 'password123', 'User', '2024-01-21'),
    ('Sanya', 'Sharma', 'sanya.sharma@example.com', '8765432109', 'sanyas', 'pass456', 'User', '2024-01-22'),
    ('Vikram', 'Singh', 'vikram.singh@example.com', '7654321098', 'vikrams', 'ilovecoding', 'User', '2024-01-23'),
    ('Priya', 'Patel', 'priya.patel@example.com', '6543210987', 'priyap', 'securepass', 'User', '2024-01-24'),
    ('Rahul', 'Verma', 'rahul.verma@example.com', '5432109876', 'rahulv', 'evapassword', 'User', '2024-01-25');
    
SELECT * FROM Admin;




