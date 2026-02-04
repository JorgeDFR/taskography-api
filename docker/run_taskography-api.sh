#!/bin/bash
set -euo pipefail

# ===============================
# Configuration
# ===============================
DATA="$HOME/data"

cd "$HOME/workspace"

python3 taskograpy-api/scripts/validate/loader.py --data-path $DATA/3dscenegraph

python3 scripts/validate/test_planners.py

#python3 scripts/benchmark/plan.py --domain-name taskographyv2tiny1 --planner FF