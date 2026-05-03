proc run_one {project_name top_name} {
    open_project -reset $project_name
    set_top $top_name

    add_files hw1_ops.cpp
    add_files -tb hw1_tb.cpp

    open_solution -reset "solution1" -flow_target vivado

    set_part {xcvu13p-fsga2577-2-e}
    create_clock -period 25 -name default

    csim_design
    csynth_design

    close_project
}

run_one hw1_vector_add vector_add
run_one hw1_vector_multiply vector_multiply
run_one hw1_matrix_add matrix_add
run_one hw1_matrix_multiply matrix_multiply

exit