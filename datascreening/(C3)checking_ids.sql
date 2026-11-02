-- Checking for duplicate ids
SELECT
    set_num,
    COUNT(*) AS occurrences
FROM lego_sets
GROUP BY set_num
HAVING COUNT(*) > 1;