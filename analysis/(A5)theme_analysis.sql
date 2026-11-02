-- which lego themes have the most releases 

SELECT
	theme_name, 
    COUNT(*) AS total_sets,
    ROUND(AVG(num_parts), 2) AS avg_parts,
    ROUND(AVG(num_minifigs), 2) AS avg_minifigs
FROM lego_sets
GROUP BY theme_name
ORDER BY total_sets DESC
LIMIT 15;