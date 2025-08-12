use fifa;
select* from fifa;
# how many players are there in a dataset?
select count(*) as cnt_total_records from fifa;
#how many nationalities do these players belongs to?
select nationality,count(distinct id) as total_players from fifa
group by nationality;
#what is the total wage given to all the players? what is the avg(players)and stddev (players)?
select sum(wage)as total_wages,
round(avg(wage),2) as avg_wage,
stddev(wage)as deviationwage from fifa;
#which nationality has the highest number of players what are the top 3 nationalities by players?
select nationality,count(distinct id) as player_count
from fifa 
group by nationality
order by player_count desc 
limit 3;
# which player has the highest wage who has the lowest wage?
select id, max(wage) as maximum_wage from fifa
group by id
order by max(wage)desc limit 1;
select id,min(wage) as minimum_wage from fifa
group by id
order by min(wage) limit 1;
#the player having the best overaal rating and worst overall rating?
select*from fifa;
select name,max(overall) as maximum_overall from fifa
group by name
order by max(overall) desc
limit 1;
#lowest
select name, min(overall) minimum_rating from fifa
group by name
order by min(overall) asc
limit 1;
#club having the highest total of overall rating highest average of overall rating?
select club,sum(overall)as total_overall from fifa
group by club
order by total_overall desc
limit 1;
select club,avg(overall)as total_overall from fifa
group by club
order by avg(overall) desc
limit 1;
# What are the top 5 clubs based on the average 	ratings of their players and their corresponding 	averages?
SELECT CLUB,avg(OVERALL) AS TOTAL_OVERALL FROM FIFA
GROUP BY CLUB
ORDER BY  TOTAL_OVERALL DESC
LIMIT 5;
#What is the distribution of players whose preferred foot is left vs right?
select *from fifa;
SELECT Preferred_Foot, COUNT(*) AS player_count
FROM fifa
WHERE Preferred_Foot IN ('Left', 'Right')
GROUP BY Preferred_Foot
HAVING COUNT(*) > 0
ORDER BY player_count DESC;
#Which jersey number is the luckiest?
select*from fifa;
SELECT Jersey_Number, COUNT(*) AS HighPotentialPlayers
FROM Fifa
WHERE Potential >= 85
GROUP BY Jersey_Number
HAVING COUNT(*) > 5
ORDER BY HighPotentialPlayers DESC limit 1;
#What is the frequency distribution of nationalities among players whose club name starts with M?
select club,nationality,count(*) as total_cnt_players from fifa
where club like'm%'
group by  club,nationality
having count(*)>2
order by count(*) desc;
#How many players have joined their respective clubs in the date range 20 May 2018 to 10 April 2019 (both inclusive)?
select* from fifa;
select count(*) from fifa
where joined between '20 May 2018'and '10 April 2019';
#How many players have joined their respective clubs date wise?
select*from fifa;
describe fifa;
select date(str_to_date(joined,'%Y-%m-%d'))as joined_date,club,count(id) from fifa
group by 1,2;
#How many players have joined their respective clubs yearly?
select*from fifa;
select year(str_to_date(joined,'%Y-%m-%d'))as joined_year,club,count(id) from fifa
group by 1,2;





















