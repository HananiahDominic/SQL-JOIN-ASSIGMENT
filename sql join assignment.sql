-- QUESTION 1;
SELECT sum( city.population) as totalpopulation
FROM city
JOIN country
ON city.countrycode = country.code
WHERE continent = 'Asia'

-- QUESTION 2
SELECT city.name
FROM city
JOIN country
ON city.countrycode = country.code
WHERE continent = 'Africa'

-- QUESTION 3
SELECT country.continent,floor(avg(city.population))
FROM city
JOIN country
ON city.countrycode = country.code
GROUP BY country.continent;