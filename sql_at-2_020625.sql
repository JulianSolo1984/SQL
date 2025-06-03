/* SELECT world */
/* LINK: https://www.sqlzoo.net/wiki/SELECT_from_WORLD_Tutorial */

/* Q1 */
SELECT name, continent, population FROM world

/* Q2 */
SELECT name 
FROM world 
WHERE population >= 200000000

/* Q3 */
SELECT name, gdp/population
FROM world 
WHERE population >= 200000000

/* Q4 */
SELECT name, population/1000000 AS population_in_millions
FROM world
WHERE continent = 'South America'

/* Q5 */
SELECT name, population
FROM world
WHERE name = 'France' 
   OR name = 'Germany' 
   OR name = 'Italy'

/* Q6 */
SELECT name
FROM world
WHERE name LIKE '%United%'

/* Q7 */
SELECT name, population, area
FROM world
WHERE area > 3000000 
   OR population > 250000000

/* Q8 */
SELECT name, population, area
FROM world
WHERE (area > 3000000 AND population <= 250000000)
   OR (area <= 3000000 AND population > 250000000)

/* Q9 */
SELECT 
  name,
  ROUND(population/1000000, 2) AS population_millions,
  ROUND(gdp/1000000000, 2) AS gdp_billions
FROM world
WHERE continent = 'South America'

/* Q10 */
SELECT 
  name,
  ROUND(gdp/population, -3) AS per_capita_gdp
FROM world
WHERE gdp >= 1000000000000

/* Q11 */
SELECT name, capital
FROM world
WHERE LENGTH(name) = LENGTH(capital)

/* Q12 */
SELECT name, capital
FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1)
  AND name <> capital

/* Q13 */
SELECT name
FROM world
WHERE name LIKE '%a%'
  AND name LIKE '%e%'
  AND name LIKE '%i%'
  AND name LIKE '%o%'
  AND name LIKE '%u%'
  AND name NOT LIKE '% %'
