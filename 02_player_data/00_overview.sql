-- Flood-It! dataset: first look at events and players
-- Source: firebase-public-project.analytics_153293282 (Google's public, obfuscated GA4 sample)

-- Query 1: Overall size of the dataset
-- Result: 5.7M events from 15,175 players over 114 days
SELECT
  COUNT(*) AS event_count,
  COUNT(DISTINCT user_pseudo_id) AS user_count,
  COUNT(DISTINCT event_date) AS day_count
FROM `firebase-public-project.analytics_153293282.events_*`;

-- Query 2: Event types, how often each happens and how many players trigger it
-- Result: 37 event types. The game has two modes: "quickplay" events dominate
-- (523K level starts vs. 74K in the standard mode). In quickplay, 42% of finished
-- levels end in a fail. Only 27 in-app purchases in total.
SELECT
  event_name,
  COUNT(*) AS event_count,
  COUNT(DISTINCT user_pseudo_id) AS user_count
FROM `firebase-public-project.analytics_153293282.events_*`
GROUP BY event_name
ORDER BY 2 DESC;
