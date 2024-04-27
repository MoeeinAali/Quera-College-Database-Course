-- Section1
SELECT name, year_of_release, CAST(global_sales * 1000000 as UNSIGNED)
FROM games
WHERE global_sales > 20.0
ORDER BY year_of_release DESC, global_sales DESC
LIMIT 10;
-- Section2
SELECT publisher
FROM games
GROUP BY publisher
ORDER BY SUM(global_sales) DESC
LIMIT 1;
-- Section3
SELECT COALESCE(genre, 'OTHER') AS genre
FROM games
GROUP BY GENRE
ORDER BY SUM(other_sales) DESC
LIMIT 1;
-- Section4
