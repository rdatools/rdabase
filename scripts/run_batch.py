#!/usr/bin/env python3

"""
RUN A BATCH OF COMMANDS

To run:

$ scripts/run_batch.py

"""

from typing import List
import os
from rdabase import ENSEMBLE_STATES

process: List[str] = ENSEMBLE_STATES
# process = ["NC", "NJ"]
exclude: List[str] = []

for xx in process:
    if xx in exclude:
        continue

    command: str = f"scripts/extract_shape_data.py -s {xx}"
    command = command.format(xx=xx)
    print(command)
    os.system(command)


### END ###
