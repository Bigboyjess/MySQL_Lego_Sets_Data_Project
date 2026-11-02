-- checking the data range (should be 1975-2025)
SELECT
    MIN(year) AS first_year,
    MAX(year) AS last_year,
    COUNT(DISTINCT year) AS distinct_years
FROM lego_sets;
    
	
	