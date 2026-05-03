set SynModuleInfo {
  {SRCNAME matrix_mult_bram MODELNAME matrix_mult_bram RTLNAME matrix_mult_bram IS_TOP 1
    SUBMODULES {
      {MODELNAME matrix_mult_bram_mul_32s_32s_32_1_1 RTLNAME matrix_mult_bram_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME matrix_mult_bram_flow_control_loop_pipe RTLNAME matrix_mult_bram_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME matrix_mult_bram_flow_control_loop_pipe_U}
    }
  }
}
