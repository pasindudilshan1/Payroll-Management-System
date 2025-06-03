SELECT
    ComponentTypeID,
    ComponentName,
    ComponentDescription
FROM
    SalaryComponentType
WHERE
    IsDeduction = 1;
