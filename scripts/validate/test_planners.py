import os
from pddlgym_planners import _SATISFICING, _OPTIMAL

pddl_domain = 'taskographyv2tiny1'
planners = list(_SATISFICING.keys()) + list(_OPTIMAL.keys())

log_dir = '/home/user/taskography-api/.results'
skip_train = True
limit = 20

for planner in planners:
    print('Running planner:', planner)
    expid = f"{pddl_domain}_{planner}"

    cmd = (
        f"python3 scripts/benchmark/plan.py "
        f"--domain-name {pddl_domain} "
        f"--planner {planner} "
        f"--log-dir {log_dir} "
        f"--expid {expid}"
    )

    if skip_train:
        cmd += " --skip-train"

    if limit > 0:
        cmd += f" --limit {limit}"

    print("Command:", cmd)
    os.system(cmd)

# PLANNERS = [
#   'FF',
#   'FF-X',
#   'FD-lama-first',
#   'FD-seq-opt-lmcut',
#   'Cerberus-seq-sat',
#   'Cerberus-seq-agl',
#   'DecStar-agl-decoupled',
#   'DecStar-opt-decoupled',
#   'lapkt-bfws',
#   'Delfi',
# ]

# BENCHMARK_DOMAINS = [
#   ## Full Domains
#   # Rearrangment(k)
#   "taskographyv2tiny1",
#   "taskographyv2medium1",
#   "taskographyv2tiny2",
#   "taskographyv2medium2",
#   "taskographyv2tiny5",
#   "taskographyv2medium5",
#   "taskographyv2tiny10",
#   "taskographyv2medium10",
#   # Courier(n, k)
#   "taskographyv3tiny5bagslots5",
#   "taskographyv3medium5bagslots5",
#   "taskographyv3tiny10bagslots3",
#   "taskographyv3medium10bagslots3",
#   "taskographyv3tiny10bagslots5",
#   "taskographyv3medium10bagslots5",
#   "taskographyv3tiny10bagslots7",
#   "taskographyv3medium10bagslots7",
#   "taskographyv3tiny10bagslots10",
#   "taskographyv3medium10bagslots10",
#   # Lifted Rearrangement(k)
#   "taskographyv4tiny5",
#   "taskographyv4medium5",
#   # Lifted Courier(n, k)
#   "taskographyv5tiny5bagslots5",
#   "taskographyv5medium5bagslots5",
#   ## Scrubbed Domains
#   # Rearrangement(k)
#   "taskographyv2tiny1scrub",
#   "taskographyv2medium1scrub",
#   "taskographyv2tiny2scrub",
#   "taskographyv2medium2scrub",
#   "taskographyv2tiny10scrub",
#   "taskographyv2medium10scrub",
#   # Courier(n, k)
#   "taskographyv3tiny10bagslots10scrub",
#   "taskographyv3medium10bagslots10scrub",
#   "taskographyv3tiny10bagslots3scrub",
#   "taskographyv3medium10bagslots3scrub",
#   "taskographyv3tiny10bagslots5scrub",
#   "taskographyv3medium10bagslots5scrub",
#   "taskographyv3tiny10bagslots7scrub",
#   "taskographyv3medium10bagslots7scrub",
#   # Lifted Rearrangement(k)
#   "taskographyv4tiny5scrub",
#   "taskographyv4medium5scrub",
#   # Lifted Courier(n, k)
#   "taskographyv5tiny5bagslots5scrub",
#   "taskographyv5medium5bagslots5scrub",
# ]