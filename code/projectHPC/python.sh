#!/bin/bash

n=$SLURM_ARRAY_TASK_ID

# cd pubg-match-deaths
# echo $(ls deaths)
# head pubg-match-deaths/deaths/kill_match_stats_final_$n.csv | head
#cat pubg-match-deaths/deaths/kill_$n.csv 

# cd ..
# cat pubg-match-deaths/deaths/kill_match_stats_final_$n.csv | cut -d, -f 1,2,4,5,6,11,12 1
echo $(ls pubg-match-deaths/deaths)
python weapon_summary.py $n 
