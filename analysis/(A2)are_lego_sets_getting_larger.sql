-- are lego sets getting larger?
SELECT
    year,
    COUNT(*) AS total_sets,
    ROUND(AVG(num_parts), 2) AS avg_parts,
    MAX(num_parts) AS largest_set
FROM lego_sets
WHERE num_parts IS NOT NULL
GROUP BY year
ORDER BY year;