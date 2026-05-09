open_project -reset vec_add_project
set_top vec_add

add_files vec_add.cpp
add_files -tb vec_add_tb.cpp

open_solution -reset "solution1" -flow_target vivado

set_part {xcvu13p-fsga2577-2-e}
create_clock -period 25 -name default

csim_design
csynth_design

close_project
exit
