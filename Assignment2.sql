create database SQLPractice;

use SQLPractice;

-- view Table 
SELECT * FROM  Athlete_olympics3;

--Distinct sports .
SELECT DISTINCT sport FROM Athlete_olympics3
ORDER BY sport ASC;

--Top 10 oldest Athlete..
SELECT Top 10 Name, Age, Sport FROM Athlete_olympics3
ORDER BY Age DESC;


--List Athlete whose age 20 and 25.
SELECT Name,Age,Sport ,City FROM Athlete_olympics3
WHERE Age BETWEEN 20 AND 25
ORDER BY Age DESC;

--Distinct Country (NOC) after year 2000.
SELECT DISTINCT  NOC FROM Athlete_olympics3
WHERE Year>2000

--Top 15 records Sport(Athletics or Swimming).
SELECT Top 15 * FROM Athlete_olympics3 
WHERE Sport IN ('Athletics', 'Swimming');

--All Athlete whose name start 'A'.
SELECT * FROM Athlete_olympics3
WHERE Name LIKE 'A%';

--Athlete records Medal is not null
SELECT * FROM Athlete_olympics3
WHERE Medal is not null
ORDER BY Year ASC;

--All Olympic events contain Freestyle.
SELECT DISTINCT Event FROM Athlete_olympics3
WHERE Event LIKE '%Freestyle%';

--Distinct athlete name who won gold medal
SELECT DISTINCT Name,Medal FROM Athlete_olympics3
WHERE Medal= 'Gold'
AND Sport IN('Athletics', 'Swimming');

--Top 20 athletes by height between 180cm and 200cm.
SELECT TOP 20 Name,Height FROM Athlete_olympics3
WHERE Height BETWEEN 180 AND 200;


--Participate between the year 1996 and 2016 (USA,CHN,IND).
SELECT * FROM Athlete_olympics3
WHERE Year Between 1996 AND 2016 
AND NOC IN ('USA','CHN','IND');

--All Athlete records sport is not Athletics and medal is silve
SELECT * FROM Athlete_olympics3
WHERE Sport !='Athletics' AND Medal='Silver'
ORDER BY Year DESC;

--Distinct Olympic games where team Contain United.
SELECT Distinct Games FROM Athlete_olympics3
WHERE Team LIKE '%United%';

--Latest 10 records Medal winner in winter loympics.
SELECT TOP 10 * FROM Athlete_olympics3
WHERE Season= 'Winter'
AND Medal is not null
ORDER BY Year DESC;

--athlete name contain Singh and Kumar ,participate after 2010.
SELECT * FROM Athlete_olympics3
WHERE (Name LIKE '%%Singh' or Name LIKE '%Kumar%')
AND Year>2010;

--Retrieve top 5 Olympic events where athletes won Gold medals, ordered by Year descending.
SELECT Top 5 Name, Year, Sport, Event, Medal FROM Athlete_olympics3
WHERE Medal='Gold'
ORDER BY Year DESC;

--distinct sports where athletes aged between 30 and 40 won Bronze medals.
SELECT DISTINCT Sport  FROM Athlete_olympics3
WHERE Age BETWEEN 30 AND 40 
AND Medal='Bronze';

--Athlete records sport(boxing,wrestling,judo) and year 2000,2010 .
SELECT * FROM Athlete_olympics3
WHERE Sport IN('Boxing', 'Wrestling', 'Judo')
AND Year BETWEEN 2000 AND 2016
ORDER BY Weight ASC;

-- Top 10 Tallest European Medal Winners.
SELECT TOP 10 Name, Height, NOC, Medal
FROM Athlete_olympics3
WHERE NOC IN ('FRA','GER','ITA','ESP','GBR','DEN','NED','SWE','NOR','SUI')
AND Medal IS NOT NULL
ORDER BY Height DESC;

--Athlete Participate summer olympics and event name contain relay and year greater than 2008.
SELECT * FROM Athlete_olympics3
WHERE Season='Summer'
AND Event LIKE '%Relay%'
AND Year > 2008
ORDER BY Year ASC, Name ASC;

--Distinct Athlete name whose won gold medal that start with men.
SELECT DISTINCT Name FROM Athlete_olympics3
WHERE Medal='Gold'
AND Event LIKE 'Men%';

--last 15 athlete records Medal gold and silver, age 18,23.
SELECT TOP 15 * FROM Athlete_olympics3
WHERE Medal in('Gold', 'Silver')
AND Age BETWEEN 18 AND 23;
