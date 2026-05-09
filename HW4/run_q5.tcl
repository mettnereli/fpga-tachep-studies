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
run_one q5_bram_interface_proj q5_bram_interface
run_one q5_pipeline_proj q5_pipeline
run_one q5_complete_partition_proj q5_complete_partition
run_one q5_cyclic_partition_proj q5_cyclic_partition
run_one q5_block_partition_proj q5_block_partition
run_one q5_reshape_proj q5_reshape

exit