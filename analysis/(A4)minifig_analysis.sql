 -- how have minifig counts changed
 -- sorted by years with most minifigs to least
SELECT
	year,
    ROUND(avg(num_minifigs), 2) AS avg_minifigs,
    MAX(num_minifigs) AS max_minifigs,
    SUM(num_minifigs) AS total_minifigs
FROM lego_sets
GROUP BY year
ORDER BY total_minifigs DESC;