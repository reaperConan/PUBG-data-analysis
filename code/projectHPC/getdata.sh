#!/bin/bash
# module load python/anaconda
# conda create -p /workspace/jgillett/myEnvironment python=3.6.7 torchvision scipy
# source activate /workspace/jgillett/myEnvironment
# python --version
# pip install kaggle
# kaggle datasets download skihikingkevin/pubg-match-deaths

if [ ! -z pubg-match-deaths.tar ];then
    #wget -x --load-cookies cookies.txt https://www.kaggle.com/skihikingkevin/pubg-match-deaths/download
    #wget https://1001-2.filemail.com/api/file/get?filekey=HvwPKuC6z9xquyE-_lx9YVd763fGm9kpxdl81QVBhDkGqZaeVQjiYeQas13h4ibV44_lh7uxhw
    wget --ftp-user=nhptavewfwofxij --ftp-password=filemail ftp://nhptavewfwofxij:filemail@1001.filemail.com:21/pubg-match-deaths.tar
    echo $(ls)
    # cp ~/Desktop/605/project/pubg-match-deaths.tar .
fi

# unzip pubg-match-deaths.zip
tar xvf pubg-match-deaths.tar 
if [ ! -z summary ];then
    mkdir summary
fi

n=$(echo $(($(cat pubg-match-deaths/deaths/kill_match_stats_final_2.csv | wc -l) /4)))
cat pubg-match-deaths/deaths/kill_match_stats_final_2.csv | tail +$n > pubg-match-deaths/deaths/kill_2.csv
cat pubg-match-deaths/deaths/kill_match_stats_final_2.csv | head -n $n > pubg-match-deaths/deaths/kill_3.csv
cat pubg-match-deaths/deaths/kill_match_stats_final_2.csv | head -n $(($n*2)) | tail +$n > pubg-match-deaths/deaths/kill_1.csv
cat pubg-match-deaths/deaths/kill_match_stats_final_2.csv | head -n $(($n*3)) | tail +$(($n*2)) > pubg-match-deaths/deaths/kill_7.csv

n=$(echo $(($(cat pubg-match-deaths/deaths/kill_match_stats_final_3.csv | wc -l) /3)))
cat pubg-match-deaths/deaths/kill_match_stats_final_3.csv | tail +$n > pubg-match-deaths/deaths/kill_4.csv
cat pubg-match-deaths/deaths/kill_match_stats_final_3.csv | head -n $n > pubg-match-deaths/deaths/kill_5.csv

cat pubg-match-deaths/deaths/kill_match_stats_final_3.csv | head -n $(($n*2)) | tail +$n > pubg-match-deaths/deaths/kill_6.csv
cat pubg-match-deaths/deaths/kill_match_stats_final_3.csv | head -n $(($n*3)) | tail +$(($n*2)) > pubg-match-deaths/deaths/kill_8.csv



