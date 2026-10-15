# Feature proposal: show players what their coins are worth

A small change to Search It's level-end screen, with an A/B test plan.

## The problem

Every level in Search It pays 50 coins, and a rewarded ad triples that to 150. Coins buy compasses at 500 each. The game never says this, though. You only find out what coins are for when a booster runs out in the middle of a level.

On my fresh install I still didn't know what coins were for after three levels, so the x3 offer meant nothing to me and I skipped it every time. Tripling a number with no visible value isn't worth 30 seconds of an ad.

I did watch rewarded ads three times: twice for a magnifier on the last objects of a level, and once for 200 coins so I could buy a compass. So I'm not against ads. I watched when the reward had a clear use and skipped when it didn't.

The Flood-It data points the same way. Running out of moves was the main trigger for rewarded ads there, but 3 in 4 players who hit that moment neither watched an ad nor paid. When value only shows up at the moment of need, most players are already on their way out.

Hypothesis: if players can see their coins as progress toward the next booster, more of them will take the x3 ad at the end of a level, and more will have a booster ready when they get stuck.

## The change

- On the level-end screen, under the coin reward, show a bar: "350 / 500 to your next compass".
- On the x3 button, show where the bar would land: "Watch an ad: 450 / 500".
- When the bar fills, let the player buy the compass right there.
- The first time coins appear (level 1), add one line: "Save coins to buy compasses."

Prices and rewards stay the same. Only the screen changes, so it's cheap to build. It also suits players like me who don't want to feel like they are cheating: nothing is pushed during a level, and the player decides when to use what they've saved.

## A/B test plan

| | |
|---|---|
| Who | New installs only, split 50/50 at random on install |
| Control | Current level-end screen |
| Variant | Level-end screen with the coin bar and the level 1 line |
| Primary metric | Share of players who watch at least one level-end x3 ad in their first 3 days |
| Secondary metrics | Rewarded ads per daily active user, boosters used per player, payer rate |
| Guardrails | D1 and D7 retention, levels per session, revenue from magnifier and coin packs |

I'd start with an SRM check (does the 50/50 split hold?) before reading any result. The Cookie Cats test showed why: its split was off just enough to raise questions.

**Sample size.** I don't know the real opt-in rate, so I assume 10% of new players take an x3 ad in their first 3 days. To detect a lift from 10% to 11% at 5% significance and 80% power, each group needs about 15,000 players. A bigger lift, 10% to 12%, needs about 3,800 per group. Search It's daily installs then set the test length. Either way I'd run it for at least 14 days, so both weekly cycles are covered and the D7 guardrail has time to come in.

**Decision rule.** Ship if the primary metric goes up significantly and D7 retention doesn't drop by more than 0.5 points. If ad opt-in goes up but D7 drops, don't ship and look at whether players are tiring of ads.

## Risks

- More ad views could wear players out. The retention and levels-per-session guardrails are there for this.
- Players who save up for compasses might buy fewer coin or magnifier packs. Pack revenue is a guardrail for that reason.
- New players may react differently from players at level 50. I'd split the results by level band before deciding.

## Next idea: help with the last few objects

In my playthrough, the last one or two objects of a level took most of the time. That's where I got bored and closed the app, and also where I watched ads for a magnifier. A second test could offer a light hint (for example, highlighting the area an object is in) only when a player has gone a minute without finding anything and has three or fewer objects left. The first hint each day would be free and later ones would cost an ad. The main metrics would be level completion and D1 retention.
