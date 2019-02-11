/*
Gerald Onwude
selecting grouping data
*/

--Question 3a.. FInd number of players at each position
select		 playerposition, sum (PlayerNum) as Numofplayers
from		[BBALL STATS]
where Playerposition in ('guard', 'Forward', 'center')
group by Playerposition

--3b. Find the Number of Players assigned to each Coach
select		Playerscoach, count (PlayerName) as Numofplayers
from		[BBALL STATS]
group by	Playerscoach

--3c.Find the Most Points scored per game by Position
Select		Playerposition, sum (points) as Numofpoints
from		[BBALL STATS]
group by	Playerposition

--3d. Find the Number of Rebounds per game by Coach
select		Playerscoach, sum (rebounds) as Rebounds
from		[BBALL STATS]
group by	Playerscoach
order by	Rebounds desc

--3d. Find the Average number of Assist by Coach 
select		Playerscoach, Avg (Assist) as Assist
from		[BBALL STATS]
group by	Playerscoach
order by	Assist

--3f. Find the Average number of Assist per game by Position
select		Playerposition, avg (assist) as AvgAssist
from		[BBALL STATS]
group by	Playerposition

--3g. Find the Total number of Points by each Player Position.
Select		Playerposition, sum (points) Totalnumberofpoints
from		[BBALL STATS]
Group by	Playerposition