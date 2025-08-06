use fifa;
select* from fifa;
# how many players are there in a dataset?
select count(*) as cnt_total_records from fifa;
#how many nationalities do these players belongs to?
select count(distinct nationality)as uniq_nationalities from fifa;
#what is the total wage given to all the players? what is the avg(players)and stddev (players)?
select sum(wage)as total_wages,
avg(wage) as avg_wage,
stddev(wage)as deviationwage from fifa;
#which nationality has the highest number of players what are the top 3 nationalities by players?
select nationality,count(*) as player_count
from fifa 
group by nationality
order by player_count desc 
limit 3;
# which player has the highest wage who has the lowest wage?
select*from fifa
order by wage desc
limit 1;
select*from fifa
order by wage asc
limit 1;

#the player having the best overaal rating and worst overall rating?
select*from fifa;
select name,overall from fifa
order by overall desc
limit 1;
#lowest
select name,overall from fifa
order by overall asc
limit 1;
#club having the highest total of overall rating highest average of overall rating?
select club,sum(overall)as total_overall from fifa
group by club
order by total_overall desc
limit 1;
select club,sum(overall)as total_overall from fifa
group by club
order by total_overall asc
limit 1;
# What are the top 5 clubs based on the average 	ratings of their players and their corresponding 	averages?
SELECT CLUB,avg(OVERALL) AS TOTAL_OVERALL FROM FIFA
GROUP BY CLUB
ORDER BY  TOTAL_OVERALL DESC
LIMIT 5;












