# PUBG-data-analysis

### Yuchen Zeng, Naiqing Cai, Hao Pan, Qintao Ying

### 1. Data Description
19 GB PUBG Data collected from kaggle created by KP

#### 1.1 Aggregate
Each match's meta information and player statistics are summarized (as provided by pubg). It includes various aggregate statistics such as player kills, damage, distance walked, etc as well as metadata on the match itself such as queue size, fpp/tpp, date, etc.

#### 1.2 Deaths
Death that occurred within the 720k matches. Each row documents an event where a player has died in the match.

### 2. Goal
#### 2.1 Aggregate
1.Distance: ride distance vs rank; walk distance vs rank

2.Team Member: the relationship between team size and rank.

3.Kills: the relationship between kills and rank.

#### 2.2 Deaths
1.Maps (Erangel and Miramar): Death vs Map.

2.Weapon Comparison: Which kind of weapon is more powerful?

3.Duration: Average Player Damage vs. Average Survival Time (Linear Regression)
#### 2.3 Prediction
Predict Top10 based on player statistics.
#### 2.4 Strategy Analysis
Give some actionable suggestions for achieving a better rank.

### 3. Statistical Method and Computation
Linear Regression, Hypothesis Testing (one-way ANOVA)

HPC, R, Python
