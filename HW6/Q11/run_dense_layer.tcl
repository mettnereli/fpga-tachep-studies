proc run_one {project_name top_name} {
    open_project -reset $project_name
    set_top $top_name

    add_files dense_layer.cpp
    add_files -tb dense_layer_tb.cpp

    open_solution -reset "solution1" -flow_target vivado

    set_part {xcvu13p-fsga2577-2-e}
    create_clock -period 25 -name default

    csim_design
    csynth_design

    close_project
}

run_one dense_simple_proj dense_simple
run_one dense_optimized_proj dense_optimized

exit