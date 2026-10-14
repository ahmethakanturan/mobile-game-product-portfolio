-- Flood-It! dataset: what players do when they run out of extra steps
-- Source: firebase-public-project.analytics_153293282 (Google's public, obfuscated GA4 sample)

-- Query 1: Players who ran out of extra steps, watched a rewarded ad or made a purchase
-- Result:
--   1,193 players ran out of extra steps (no_more_extra_steps)
--   Of those, 292 (24.5%) watched a rewarded ad and 8 (0.7%) made a purchase
--   Across all 15,175 players, 354 watched an ad (2.3%) and 27 made a purchase (0.18%)

with user_count as( select
user_pseudo_id, countif(event_name='no_more_extra_steps')>0 as hit_limit, countif(event_name='ad_reward')>0 as watched_ad, countif(event_name='in_app_purchase')>0 as paid
FROM `firebase-public-project.analytics_153293282.events_*`
GROUP BY 1)
select countif(hit_limit=True) as hit_limit_count,
countif(watched_ad=True) as watched_ad_count,
countif(paid=True) as paid_count,
countif(hit_limit and watched_ad) as limit_then_ad,
countif(hit_limit and paid) as limit_then_paid
from user_count;

-- Method
-- One row per player with three yes/no flags: did they ever run out of extra steps,
-- ever get an ad reward, and ever make a purchase.
-- The query doesn't check the order of events. "limit_then_ad" means the player did both
-- at some point, not necessarily the ad right after running out.

-- Interpretation
-- Running out of steps looks like the main reason players watch ads. 82% of ad watchers
-- (292 of 354) also ran out of steps, and players who ran out watched ads at about
-- 10 times the overall rate.
-- Purchases work differently. Only 8 of the 27 buyers ever ran out of steps, so most
-- purchases happen for some other reason.
-- About 3 in 4 players who ran out of steps did neither. That is the moment a player most
-- needs help, and most of them move on without an ad or a purchase. I see this as the
-- biggest opportunity in this data.
-- One caveat: players who run out of steps are probably the ones who play the most, and
-- heavy players watch more ads and buy more anyway. Part of the 10x gap comes from who
-- these players are, not only from the moment itself.
-- The data has no prices, so I can't judge whether prices are too high. I would test the
-- offer at that moment instead, for example a cheap one-time pack or a clearer ad offer,
-- in an A/B test measuring ad views, purchases and D7 retention.
