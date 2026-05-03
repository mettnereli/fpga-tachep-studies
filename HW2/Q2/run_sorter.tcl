open_project -reset hw2_q2_sorter
set_top sorter

add_files sorter.cpp
add_files -tb tb_sorter.cpp

open_solution -reset "solution1" -flow_target vivado

set_part {xcvu13p-fsga2577-2-e}
create_clock -period 25 -name default

csim_design
csynth_design

close_project
exit