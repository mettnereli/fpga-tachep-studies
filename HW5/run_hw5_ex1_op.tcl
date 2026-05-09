open_project -reset hw5_ex1_op_proj
set_top hw5_ex1_op

add_files hw5_ex1_op.cpp
add_files -tb hw5_ex1_op_tb.cpp

open_solution -reset "solution1" -flow_target vivado

set_part {xcvu13p-fsga2577-2-e}
create_clock -period 25 -name default

csim_design
csynth_design

close_project
exit