# Search It teardown

Search It is a hidden object game by Leap Games. I started a fresh install on 13 October 2026 and logged every level up to level 9 (time, boosters, offers, ads, events). I also logged levels 15 to 18 on my own account, which I've played for several weeks. Store prices are from the US App Store.

## Core loop

Open a level, find 50 objects in a busy scene by panning and zooming, earn 50 coins (or 150 if you watch a rewarded ad), move on. Levels took me 3.5 to 6 minutes. The object count stays at 50, so difficulty comes from somewhere else: later scenes are more crowded and the objects blend into the background more. Some levels are marked "hard" and pay double coins.

## First session (levels 1 to 9)

The game teaches by playing, not by reading. Level 1 asks for a single object, then makes you use the magnifier once. The compass gets the same forced tutorial in level 4, after the 20th object, and in my case it found 14 objects in a row.

For the first six levels there is no home screen. Each level runs straight into the next, which keeps a new player moving. The home screen first shows up after level 6, and its job seems to be introducing the Mushroom Hunt event.

The first really hard level is level 6, right after both boosters have been taught. The rating prompt comes at the start of level 4, after three easy wins, which is a sensible moment to ask. Forced ads start after level 8, once the player has had a smooth first session.

From the first launch the home screen shows locks at level 7 (a mushroom) and level 25 (a map), so there is a goal before you've played a single level.

Two things I'd question. From level 5 on, the last one or two objects took most of my time, and that is where I got bored. And after level 7 there is no way back to the home screen, only "continue", so when I wanted to stop I just closed the app.

## Economy

| Item | How you get it |
|---|---|
| Coins | 300 at start, 50 per level (100 on hard levels), x3 with a rewarded ad. Hidden coin bubbles give 50, x2 with an ad. A daily wheel gives one free spin and up to five more for ads. |
| Compass | 500 coins or a rewarded ad. The same screen offers 200 coins per ad, up to three times. |
| Magnifier | A rewarded ad when you run out. As far as I could tell, it can't be bought with coins in a level. |

Without ads, a compass costs 10 normal levels of coins. With the x3 ad it's closer to 3.

The game never says what coins are for until you run out of a booster. Three levels into the fresh install I still didn't know. On level 17 the start button said "x2" and I only understood it meant double coins after finishing the level. An achievement ("quick hands", for finding objects fast) also popped up without saying what it gave me.

## Ads and purchases

| Type | When | Price |
|---|---|---|
| Rewarded ads | x3 coins at level end, x2 on coin bubbles, boosters, extra wheel spins, 200 coins on the compass screen | Free |
| Forced ads | After most levels from level 8 on. After a level where I watched a rewarded ad, none appeared. | Free |
| No Ads | On the home screen from the first launch, and offered right after a forced ad. Removes forced ads and banners; rewarded ads stay. | $8.99 (500 TL in Turkey) |
| Magnifier packs | Store | $0.99 to $54.99 |
| Coin packs | Store | $9.99 to $99.99 |

Showing No Ads right after a forced ad is well timed, since that's when ads feel most annoying. By level 15 the forced ads were starting to bother me, which is exactly the point.

Skipping the forced ad after a rewarded one also looks deliberate. It rewards players who choose to watch.

My own behaviour says a lot about the coin problem. Across both accounts I watched rewarded ads three times: twice for a magnifier on the last objects of a level, and once for 200 coins so I could buy a compass. I never took the x3 coin offer. I watched when the reward had a clear, immediate use, and skipped it when it didn't.

## LiveOps

Mushroom Hunt unlocks after level 6 and runs for about 2 days. It has 15 levels, with 3 hidden mushrooms in each scene. On the fresh install the first event level paid 20 coins, and later levels gave a magnifier plus 15 coins. The grand prize is 2 magnifiers.

The event adds an extra goal inside the normal levels without new content, which is cheap for the team. The early rewards feel small next to the 50 coins a level already pays, though, and nothing helps you find a missing mushroom.

The daily wheel is a second, smaller habit loop: one free spin a day, more for ads. The next unlock is a map at level 25, which I haven't reached yet.

To judge an event like Mushroom Hunt I'd look at the share of eligible players who find at least one mushroom, how many finish all 15 levels, sessions per day during the event, and D1 and D7 retention compared with a holdout group that doesn't see the event.

## Compared with Hidden Tales

| | Search It | Hidden Tales |
|---|---|---|
| Subscription | None in the store | Hidden Club, $2.99 a week or $7.99 a month |
| No Ads | $8.99 | $7.99 |
| Most expensive pack | $99.99 coin pack | $7.99 |
| US App Store rating | 4.9 (37 ratings) | 4.9 (about 20k ratings) |

Hidden Tales, Leap's bigger hidden object game, earns from ads and a subscription. Search It is newer and leans on ads, boosters and large coin packs instead.

## What I would test

1. Show what coins are worth at the end of each level, for example a bar filling up toward the next compass. I develop this in the [feature proposal](../04_feature_proposal/).
2. Help with the last few objects, the point where I got bored, and also the point where I watched ads for boosters.
3. Explain the "x2" on hard levels before the level starts, not after.
