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

run_one hw4_q5_simple q5_simple
run_one hw4_q5_interface q5_interface
run_one hw4_q5_pipeline q5_pipeline
run_one hw4_q5_no_partition q5_no_partition
run_one hw4_q5_complete_partition q5_complete_partition
run_one hw4_q5_cyclic_partition q5_cyclic_partition
run_one hw4_q5_block_partition q5_block_partition
run_one hw4_q5_reshape q5_reshape

exit