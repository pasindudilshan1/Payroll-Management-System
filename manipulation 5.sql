SELECT
    PeriodID,
    StartDate,
    EndDate,
    PaymentDate
FROM
    PayrollPeriod
WHERE
    StartDate BETWEEN '2024-01-01' AND '2024-01-31';
