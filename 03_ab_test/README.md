# Cookie Cats A/B test re-analysis

Cookie Cats is a mobile puzzle game where players sometimes hit a gate: they have to wait or pay before they can play on. In this test, new players were randomly put into one of two groups. In `gate_30` the first gate stays at level 30, and in `gate_40` it moves to level 40. I checked whether the move changed day 1 and day 7 retention.

Data: [Mobile Games A/B Testing, Cookie Cats](https://www.kaggle.com/datasets/yufengsui/mobile-games-ab-testing) on Kaggle, 90,189 players.

## Results

| | gate_30 | gate_40 | p-value |
|---|---|---|---|
| Players | 44,700 | 45,489 | 0.0086 (SRM check) |
| D1 retention | 44.8% | 44.2% | 0.074 |
| D7 retention | 19.0% | 18.2% | 0.0016 |

The groups are slightly uneven (49.6/50.4). The chi-square p-value is below 0.05 but above the stricter 0.001 cutoff many teams use for this check, so I treat it as borderline.

The D1 gap could be chance. That makes sense, because most players don't reach level 30 on their first day.

The D7 gap is unlikely to be chance. Moving the gate to level 40 lowered D7 retention by about 4% relative to gate_30.

## Decision

Keep the gate at level 30. Before calling it final I would check how players were assigned to groups, because of the borderline SRM result. The test also only measures retention. Gates usually affect revenue too, and revenue isn't in this data.

## Files

`cookie_cats_ab_test.ipynb`: the full analysis in Python (pandas, SciPy, statsmodels). Download `cookie_cats.csv` from Kaggle and put it next to the notebook to run it.
