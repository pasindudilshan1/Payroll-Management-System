# Payroll Management System 📊💼

This is a mini-project developed as part of the **Database Management Systems (BAIS 21103)** course. It models a comprehensive **Payroll Management System (PMS)**, implementing full database design principles including ER modeling, relational schema, normalization, and SQL operations. The system is built using **SQL Server** and focuses on automating payroll processing and maintaining employee salary records efficiently.

---

## 📚 Project Overview

The Payroll Management System is designed to automate key payroll tasks for an organization. It includes:

- Accurate computation of employee salaries
- Allowance and deduction processing
- Payroll period management
- Tax and provident fund tracking
- Payslip generation

This project demonstrates how theoretical concepts of database design can be applied to a real-world business case.

---

## 🧩 Features

- **ER Model** with entities like Employee, Department, Position, PayrollPeriod, SalaryComponentType, etc.
- **Relational Schema** with primary/foreign keys and data types
- **Normalization** (1NF, 2NF, 3NF)
- **SQL Implementation**: Table creation (DDL) and data manipulation (DML)
- **Constraints**: Domain, Entity, Referential, and Business Logic enforcement
- **Test Data & Sample Queries** for common payroll operations

---

## 🛠️ Technologies Used

- **Database**: SQL Server
- **Languages**: SQL (DDL & DML)
- **Design**: ER Diagram using dbdiagram.io
- **Platform**: GitHub for version control and documentation

---

## 🔍 Entity Relationship Diagram

![ER Diagram](https://github.com/pasindudilshan1/Payroll-Management-System/blob/main/ER%20Diagram%20for%20Payroll%20.png)

---

## 📐 Relational Schema Diagram

![Relational Schema](https://github.com/pasindudilshan1/Payroll-Management-System/blob/main/PayRollSystem.png)

Or view it online: [dbdiagram.io](https://dbdiagram.io/d/Detailed-View-683edc3161dc3bf08d56041b)
(Note-:During initial  diagram creation, a 
foreign key link was mistakenly assigned to the GrossPay field in the PayrollTransaction table.)
---

## 📄 Key SQL Files

- **Department Table**: [`Department.png`](https://github.com/pasindudilshan1/Payroll-Management-System/blob/main/Department.png)
- **Position Table**: [`Position.png`](https://github.com/pasindudilshan1/Payroll-Management-System/blob/main/Position.png)
- **Employee Table**: [`Employee.png`](https://github.com/pasindudilshan1/Payroll-Management-System/blob/main/Employee.png)
- **SalaryComponentType Table**: [`SalaryComponentType.png`](https://github.com/pasindudilshan1/Payroll-Management-System/blob/main/SalaryComponentType.png)
- **EmployeeSalaryComponent Table**: [`EmployeeSalaryComponent.png`](https://github.com/pasindudilshan1/Payroll-Management-System/blob/main/EmployeeSalaryComponent.png)
- **PayrollTransaction Table**: [`PayrollTransaction.png`](https://github.com/pasindudilshan1/Payroll-Management-System/blob/main/PayrollTransaction.png)
- **Payslip Table**: [`Payslip.png`](https://github.com/pasindudilshan1/Payroll-Management-System/blob/main/Payslip.png)

---

## 🧪 Sample SQL Queries

Examples included in this repo:
- Retrieve all employees with department and position
- List salary components that are deductions
- Update salary component value
- Filter employees by name
- Retrieve payroll periods in a specific date range
- Sort employees by last name

🔗 [Manipulation Queries Image 1](https://github.com/pasindudilshan1/Payroll-Management-System/blob/main/manipulation1.png)  
🔗 [Manipulation Queries Image 2](https://github.com/pasindudilshan1/Payroll-Management-System/blob/main/manipulation%202.png)

---

## ✅ Normalization Summary

- **1NF**: Atomic attributes, no repeating groups  
- **2NF**: Removed partial dependencies (composite keys handled properly)  
- **3NF**: Removed transitive dependencies [(no non-key to non-key dependency)](https://dbdocs.io/pasindupremarathna13/PayRollSystem?field=PeriodID&table=PayrollPeriod&schema=public&view=table_structure)

---

## 📌 Contributors

- **S.D. Oshadhi** – AS/2022/025  
- **Nimthara Wijesundara** – AS/2022/034  
- **K.M.B.S. Dananjaya** – AS/2022/003  
- **K.A.J.C. Perera** – AS/2022/016  
- **B.A.P.D. Premarathna** – AS/2022/017

---

## 📅 Academic Info

- **Course Code**: BAIS 21103  
- **Course Title**: Database Management Systems  
- **Academic Year**: 2023/2024 – Semester 01  
- **Lecturers**:
  - Mr. V.L. Weerawickrama  
  - Mr. R.A.S. Rajapakse  
  - Mr. H.M.M.N. Herath  

---



