set SynModuleInfo {
  {SRCNAME dense_simple_Pipeline_VITIS_LOOP_8_1 MODELNAME dense_simple_Pipeline_VITIS_LOOP_8_1 RTLNAME dense_simple_dense_simple_Pipeline_VITIS_LOOP_8_1
    SUBMODULES {
      {MODELNAME dense_simple_mul_32s_32s_32_1_1 RTLNAME dense_simple_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dense_simple_flow_control_loop_pipe_sequential_init RTLNAME dense_simple_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dense_simple_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dense_simple MODELNAME dense_simple RTLNAME dense_simple IS_TOP 1}
}
