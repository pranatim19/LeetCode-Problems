/* Write your T-SQL query statement below */
SELECT t.id
FROM weather AS t
JOIN weather AS y
    ON DATEDIFF(day, y.recordDate, t.recordDate) = 1
WHERE y.temperature < t.temperature;