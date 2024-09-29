#!/bin/bash

scripts/extract_census.py -s MA
scripts/extract_elections.py -s MA --zipped
scripts/join_data.py -s MA
scripts/extract_shape_data.py -s MA

scripts/extract_census.py -s MN
scripts/extract_elections.py -s MN --zipped
scripts/join_data.py -s MN
scripts/extract_shape_data.py -s MN

scripts/extract_census.py -s MO
scripts/extract_elections.py -s MO --zipped
scripts/join_data.py -s MO
scripts/extract_shape_data.py -s MO

scripts/extract_census.py -s WA
scripts/extract_elections.py -s WA --zipped
scripts/join_data.py -s WA
scripts/extract_shape_data.py -s WA

scripts/extract_census.py -s NY
scripts/extract_elections.py -s NY --zipped
scripts/join_data.py -s NY
scripts/extract_shape_data.py -s NY

scripts/extract_census.py -s CA
scripts/extract_elections.py -s CA --zipped
scripts/join_data.py -s CA
scripts/extract_shape_data.py -s CA

# Missed on first run
scripts/extract_census.py -s TN
scripts/extract_elections.py -s TN --zipped
scripts/join_data.py -s TN
scripts/extract_shape_data.py -s TN

