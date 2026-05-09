open_project -reset hw5_ex1_proj
set_top hw5_ex1

add_files hw5_ex1.cpp
add_files -tb hw5_ex1_tb.cpp

open_solution -reset "solution1" -flow_target vivado

set_part {xcvu13p-fsga2577-2-e}
create_clock -period 25 -name default

csim_design
csynth_design

close_project
exit