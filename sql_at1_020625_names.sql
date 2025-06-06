/* SELECT names */
/* LINK: https://www.sqlzoo.net/wiki/SELECT_names */

/* Q1 */
SELECT name FROM world
  WHERE name LIKE 'Y%'

/* Q2 */
SELECT name FROM world
  WHERE name LIKE '%Y'

/* Q3 */
SELECT name FROM world
  WHERE name LIKE '%X%'

/* Q4 */
SELECT name FROM world
  WHERE name LIKE '%land'

/* Q5 */
SELECT name FROM world
  WHERE name LIKE 'C%' AND name LIKE '%ia'

/* Q6 */
SELECT name FROM world
  WHERE name LIKE '%oo%'

/* Q7 */
SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

/* Q8 */
SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name

/* Q9 */
SELECT name FROM world
 WHERE name LIKE '%o__o%'

/* Q10 */
SELECT name FROM world
 WHERE LENGTH(name) = 4;

/* Q11 */
SELECT name
  FROM world
 WHERE name = capital

/* Q12 */
SELECT name
  FROM world
 WHERE capital = CONCAT(name, ' City')

/* Q13 */
SELECT capital, name
FROM world
WHERE capital LIKE CONCAT('%', name, '%')

/* Q14 */
SELECT capital, name
FROM world
WHERE capital LIKE CONCAT(name, ' %')
OR capital LIKE CONCAT(name, '-%');

/* Q15 */
SELECT name, REPLACE(capital, name, '')
   FROM world
WHERE capital LIKE CONCAT(name,'%') 
   AND capital <> name
