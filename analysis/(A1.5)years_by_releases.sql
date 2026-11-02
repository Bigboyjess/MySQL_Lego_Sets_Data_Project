-- top 10 years with most set releases
SELECT
	year, 
    COUNT(*) AS total_sets
FROM lego_sets
GROUP BY year
ORDER BY total_sets DESC, year DESC
LIMIT 10;