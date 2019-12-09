#!/bin/bash

echo $(ls summary)
cat summary/erangel* > summary/erangel.csv
cat summary/mirama* > summary/mirama.csv
python merge.py
