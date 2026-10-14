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

-- Query 3: Average daily active users (DAU)
-- Result: about 518 players on an average day
WITH daily_active_users AS (
  SELECT
    event_date,
    COUNT(DISTINCT user_pseudo_id) AS daily_users
  FROM `firebase-public-project.analytics_153293282.events_*`
  GROUP BY event_date
)
SELECT ROUND(AVG(daily_users)) AS avg_dau
FROM daily_active_users;

-- Query 4: Monthly active users (MAU) and how many days of each month the data covers
-- Result: July 5,103, August 4,667, September 6,065. June (19 days) and October (3 days)
-- are only partly covered, so they aren't comparable with full months.
-- Stickiness (DAU/MAU) is roughly 518 / 5,280 = about 10%, so a typical monthly player
-- opens the game on about 3 days a month.
SELECT
  SUBSTR(event_date, 1, 6) AS month,
  COUNT(DISTINCT user_pseudo_id) AS mau,
  COUNT(DISTINCT event_date) AS days_in_data
FROM `firebase-public-project.analytics_153293282.events_*`
GROUP BY month
ORDER BY month;
