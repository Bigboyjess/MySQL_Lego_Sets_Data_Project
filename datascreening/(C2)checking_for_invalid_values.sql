-- checking for invalid numerical values
SELECT * FROM lego_sets
WHERE year < 1975
   OR year > 2025
   OR num_parts < 0
   OR num_minifigs < 0
   OR num_unique_colors < 0;