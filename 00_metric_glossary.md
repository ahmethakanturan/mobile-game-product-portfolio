# Metric glossary

The main metrics I use in this portfolio. Where I could, I used real numbers from the Flood-It and Cookie Cats data or from my own Magic Sort playthrough.

## Keeping players

### Retention (D1, D7, D30)

The share of players who come back a certain number of days after they install the game. D1 is the next day, D7 is a week later and D30 is a month later.

Formula: players from an install group who are active on day N / all players in that group

Example: In Cookie Cats, 44.5% of players came back on day 1 and only 18.6% on day 7. More than half of the players who returned on day 1 were gone within a week. D30 will be calculated on Flood-It in project 02.

Why it matters: A player who leaves can't spend money or watch ads, so every other metric depends on retention. Each day tells you something different. D1 shows if the first session worked, D7 shows if the core loop keeps people interested and D30 shows if there is enough to do in the long run.

### Churn

The share of players who stop playing. Players don't announce that they are leaving, so games usually count someone as churned after a set number of days without playing, for example 7 or 14.

Formula: players who became inactive in a period / players who were active at the start of that period

Example: In Flood-It, 2,635 of 15,175 players uninstalled the game, about 17%. Real churn is higher because most players who quit just leave the game on their phone, and uninstalls are only tracked on Android. I will measure churn by inactivity in project 02.

Why it matters: Keeping a player is much cheaper than finding a new one. Knowing when and where players quit shows what to fix first.

## Player activity

### DAU (daily active users)

The number of different players who open the game on a given day.

Formula: count of unique players for each day

Example: Flood-It had about 518 players on an average day over its 114 days of data.

Why it matters: It shows how big the daily audience is. Daily revenue grows with it, since daily revenue = DAU × ARPDAU.

### MAU (monthly active users)

The number of different players who open the game at least once in a month.

Formula: count of unique players for each month

Example: The Flood-It data runs from 12 June to 3 October 2018. MAU was 5,103 in July, 4,667 in August and 6,065 in September. June and October are only partly covered, so I left them out.

Why it matters: It shows the total size of the player base. Comparing months shows if the game is growing or shrinking, and you need it to calculate stickiness.

### Stickiness (DAU/MAU)

How often players come back during a month. It is the share of a month's players who play on an average day.

Formula: average DAU / MAU

Example: In Flood-It, about 518 daily players against about 5,280 monthly players gives roughly 10%. A typical monthly player opened the game on about 3 days of the month. This is an estimate. A more exact version divides each month's own average DAU by that month's MAU.

Why it matters: High stickiness means players have made the game a habit. Those are the players who keep playing, watching ads and spending.

### Session and session length

A session is one visit, from opening the game to leaving it. Session length is how long that visit lasts.

Formula: sessions per player = total sessions / players. Average session length = total time played / total sessions

Example: In Flood-It, 12,261 players started 74,353 sessions, about 6 sessions per player over the whole period. I will calculate session length in project 02.

Why it matters: Casual puzzle games are built for short visits many times a day. A drop in sessions or session length is often an early warning that shows up before retention falls.

## Game structure

### FTUE (first time user experience)

Everything a new player sees in their first session or first few sessions. That includes the tutorial, the first levels and the first rewards.

How it's measured: tutorial completion rate, share of new players who reach a certain level, D1 retention

Example: In Magic Sort, I saw no ads in the first 24 levels. My first loss came at level 21, and the game asked me to rate it right after a level marked as super hard. The start of the game is smooth and ad free.

Why it matters: Most of the players a game loses are lost in the first session. If the start is weak, everything after it suffers.

### Core loop

The short cycle of actions a player repeats over and over.

How it's measured: there is no single number. You find it by playing, and you see if it works through session length, sessions per day and retention.

Example: In Magic Sort you start a level, sort the colours into bottles, win, earn coins and move on to the next level.

Why it matters: If the core loop isn't fun, events and rewards can't save the game.

### Meta

The long term progress around the core loop that gives players a reason to keep going, like maps, areas to unlock or collections.

How it's measured: how far players get in the meta, for example areas unlocked, and how that relates to D30 retention

Example: Magic Sort groups its levels into themed areas. A new area starts at level 20 and runs to level 39.

Why it matters: The core loop keeps a single session going. The meta brings players back for weeks.

### Funnel and drop-off

A funnel is a series of steps players go through. Drop-off is the share of players lost at each step.

Formula: step conversion = players who reach the next step / players at this step. Drop-off = 1 - step conversion

Example: In Flood-It quickplay, 10,166 players started a level, 8,168 finished at least one (80%) and 5,676 won at least one, which is 56% of those who started.

Why it matters: It shows exactly where players get stuck, so the team knows which step to fix first.

### Conversion

The share of players who do a target action, like making a first purchase or watching a rewarded ad.

Formula: players who did the action / players who could have done it

Example: In Flood-It, 354 of 15,175 players watched a rewarded ad (2.3%) and 27 made a purchase (0.18%).

Why it matters: A free game makes money by turning players into ad watchers or buyers.

### LiveOps

Running the game as a live service after launch. This means time limited events, seasonal themes, special offers and tournaments.

How it's measured: how many players join an event, and how retention and revenue during events compare to normal days

Example: I will fill this in from my 14 day Magic Sort log in project 01.

Why it matters: Events give players a new reason to come back without building new levels from scratch. Top puzzle games earn a large part of their revenue during events.

## Money

### Payer rate

The share of players who buy something at least once.

Formula: paying players / active players in a period

Example: In Flood-It, 27 of 15,175 players paid, about 0.18%. Almost all of the game's revenue must come from ads.

Why it matters: It tells you if a game earns from purchases or from ads, and how big the paying group is.

### ARPDAU (average revenue per daily active user)

How much the game earns per active player per day, from both purchases and ads.

Formula: daily revenue / DAU

Example: I will calculate this on Flood-It in project 02, since purchase events include a revenue value.

Why it matters: It lets you compare how well the game earns across days, countries or versions, no matter how many players there are.

### ARPPU (average revenue per paying user)

How much each paying player spends on average.

Formula: revenue / paying players

Example: I will calculate this on Flood-It in project 02.

Why it matters: Together with payer rate it explains revenue. Revenue = active players × payer rate × ARPPU. The same revenue can come from many small buyers or a few big ones, and those need different fixes.

### LTV (lifetime value)

The total revenue one player is expected to bring over their whole time in the game.

Formula: a simple estimate is ARPDAU × the average number of days a player stays. Teams usually track total revenue per install group over time, for example at day 7, 30 and 90.

Example: I will estimate this on Flood-It in project 02 if the revenue data allows it.

Why it matters: It tells the company how much it can pay to get a new player. If LTV is higher than the cost of an install, buying users is profitable.

## A/B testing

### A/B test

An experiment where players are randomly split into groups that see different versions of the game. Because the split is random, the only real difference between the groups is the change itself.

Example: In Cookie Cats, players were randomly put into gate_30, where the first gate is at level 30, or gate_40, where it was moved to level 40. Then their retention was compared.

Why it matters: Comparing before and after an update mixes in other things like holidays or ad campaigns. A random split avoids that.

### p-value

If the change really had no effect, the p-value is the chance of seeing a difference this big just by luck. A small p-value, usually below 0.05, means luck is an unlikely explanation.

Example: I will calculate it on Cookie Cats in project 03.

Why it matters: It tells you if a difference is likely to be real. It does not tell you how big or how important the difference is. With 90,000 players even a tiny difference can get a small p-value, so you always look at the size of the difference too.

### MDE (minimum detectable effect)

The smallest difference a test can reliably catch with its number of players.

Example: I will calculate it for the Cookie Cats sample size in project 03.

Why it matters: It tells you how many players and how much time a test needs before you start. It also matters after the test. If a test finds no difference, that doesn't prove the change has no effect. The test may have been too small to see it.

### SRM (sample ratio mismatch)

When the sizes of the test groups are further from the planned split than luck can explain.

Example: Cookie Cats has 44,700 players in gate_30 and 45,489 in gate_40 instead of an even 50/50 split. I will test if this is a real mismatch in project 03.

Why it matters: A mismatch usually means something broke in how players were assigned or tracked. Then the groups may no longer contain the same kind of players, and you can't trust any result from the test. That's why it is the first thing to check.
