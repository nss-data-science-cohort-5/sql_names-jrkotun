-- Habeeb Kotun Jr.
-- Nashville Software School, DS5
-- January 27, 2022
-- SQL Names

-- Question 1
SELECT COUNT(*)
FROM names;
-- Answer: There are 1957046 rows in the names table.

-- Question 2
SELECT SUM(num_registered)
FROM names;
-- Answer: There are 351653025 people registered in the dataset.

-- Question 3
SELECT name, year, MAX(num_registered) AS max_registered
FROM names
GROUP BY name, year
ORDER BY max_registered DESC;
-- Answer: Linda had the most appearances in a year with 99689 appearances in 1947.

-- Question 4
SELECT MIN(year), MAX(year)
FROM names;
-- Answer: The data ranges from 1880 to 2018.

-- Question 5
SELECT year, SUM(num_registered) AS total_registered
FROM names
GROUP BY year
ORDER BY total_registered DESC;
-- Answer: 1957 had the largest number of registrations at 4200022 registrations.

-- Question 6
SELECT COUNT(DISTINCT name)
FROM names;
-- Answer: There are 98400 distinct names in the dataset.

-- Question 7
SELECT gender, COUNT(gender) AS gender_count
FROM names
GROUP BY gender;
-- Answer: There are more females registered.

-- Question 8
SELECT name, gender, SUM(num_registered) AS total_registered
FROM names
GROUP BY name, gender
ORDER BY total_registered DESC;
-- Answer: The most popular male name is James and the most popular female name is Mary.

-- Question 9
SELECT name, gender, SUM(num_registered) AS total_registered
FROM names
WHERE year 
BETWEEN 2000 AND 2009
GROUP BY name, gender
ORDER BY total_registered DESC;
-- Answer: In the first decade of the 2000s, the most popular male name was Jacob and the most popular female name was Emily.

-- Question 10
SELECT year, COUNT(DISTINCT name) AS distinct_count
FROM names
GROUP BY year
ORDER BY distinct_count DESC;
-- Answer: 2008 had the most variety in names.

-- Question 11
SELECT name, SUM(num_registered) AS total_registered
FROM names
WHERE gender = 'F'
AND name LIKE ('X%')
GROUP BY name
ORDER BY total_registered DESC;
-- Answer: The most popular female name that starts with the letter X is Ximena.

-- Question 12
SELECT COUNT(DISTINCT name) AS distinct_count
FROM names
WHERE name LIKE ('Q%')
AND name NOT LIKE ('_u');
-- Answer: There are 537 distinct names that start with a 'Q', but whose second letter is not 'u'.