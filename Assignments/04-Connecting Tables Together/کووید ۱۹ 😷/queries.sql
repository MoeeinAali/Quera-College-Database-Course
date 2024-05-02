-- Section1
SELECT country, SUM(new_cases) AS total_case, SUM(new_deaths) AS total_death
FROM covid
GROUP BY country
ORDER BY total_death DESC;
-- Section2
SELECT SUM(covid.new_cases) AS total_case, SUM(covid.new_deaths) AS total_death
FROM covid
WHERE country = 'Iran (Islamic Republic of)';
-- Section3
SELECT covid.country, RANK() over (ORDER BY SUM(covid.new_deaths) DESC) AS ranking
FROM covid
GROUP BY covid.country;
-- Section4
SELECT ranking
from (SELECT covid.country, RANK() over (ORDER BY SUM(covid.new_deaths) DESC) AS ranking
      FROM covid
      GROUP BY covid.country) as ranking_table
WHERE country = 'Iran (Islamic Republic of)';