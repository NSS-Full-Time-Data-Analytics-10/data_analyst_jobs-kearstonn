SELECT COUNT (*)
FROM data_analyst_jobs;
--Q1: 1793

SELECT *
FROM data_analyst_jobs
LIMIT 10;
--Q2:ExxonMobil

SELECT *
FROM data_analyst_jobs;

SELECT COUNT(location)
FROM data_analyst_jobs
WHERE location='TN';

SELECT COUNT(location)
FROM data_analyst_jobs
WHERE location= 'TN'OR location='KY';
--Q3: TN=21/ BOTH=27

SELECT location,COUNT(star_rating)
FROM data_analyst_jobs
WHERE star_rating>4 AND location='TN'
GROUP BY location;
--Q4: 3

SELECT COUNT(review_count)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
--Q5: 151

SELECT location AS state, AVG(star_rating) AS avg_star_rating
FROM data_analyst_jobs
GROUP BY location;
--Q6: KS

SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs;
--Q7:881

SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE location='CA';
--Q8:230

SELECT company, AVG(star_rating)
FROM data_analyst_jobs
WHERE company IS NOT NULL
GROUP BY company
HAVING SUM(review_count)>5000;
--Q9:41

SELECT company, AVG(star_rating) AS average_rating
FROM data_analyst_jobs
WHERE company IS NOT NULL
GROUP BY company
HAVING SUM(review_count)>5000
ORDER BY average_rating DESC;
--Q10: Google/ 4.3

SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';
--Q11:774

SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE title NOT LIKE '%Analyst%'OR title NOT LIKE '%Analytics%';
--Q12: 802





