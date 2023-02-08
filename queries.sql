-- PART ONE
-- QUESTION 1
SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.owner_id;

-- QUESTION 2
SELECT o.first_name, o.last_name, 
  COUNT(v.owner_id) FROM owners o 
  JOIN vehicles v on o.id=v.owner_id 
  GROUP BY (o.first_name, o.last_name) 
ORDER BY o.first_name;

-- QUESTION 3
SELECT 
  first_name, last_name, 
  ROUND(AVG(price)) as average_price, 
  COUNT(owner_id) 
FROM owners o 
JOIN vehicles v on o.id=v.owner_id 
GROUP BY 
  (first_name, last_name) 
HAVING 
  COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000 
ORDER BY first_name DESC;

