set SynModuleInfo {
  {SRCNAME matrix_mult_partition_both_dims MODELNAME matrix_mult_partition_both_dims RTLNAME matrix_mult_partition_both_dims IS_TOP 1
    SUBMODULES {
      {MODELNAME matrix_mult_partition_both_dims_mul_32s_32s_32_1_1 RTLNAME matrix_mult_partition_both_dims_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mult_partition_both_dims_sparsemux_13_3_32_1_1 RTLNAME matrix_mult_partition_both_dims_sparsemux_13_3_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME matrix_mult_partition_both_dims_flow_control_loop_pipe RTLNAME matrix_mult_partition_both_dims_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME matrix_mult_partition_both_dims_flow_control_loop_pipe_U}
    }
  }
}
