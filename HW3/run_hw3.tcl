proc run_one {project_name top_name} {
    open_project -reset $project_name
    set_top $top_name

    add_files hw3_kernels.cpp
    add_files -tb hw3_kernels_tb.cpp

    open_solution -reset "solution1" -flow_target vivado

    set_part {xcvu13p-fsga2577-2-e}
    create_clock -period 25 -name default

    csim_design
    csynth_design

    close_project
}

run_one hw3_vector_mult_bram vector_mult_bram
run_one hw3_vector_mult_partition vector_mult_partition

run_one hw3_matrix_mult_bram matrix_mult_bram
run_one hw3_matrix_mult_partition_one_dim matrix_mult_partition_one_dim
run_one hw3_matrix_mult_partition_both_dims matrix_mult_partition_both_dims

exit