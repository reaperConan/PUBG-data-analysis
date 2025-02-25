#!/bin/bash

module load python/anaconda

#job1=$(sbatch --output="cache" getdata.sh)
#job1=$(echo $job1 | sed 's/Submitted batch job //')

# parallel=$(ls pubg-match-deaths/deaths/kill_match*.csv | cut -d '_' -f 5 | cut -d '.' -f 1 | tr "\n" ',')

# job2=$(sbatch --array=${parallel::-1} --output="cache" --dependency=afterany:$python.sh)
#job2=$(sbatch --array=0-4 --output="cache" --dependency=afterany:$python.sh)
#job2=$(echo $job2 | sed 's/Submitted batch job //')
sbatch --array=0-1 --output="cache" python.sh --mem-per-cpu-2600M

