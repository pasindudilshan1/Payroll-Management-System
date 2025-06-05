CREATE DATABASE Payroll_Management_System; --Firstly Run This 
USE Payroll_Management_System;				-- remove CREATE DATABASE Payroll_Management_System; line and press F5  

CREATE TABLE Department (
    DepartmentID VARCHAR(10) PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE,
    Location VARCHAR(255)
);

CREATE TABLE Position (
    PositionID VARCHAR(10) PRIMARY KEY,
    PositionTitle VARCHAR(100) NOT NULL UNIQUE,
    Description VARCHAR(255),
    BaseSalary DECIMAL(10, 2)
);

CREATE TABLE Employee (
    EmployeeID VARCHAR(10) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Gender CHAR(1),
    Email VARCHAR(100) UNIQUE,
    Address VARCHAR(255),
    HireDate DATE NOT NULL,
    DepartmentID VARCHAR(10) NOT NULL,
    PositionID VARCHAR(10) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY (PositionID) REFERENCES Position(PositionID),
    CHECK (Gender IN ('M', 'F', 'O'))
);

CREATE TABLE SalaryComponentType (
    ComponentTypeID VARCHAR(10) PRIMARY KEY,
    ComponentName VARCHAR(100) NOT NULL UNIQUE,
    ComponentDescription VARCHAR(255),
    IsDeduction BIT NOT NULL,
    IsTaxable BIT NOT NULL,
    CalculationMethod VARCHAR(50)
);

CREATE TABLE EmployeeSalaryComponent (
    EmployeeComponentID VARCHAR(15) PRIMARY KEY,
    EmployeeID VARCHAR(10) NOT NULL,
    ComponentTypeID VARCHAR(10) NOT NULL,
    EffectiveDate DATE NOT NULL,
    EndDate DATE,
    AmountOrRate DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (ComponentTypeID) REFERENCES SalaryComponentType(ComponentTypeID),
    UNIQUE (EmployeeID, ComponentTypeID, EffectiveDate),
    CHECK (AmountOrRate >= 0),
    CHECK (EndDate IS NULL OR EndDate >= EffectiveDate)
);

CREATE TABLE PayrollPeriod (
    PeriodID VARCHAR(10) PRIMARY KEY,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    PaymentDate DATE NOT NULL,
    Status VARCHAR(20) NOT NULL,
    CHECK (EndDate >= StartDate)
);

CREATE TABLE PayrollTransaction (
    TransactionID VARCHAR(15) PRIMARY KEY,
    EmployeeID VARCHAR(10) NOT NULL,
    PeriodID VARCHAR(10) NOT NULL,
    GrossPay DECIMAL(12, 2) NOT NULL,
    TotalDeductions DECIMAL(12, 2) NOT NULL,
    NetPay DECIMAL(12, 2) NOT NULL,
    TransactionDate DATE NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (PeriodID) REFERENCES PayrollPeriod(PeriodID),
    CHECK (GrossPay >= 0 AND TotalDeductions >= 0 AND NetPay >= 0)
);

CREATE TABLE Payslip (
    PayslipID VARCHAR(15) PRIMARY KEY,
    TransactionID VARCHAR(15) NOT NULL UNIQUE,
    GenerationDate DATE NOT NULL,
    PDFLink VARCHAR(255),
    FOREIGN KEY (TransactionID) REFERENCES PayrollTransaction(TransactionID)
);
