create table customer(
 customerID int primary key,
 FirstName varchar(50),
 LastName varchar(50),
 Email varchar(100),
 PhoneNumber varchar(15),
 Address varchar(255),
 Username varchar(50) unique key,
 Password varchar(64),
 RegistrationDate date
);

create table Vehicle(
VehicleID int primary Key,
Model varchar(50),
Make varchar(50),
Year int,
Color varchar(20),
RegistrationNumber varchar(20) unique key,
Availability boolean,
DailyRate decimal(10,2)
);
desc Vehicle;

CREATE TABLE Reservation (
    ReservationID INT PRIMARY KEY,
    CustomerID INT,
    VehicleID INT,
    StartDate DATETIME,
    EndDate DATETIME,
    TotalCost DECIMAL(10, 2),
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);
desc reservation;

CREATE TABLE Admin (
    AdminID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Username VARCHAR(50) UNIQUE,
    Password VARCHAR(64), 
    Role VARCHAR(20),
    JoinDate DATE
);

insert into Customer
values
    (1, 'Suresh', 'Kumar', 'suresh.kumar@gmail.com', '9876543210', '123 Hyderabad Street', 'suresh123', 'suresh@123', '2024-01-19'),
    (2, 'Priya', 'Reddy', 'priya.reddy@gmail.com', '8765432109', '456 Charminar Road', 'priya456', 'priya@456', '2024-01-25'),
    (3, 'Rajesh', 'Reddy', 'rajesh.reddy@gmail.com', '7654321098', '789 Jubilee Hills', 'rajesh789', 'rajesh@789', '2024-02-10'),
    (4, 'Venu', 'Gopal', 'venu.gopal@gmail.com', '7780727748', '136 Jubilee Hills', 'venu136', 'venu@136', '2024-02-16');

insert into Vehicle (VehicleID, Model, Make, Year, Color, RegistrationNumber, Availability, DailyRate)
values
    (1, 'Mercedes-Benz S-Class', 'Mercedes-Benz', 2022, 'Black', 'MBZ123', TRUE, 120.00),
    (2, 'BMW 7 Series', 'BMW', 2021, 'White', 'BMW456', TRUE, 110.00),
    (3, 'Jaguar XJ', 'Jaguar', 2020, 'Silver', 'JAG789', TRUE, 130.00),
    (4, 'Audi A8', 'Audi', 2019, 'Blue', 'AUDI456', TRUE, 115.00);

insert into Reservation (ReservationID,CustomerID, VehicleID, StartDate, EndDate, TotalCost, Status)
values
    (1, 1, 1, '2024-01-20 10:00:00', '2024-01-25 15:00:00', 600.00, 'Completed'),
    (2, 2, 2, '2024-02-01 12:00:00', '2024-02-05 18:00:00', 550.00, 'Confirmed'),
    (3, 3, 3, '2024-03-10 09:00:00', '2024-03-15 14:00:00', 650.00, 'Confirmed'),
    (4, 1, 4, '2024-04-05 15:00:00', '2024-04-10 12:00:00', 575.00, 'Pending');

insert into Admin (AdminID, FirstName, LastName, Email, PhoneNumber, Username, Password, Role, JoinDate)
values
    (1, 'Venu', 'Gopal', 'nvenu7272@gmail.com', '9876543210', 'venu0058', 'venu@0058', 'Super Admin', '2022-01-20'),
    (2, 'Uday', 'Kiran', 'udaykiran1@gmail.com', '8765432109', 'uday001', 'uday@001', 'Fleet Manager', '2023-01-21');

    