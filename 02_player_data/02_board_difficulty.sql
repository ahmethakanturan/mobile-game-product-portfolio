-- Flood-It! dataset: difficulty by board size (S, M, L)
-- Source: firebase-public-project.analytics_153293282 (Google's public, obfuscated GA4 sample)

-- Query 1: Starts, wins, fails and quits for each quickplay board
-- Result:
--   S: 441,639 starts, fail rate 37.5%, quit rate 39.6%
--   M:  37,290 starts, fail rate 49.6%, quit rate 25.5%
--   L:  44,501 starts, fail rate 69.3%, quit rate 24.3%

with boards as (
  select event_name, p.value.string_value as board
  from `firebase-public-project.analytics_153293282.events_*`, unnest(event_params) as p
  where event_name in ('level_start_quickplay','level_complete_quickplay','level_fail_quickplay')
    and p.key = 'board'
),
situations as (
  select board,
    count(if(event_name='level_start_quickplay',1,null)) as starts,
    count(if(event_name='level_complete_quickplay',1,null)) as completes,
    count(if(event_name='level_fail_quickplay',1,null)) as fails
  from boards
  group by board
)
select *,
  round(fails/(completes+fails),3) as fail_rate,
  round(1-(fails+completes)/starts,3) as quit_rate
from situations
order by starts desc;

-- Method
-- Quickplay has no numbered levels. Each game is played on a board, and the board size
-- (S, M or L) is stored in event_params under the key "board".
-- fail_rate = fails / (wins + fails), so it only looks at games that ended.
-- quit_rate = share of started games with neither a win nor a fail event.
-- These are counts of games, not players.

-- Interpretation
-- L is the hardest board. 69% of finished L games end in a fail, compared with 50% on M
-- and 37.5% on S.
-- Players quit L games the least (24% of starts, against 40% on S). My guess is that
-- leaving a long, hard game feels like a bigger loss, while an S game is short enough
-- to drop and restart without much thought.
-- 84% of all games are played on S. Since these are game counts, a few heavy players can
-- push this up. The data also doesn't show whether players avoid M and L or never get
-- to them (S may be the default, or the bigger boards may be locked).
-- Even on S, more than a third of finished games are lost and about 40% of started games
-- never finish. For the board most players use, that seems hard, and it's worth checking
-- whether it plays a part in the low D1 retention (21.5%).
-- Next step: count how many players ever tried M or L, and look at the win rate of new
-- players' first few games on S.
