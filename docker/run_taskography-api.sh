#!/bin/bash
set -euo pipefail

# ===============================
# Configuration
# ===============================
DATA="$HOME/data"

cd "$HOME/workspace"

python3 taskograpy-api/scripts/validate/loader.py --data-path $DATA/3dscenegraph


python3 scripts/validate/loader.py --data-path /home/user/data/3dscenegraph

python3 scripts/benchmark/plan.py --domain-name taskographyv2tiny1 --planner FF

python3 scripts/benchmark/plan.py --domain-name taskographyv2tiny1 --planner Delfi --limit 1 --skip-train --log-dir /home/user/workspace/results

PLANNERS = [
  'FF',
  'FF-X',
  'FD-lama-first',
  'FD-seq-opt-lmcut',
  'Cerberus-seq-sat',
  'Cerberus-seq-agl',
  'DecStar-agl-decoupled',
  'DecStar-opt-decoupled', # Does not work
  'lapkt-bfws',
  'Delfi',
]
# TODO: SatPlan, PLOI

# PDDLGym Taskography benchmark domain names
BENCHMARK_DOMAINS = [
  ## Full Domains
  # Rearrangment(k)
  "taskographyv2tiny1",
  "taskographyv2medium1",
  "taskographyv2tiny2",
  "taskographyv2medium2",
  "taskographyv2tiny5",
  "taskographyv2medium5",
  "taskographyv2tiny10",
  "taskographyv2medium10",
  # Courier(n, k)
  "taskographyv3tiny5bagslots5",
  "taskographyv3medium5bagslots5",
  "taskographyv3tiny10bagslots3",
  "taskographyv3medium10bagslots3",
  "taskographyv3tiny10bagslots5",
  "taskographyv3medium10bagslots5",
  "taskographyv3tiny10bagslots7",
  "taskographyv3medium10bagslots7",
  "taskographyv3tiny10bagslots10",
  "taskographyv3medium10bagslots10",
  # Lifted Rearrangement(k)
  "taskographyv4tiny5",
  "taskographyv4medium5",
  # Lifted Courier(n, k)
  "taskographyv5tiny5bagslots5",
  "taskographyv5medium5bagslots5",
  ## Scrubbed Domains
  # Rearrangement(k)
  "taskographyv2tiny1scrub",
  "taskographyv2medium1scrub",
  "taskographyv2tiny2scrub",
  "taskographyv2medium2scrub",
  "taskographyv2tiny10scrub",
  "taskographyv2medium10scrub",
  # Courier(n, k)
  "taskographyv3tiny10bagslots10scrub",
  "taskographyv3medium10bagslots10scrub",
  "taskographyv3tiny10bagslots3scrub",
  "taskographyv3medium10bagslots3scrub",
  "taskographyv3tiny10bagslots5scrub",
  "taskographyv3medium10bagslots5scrub",
  "taskographyv3tiny10bagslots7scrub",
  "taskographyv3medium10bagslots7scrub",
  # Lifted Rearrangement(k)
  "taskographyv4tiny5scrub",
  "taskographyv4medium5scrub",
  # Lifted Courier(n, k)
  "taskographyv5tiny5bagslots5scrub",
  "taskographyv5medium5bagslots5scrub",
]