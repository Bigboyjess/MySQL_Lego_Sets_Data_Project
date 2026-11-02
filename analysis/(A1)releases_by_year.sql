-- how many legos were released in each year?
SELECT 
	year, 
    COUNT(*) AS total_sets
FROM lego_sets
GROUP BY year
ORDER BY year;