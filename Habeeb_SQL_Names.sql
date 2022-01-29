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
ORDER BY max_registered DESC
LIMIT 5;
-- Answer: Linda had the most appearances in a year with 99689 appearances in 1947.

-- Question 4
SELECT MIN(year), MAX(year)
FROM names;
-- Answer: The data ranges from 1880 to 2018.

-- Question 5
SELECT year, SUM(num_registered) AS total_registered
FROM names
GROUP BY year
ORDER BY total_registered DESC
LIMIT 1;
-- Answer: 1957 had the largest number of registrations at 4200022 registrations.

-- Question 6
SELECT COUNT(DISTINCT name)
FROM names;
-- Answer: There are 98400 distinct names in the dataset.

-- Question 7
SELECT gender, SUM(num_registered) AS total_count
FROM names
GROUP BY gender;
-- Answer: There are more males registered.

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
AND name NOT LIKE ('_u%');
-- Answer: There are 46 distinct names that start with a 'Q', but whose second letter is not 'u'.

-- Question 13
SELECT name, SUM(num_registered) AS total_registered
FROM names
WHERE name IN ('Stephen', 'Steven')
GROUP BY name;
-- Answer: Steven is the more popular spelling between "Stephen" and "Steven".

-- Question 14
SELECT name, COUNT(DISTINCT gender)
FROM names
GROUP BY name
HAVING COUNT(DISTINCT gender) = 2;

SELECT (10773.0 / 98400) * 100
-- Answer: 10.95% of names are "unisex".

-- Question 15
SELECT name, COUNT (DISTINCT year)
FROM names
GROUP BY name
HAVING COUNT (DISTINCT year) = 139;
-- Answer: 921 names have made an appearance in every single year since 1880.

-- Question 16
SELECT name, COUNT (DISTINCT year)
FROM names
GROUP BY name
HAVING COUNT (DISTINCT year) = 1;
-- Answer: 21123 names have only appeared in one year.

-- Question 17
SELECT DISTINCT(name), year
FROM names
WHERE year NOT BETWEEN 1880 AND 1949
AND year NOT BETWEEN 1960 AND 2018
ORDER BY name;
-- Answer:  names only appeared in the 1950s.

-- Question 18
SELECT COUNT (DISTINCT name) as names_1950s
FROM names
WHERE year between 1950 and 1959
  and name not in
      (SELECT DISTINCT name FROM names WHERE year < 1950 or year > 1959);
-- Answer:

-- Question 19
SELECT name, 2018 - MAX(year) AS difference
FROM names
GROUP BY name
ORDER BY difference DESC;
-- Answer: Roll and Zilpah are the names that have not been used in the longest.