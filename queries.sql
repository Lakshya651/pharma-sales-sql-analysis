-- Top 10 medicines by revenue
SELECT m.Name, SUM(s.UnitsSold * s.UnitPrice) AS revenue
FROM sales s
JOIN medicines m ON s.MedicineID = m.MedicineID
GROUP BY m.Name
ORDER BY revenue DESC
LIMIT 10;

-- Monthly revenue trend (SQLite compatible)
SELECT strftime('%Y-%m', Date) AS month, SUM(UnitsSold * UnitPrice) AS revenue
FROM sales
GROUP BY month
ORDER BY month;

-- Regional performance
SELECT Region, SUM(UnitsSold * UnitPrice) AS revenue
FROM sales
GROUP BY Region
ORDER BY revenue DESC;

-- Medicines with revenue > average revenue (example subquery)
SELECT Name, revenue FROM (
  SELECT m.Name, SUM(s.UnitsSold * s.UnitPrice) AS revenue
  FROM sales s JOIN medicines m ON s.MedicineID = m.MedicineID
  GROUP BY m.Name
) t
WHERE revenue > (SELECT AVG(revenue) FROM (
  SELECT SUM(UnitsSold * UnitPrice) AS revenue
  FROM sales
  GROUP BY MedicineID
) x);