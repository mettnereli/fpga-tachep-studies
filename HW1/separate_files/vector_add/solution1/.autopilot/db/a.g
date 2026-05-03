#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /scratch/emettner/fpga-tachep-studies/HW1/vector_add/solution1/.autopilot/db/a.g.bc ${1+"$@"}
