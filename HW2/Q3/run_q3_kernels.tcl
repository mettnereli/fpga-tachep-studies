proc run_one {project_name top_name} {
    open_project -reset $project_name
    set_top $top_name

    add_files q3_kernels.cpp
    add_files -tb q3_kernels_tb.cpp

    open_solution -reset "solution1" -flow_target vivado

    set_part {xcvu13p-fsga2577-2-e}
    create_clock -period 25 -name default

    csim_design
    csynth_design

    close_project
}

run_one hw2_q3_add_int add_int
run_one hw2_q3_add_long add_long
run_one hw2_q3_add_longlong add_longlong
run_one hw2_q3_add_ap_int add_ap_int
run_one hw2_q3_add_ap_uint add_ap_uint
run_one hw2_q3_add_ap_fixed add_ap_fixed

exit