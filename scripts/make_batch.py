#!/usr/bin/env python3

"""
MAKE A BATCH OF COMMANDS

To run:

$ scripts/make_batch.py

"""

from typing import List
import os

print(f"#!/bin/bash")
print()

process: List[str] = ["MA", "MN", "MO", "WA", "CA", "NY"]
exclude: List[str] = []

for xx in process:
    if xx in exclude:
        continue

    command: str = f"scripts/preprocess_state.py -s {xx} --zipped --nograph"
    command = command.format(xx=xx)
    print(command)
    os.system(command)
    print()


### END ###
