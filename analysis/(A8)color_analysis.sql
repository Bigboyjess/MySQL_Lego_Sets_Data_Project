-- how have colors changed 

SELECT
	year, 
    ROUND(AVG(num_unique_colors), 2) AS avg_unique_colors,
    MAX(num_unique_colors) AS most_unique_colors
FROM lego_sets
WHERE num_unique_colors IS NOT NULL
GROUP BY year
ORDER BY year;
    