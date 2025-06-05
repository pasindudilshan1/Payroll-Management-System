-- Insert data into Department table
INSERT INTO Department (DepartmentID, DepartmentName, Location) VALUES
('D001', 'Human Resources', 'Building A, Floor 1'),
('D002', 'Finance', 'Building A, Floor 2'),
('D003', 'Information Technology', 'Building B, Floor 3'),
('D004', 'Marketing', 'Building C, Floor 1');

-- Insert data into Position table
INSERT INTO Position (PositionID, PositionTitle, Description, BaseSalary) VALUES
('P001', 'HR Manager', 'Manages HR operations', 80000.00),
('P002', 'Software Developer', 'Develops software applications', 70000.00),
('P003', 'Accountant', 'Manages financial records', 65000.00),
('P004', 'Marketing Specialist', 'Develops marketing strategies', 60000.00);

-- Insert data into Employee table
INSERT INTO Employee (EmployeeID, FirstName, LastName, DateOfBirth, Gender, Email, Address, HireDate, DepartmentID, PositionID) VALUES
('E001', 'Kamal', 'Surawira', '1985-05-10', 'M', 'kamal23@gmail.com', 'Nugegoda,Colombo 05', '2010-01-15', 'D001', 'P001'),
('E002', 'Sunil', 'Perera', '1990-11-22', 'M', 'sunilp23@gmail.com', 'Kandy Road,Kurunegala ', '2015-03-20', 'D003', 'P002'),
('E003', 'Mahinda', 'Rajapaksa', '1988-03-01', 'M', 'mahanidar67@gmail.com', 'No. 21, Galle Road,Panadura,', '2012-07-01', 'D002', 'P003'),
('E004', 'Siriyalatha', 'Samari', '1992-09-15', 'F', 'siri78@gmail.com', 'Mahaweli Mawatha,Kandy 20000,', '2018-02-10', 'D004', 'P004');

-- Insert data into SalaryComponentType table
INSERT INTO SalaryComponentType (ComponentTypeID, ComponentName, ComponentDescription, IsDeduction, IsTaxable, CalculationMethod) VALUES
('SC001', 'Basic Pay', 'Base salary component', 1, 0, 'Fixed Amount'),
('SC002', 'HRA', 'House Rent Allowance', 1, 0, 'Percentage of Basic'),
('SC003', 'PF', 'Provident Fund', 1, 0, 'Percentage of Basic'),
('SC004', 'Income Tax', 'Income Tax Deduction', 1, 1, 'Formula-based'),
('SC005', 'Bonus', 'Performance Bonus', 0, 1, 'Fixed Amount');

-- Insert data into EmployeeSalaryComponent table
INSERT INTO EmployeeSalaryComponent (EmployeeComponentID, EmployeeID, ComponentTypeID, EffectiveDate, EndDate, AmountOrRate) VALUES
('ESC001', 'E001', 'SC001', '2010-01-15', NULL, 80000.00), -- Alice Basic Pay
('ESC002', 'E001', 'SC002', '2010-01-15', NULL, 0.40),    -- Alice HRA (40% of Basic)
('ESC003', 'E001', 'SC003', '2010-01-15', NULL, 0.12),    -- Alice PF (12% of Basic)
('ESC004', 'E001', 'SC004', '2010-01-15', NULL, 0.10),    -- Alice Income Tax (10% of Gross)
('ESC005', 'E002', 'SC001', '2015-03-20', NULL, 70000.00), -- Bob Basic Pay
('ESC006', 'E002', 'SC002', '2015-03-20', NULL, 0.35),    -- Bob HRA
('ESC007', 'E002', 'SC003', '2015-03-20', NULL, 0.12);    -- Bob PF

-- Insert data into PayrollPeriod table
INSERT INTO PayrollPeriod (PeriodID, StartDate, EndDate, PaymentDate, Status) VALUES
('PP202401', '2024-01-01', '2024-01-31', '2024-02-05', 'Processed'),
('PP202402', '2024-02-01', '2024-02-29', '2024-03-05', 'Open');

-- Insert data into PayrollTransaction table (simplified calculations for example)
INSERT INTO PayrollTransaction (TransactionID, EmployeeID, PeriodID, GrossPay, TotalDeductions, NetPay, TransactionDate) VALUES
('PT001', 'E001', 'PP202401', 112000.00, 20000.00, 92000.00, '2024-02-01'), -- Alice
('PT002', 'E002', 'PP202401', 94500.00, 15000.00, 79500.00, '2024-02-01'); -- Bob

-- Insert data into Payslip table
INSERT INTO Payslip (PayslipID, TransactionID, GenerationDate, PDFLink) VALUES
('PS001', 'PT001', '2024-02-05', 'https://example.com/payslips/PS001.pdf'),
('PS002', 'PT002', '2024-02-05', 'https://example.com/payslips/PS002.pdf');