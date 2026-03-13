use SQLPractice;

SELECT * FROM Athlete_olympics3;


--Total Count Athlete.
SELECT COUNT(*) AS Total_athlete FROM Athlete_olympics3;


--Average all athlete.
SELECT AVG(age) AS Average_Age FROM Athlete_olympics3;


--Maximum Height.
SELECT Max(Height) AS Max_Height FROM Athlete_olympics3;


--minimum weight.
SELECT Min(Weight) AS Min_Weight FROM Athlete_olympics3;


--Count total female.
SELECT COUNT(*) AS Female_Athlete FROM Athlete_olympics3
WHERE sex='F';


--athlete participate in summer.
SELECT COUNT(*) AS Athlete_Participate FROM Athlete_olympics3
WHERE Season='Summer';

--average weight of Athlete.
SELECT Avg(weight) as Average_Weight FROM Athlete_olympics3;


--Distinct Sport .
SELECT COUNT(DISTINCT Sport) as Total_Sport FROM Athlete_Olympics3;

--Youngest Athlete records.
SELECT MIN(age) AS Youngest_age FROM Athlete_olympics3;


-- Oldest Athlete records.
SELECT MAX(age) AS Oldest_age FROM Athlete_olympics3;


--Athlete per sport.
SELECT Sport, COUNT(*) AS Athlete_Count FROM Athlete_olympics3
GROUP BY Sport;


--Average age of athlete each sport.
SELECT Sport, AVG(age) AS Average_age FROM Athlete_olympics3
GROUP BY Sport;

--maximum height athlete each sport\.
SELECT Sport, MAX(Height) AS Max_Height FROM Athlete_olympics3
GROUP BY Sport;

--Athlete each Team,
SELECT Team,COUNT(*) AS Count_Team FROM Athlete_olympics3
GROUP BY Team;

--Average weight athlete grouped by sex.
SELECT Sex,AVG(weight) AS Avg_Weight FROM Athlete_olympics3
GROUP BY Sex;

--Minium AGE per  Olympic year.
SELECT Year, MIN(age) AS min_age FROM Athlete_olympics3
GROUP BY year;

--Medal Won by each Country.
SELECT Team, COUNT(Medal) AS Count_Medal FROM Athlete_olympics3
WHERE Medal is not null
GROUP BY Team;

--Average height per season.
SELECT Season,AVG(Height) AS Avg_Height FROM Athlete_olympics3
GROUP BY Season;


--Maximum weight athlete each sport.
SELECT Sport, MAX(Weight) AS Max_weight FROM Athlete_olympics3
GROUP BY Sport;

--Athlete participated each year.
SELECT Year, COUNT(Name) AS Total_Athlete FROM Athlete_olympics3
GROUP BY Year;


--Sport with average age >30.
SELECT Sport, Avg(age) AS Avg_Age FROM Athlete_olympics3
GROUP BY Sport
HAVING AVG(Age)>30;

--Team more than 1000 athletes.
SELECT Team, COUNT(*) AS athlete_Count FROM Athlete_olympics3
GROUP BY Team
HAVING COUNT(*)>1000;


--sport more than 500 athletes.
SELECT Sport, COUNT(*) AS Athlete_Count FROM Athlete_olympics3
GROUP BY Sport
HAVING COUNT(*)>500;

--Olympic year more than 2000 athlete.
SELECT Year,COUNT(Name) AS Total_Athlete FROM Athlete_olympics3
GROUP BY Year
HAVING COUNT(Name) > 2000;


--average athlete height greater than 180cm.
SELECT Team, AVG(Height) AS Avg_Height FROM Athlete_olympics3
GROUP BY Team
HAVING AVG(Height)>180;

--sport maximum weight 120kg.
SELECT Sport, MAX(Weight) AS Max_Weight FROM Athlete_olympics3
GROUP BY sport
HAVING MAX(Weight)>120;


--Won More than 100 medals.
SELECT Team,COUNT(Medal) AS Total_Count FROM Athlete_olympics3
GROUP BY Team
HAVING COUNT(Medal)>100;

--sport average athlete weight greater 80kg.
SELECT Sport, AVG(weight) AS avg_weight FROM Athlete_olympics3
GROUP BY Sport
HAVING AVG(Weight)>80;

--Olympics year more than 100 medal awarded.
SELECT Year,COUNT(Medal) AS Total_Medal FROM Athlete_olympics3
GROUP BY Year
HAVING COUNT(Medal) > 100;


--team average athlete age greater 28.
SELECT Team,AVG(age) AS Avg_age FROM Athlete_olympics3
GROUP BY Team
HAVING AVG(age)> 28;

