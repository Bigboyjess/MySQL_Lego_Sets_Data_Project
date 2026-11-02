-- What decade had the largest lego sets 
SELECT 
	FLOOR(year / 10)*10 AS decade,
    COUNT(*) AS total_sets,
    ROUND(AVG(num_parts), 2) AS avg_parts,
    ROUND(AVG(num_minifigs), 2) AS avg_minifigs,
    ROUND(AVG(num_unique_colors), 2) AS avg_colors
FROM lego_sets
GROUP BY decade
ORDER BY decade;

-- *1970s and 2020s only cover half decades*