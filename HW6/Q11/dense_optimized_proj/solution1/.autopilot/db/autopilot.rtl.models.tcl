set SynModuleInfo {
  {SRCNAME dense_optimized MODELNAME dense_optimized RTLNAME dense_optimized IS_TOP 1
    SUBMODULES {
      {MODELNAME dense_optimized_mul_32s_32s_32_1_1 RTLNAME dense_optimized_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dense_optimized_sparsemux_9_2_32_1_1 RTLNAME dense_optimized_sparsemux_9_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME dense_optimized_flow_control_loop_delay_pipe RTLNAME dense_optimized_flow_control_loop_delay_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dense_optimized_flow_control_loop_delay_pipe_U}
    }
  }
}
