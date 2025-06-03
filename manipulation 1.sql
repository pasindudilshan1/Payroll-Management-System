SELECT
    E.EmployeeID,
    E.FirstName,
    E.LastName,
    D.DepartmentName,
    P.PositionTitle
FROM
    Employee AS E
INNER JOIN
    Department AS D ON E.DepartmentID = D.DepartmentID
INNER JOIN
    Position AS P ON E.PositionID = P.PositionID;
