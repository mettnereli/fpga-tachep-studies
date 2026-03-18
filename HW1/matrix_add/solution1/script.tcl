############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project matrix_add
set_top matrix_add
add_files matrix_add.cpp
add_files -tb matrix_add_tb.cpp
open_solution "solution1"
set_part {xcvu13p-fsga2577-2-e}
create_clock -period 25 -name default
#source "./matrix_add/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
