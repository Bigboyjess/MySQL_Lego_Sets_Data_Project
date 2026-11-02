-- top 20 largest sets

SELECT 
	set_num,
    name,
    year,
    parent_theme, 
    num_parts,
    num_minifigs
FROM lego_sets
WHERE num_parts IS NOT NULL
order by num_parts DESC
LIMIT 20;