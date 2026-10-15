# Mobile Game Product Portfolio

Hands-on product work on casual mobile puzzle games: a game teardown,
player-data analysis in SQL, an A/B test re-analysis, and a feature
proposal with a test plan.

## Projects

| # | Project | What it shows | Status |
|---|---------|---------------|--------|
| 01 | [Game teardown: Search It](01_teardown/) | FTUE, core loop, monetization, LiveOps | Done |
| 02 | [Player data analysis (Flood-It!)](02_player_data/) | Retention, difficulty by board, what players do when they run out of moves | Done |
| 03 | [A/B test re-analysis (Cookie Cats)](03_ab_test/) | SRM check, z-tests, a ship decision | Done |
| 04 | [Feature proposal: show players what their coins are worth](04_feature_proposal/) | Problem framing, design, A/B test plan | Done |

Metric definitions used throughout the projects: [Metric glossary](00_metric_glossary.md)

## Highlights

- In Flood-It!, only 21.5% of new players come back on day 1 and 5.5% on day 7. Even the easiest board loses more than a third of finished games.
- Running out of moves is the main trigger for rewarded ads in Flood-It!, but 3 in 4 players who hit that moment neither watch an ad nor pay.
- In the Cookie Cats test, moving the first gate from level 30 to 40 lowered D7 retention from 19.0% to 18.2% (p = 0.0016). I'd keep the gate at 30.

## Tools
SQL (BigQuery), Python (pandas, SciPy, statsmodels), Power BI, Excel

## Data
- Flood-It! sample dataset: Google's public, obfuscated Firebase/GA4 export
- Cookie Cats A/B test: public dataset on Kaggle

## About me
Industrial Engineering graduate, Istanbul Technical University.
LinkedIn: https://www.linkedin.com/in/ahmet-hakan-turan-005294294/
