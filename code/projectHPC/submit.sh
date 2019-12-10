#!/bin/bash

module load python/anaconda

if [ ! -d summary ]; then
    mkdir summary
fi

job1=$(sbatch --output="cache" getdata.sh)
job1=$(echo $job1 | sed 's/Submitted batch job //')

# parallel=$(ls pubg-match-deaths/deaths/kill_match*.csv | cut -d '_' -f 5 | cut -d '.' -f 1 | tr "\n" ',')

job2=$(sbatch --array=1-8 --output="cache" --dependency=afterany:$job1 python.sh --mem-per-cpu-2600M -n 4 --cpus-per-task=8)
job2=$(echo $job2 | sed 's/Submitted batch job //')

job3=$(sbatch --output="cache" --dependency=afterany:$job2 merge.sh)


