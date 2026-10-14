# Flood-It! player data analysis

SQL analysis of event data from a real mobile puzzle game, done in BigQuery. I wanted to find out where new players drop off, and what happens at the moments that matter for retention and revenue.

## Data

Flood-It! is a casual puzzle game where you try to fill the whole board with one colour in a limited number of moves. Google publishes a sample of its Firebase/GA4 event data (`firebase-public-project.analytics_153293282`). The sample covers 114 days (12 June to 3 October 2018), 15,175 players and 5.7M events. User IDs are obfuscated.

## Findings

1. Most new players don't come back. D1 retention is 21.5% and D7 is 5.5%. D7 is about a quarter of D1, so most players who return the next day are gone within a week.

2. The board most people play on is already fairly hard. Quickplay has three board sizes (S, M and L). 84% of games are played on S, and 37.5% of finished S games end in a fail. On L the fail rate goes up to 69%.

3. More than a third of started games never finish. About 37% of quickplay games end with neither a win nor a fail. The game logged 122k board resets, which could explain most of that gap, so players seem to restart far more often than they walk away mid-game.

4. Running out of moves drives ad views, but most players leave at that point. 82% of players who watched a rewarded ad had also run out of extra steps. Even so, 3 in 4 players who ran out of steps neither watched an ad nor paid. Purchases look unrelated to this moment: only 8 of the 27 buyers ever ran out of steps.

## What I would test next

- An easier start for new players, for example more moves on their first few S boards. I would run it as an A/B test and compare D1 and D7 retention.
- A better offer when a player runs out of steps, such as a clearer rewarded-ad prompt or a cheap one-time pack. Success would mean more ad views or purchases without lower D7 retention.
- Before either test, I would check how many players ever try M or L and how new players do in their first games. That would show whether difficulty or board choice is the bigger issue.

## Files

| File | What it does |
|---|---|
| `00_overview.sql` | Dataset size, event types, DAU and MAU |
| `01_retention.sql` | D1 and D7 retention for new players |
| `02_board_difficulty.sql` | Starts, wins, fails and quits for each board size |
| `03_monetization.sql` | What players do when they run out of extra steps |

## Limitations

The board analysis counts games, not players, so a few heavy players can move the numbers. All findings are correlations, which is why the next steps are A/B tests. The data is from 2018 and obfuscated, so I treat the numbers as practice material, not as benchmarks for today's games.
