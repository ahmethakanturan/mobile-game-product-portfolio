-- Flood-It! dataset: D1 and D7 retention for new players
-- Source: firebase-public-project.analytics_153293282 (Google's public, obfuscated GA4 sample)

-- Query 1: D1 and D7 retention
-- Result: D1 = 21.5% (910 of 4,239 players), D7 = 5.5% (221 of 3,986 players)

with installation as (select user_pseudo_id, parse_date('%Y%m%d',min(event_date)) as install_date
from `firebase-public-project.analytics_153293282.events_*` where event_name='first_open' group by user_pseudo_id),
activity as (select user_pseudo_id, parse_date('%Y%m%d',event_date) as active_date
from `firebase-public-project.analytics_153293282.events_*` group by user_pseudo_id, active_date),
nonnegativ as (select i.user_pseudo_id,
i.install_date,
a.active_date,
date_diff(a.active_date, i.install_date, day) as day_number 
from installation i join activity a on i.user_pseudo_id=a.user_pseudo_id),
clean_days as (select * from nonnegativ where user_pseudo_id not in (select user_pseudo_id from nonnegativ where day_number<0)),
d_results as (select 
count(distinct if(install_date<='2018-10-2',user_pseudo_id,null)) as d1_cohort, 
count(distinct if(install_date<='2018-10-2'and day_number=1,user_pseudo_id,null)) as d1_players,
count(distinct if(install_date<='2018-09-26',user_pseudo_id,null)) as d7_cohort, 
count(distinct if(install_date<='2018-09-26'and day_number=7,user_pseudo_id,null)) as d7_players,
from clean_days)
select d_results.*, d1_players/d1_cohort as d1_retention, d7_players/d7_cohort as d7_retention from d_results;

-- Method
-- A player's install date is their first first_open event. They count as retained on day N
-- if they have any event on the Nth calendar day after install.
-- 12 players had events before their first_open date, which most likely means they reinstalled
-- the game. Their real install date is unknown, so I removed them.
-- The data ends on 3 Oct 2018. A player can only count toward D1 if the data covers the day
-- after their install, so the D1 group only includes installs up to 2 Oct. For the same reason,
-- the D7 group only includes installs up to 26 Sep.

-- Interpretation
-- About 4 in 5 new players don't come back the next day, and only 5.5% are still playing a week
-- later. D7 is about a quarter of D1, so most of the players who return on day 1 are gone by day 7.
-- Retention shows that players leave, not why. One lead from the overview: about 42% of finished
-- quickplay games end in a fail, and about 44% of players who start quickplay never win a game.
-- If the early games are too hard, that could explain part of the drop. I look at this in
-- 02_board_difficulty.sql.
