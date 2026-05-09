proc run_one {project_name top_name} {
    open_project -reset $project_name
    set_top $top_name

    add_files q5_kernel.cpp
    add_files -tb tb_q5.cpp

    open_solution -reset "solution1" -flow_target vivado

    set_part {xcvu13p-fsga2577-2-e}
    create_clock -period 25 -name default

    csim_design
    csynth_design

    close_project
}

run_one q5_simple_proj q5_simple
run_one q5_unroll_proj q5_unroll
run_one q5_partition_unroll_proj q5_partition_unroll

exit