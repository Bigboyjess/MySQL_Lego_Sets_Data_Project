-- year over year changes 

WITH yearly_sets AS (
	SELECT
		year,
        COUNT(*) AS total_sets
	FROM lego_sets
    GROUP BY year
),
yearly_trends AS (
	SELECT
		year,
        total_sets,
        LAG(total_sets) OVER (ORDER BY year) AS previous_year_sets
	FROM yearly_sets
)
SELECT 
	year,
    total_sets,
    previous_year_sets,
    total_sets - previous_year_sets AS change_in_sets,
    ROUND(
		100 * (total_sets - previous_year_sets)
        / NULLIF(previous_year_sets, 0),
        2
	) AS percentage_change
FROM yearly_trends
ORDER BY year;
        