set SynModuleInfo {
  {SRCNAME vector_multiply MODELNAME vector_multiply RTLNAME vector_multiply IS_TOP 1
    SUBMODULES {
      {MODELNAME vector_multiply_mul_32s_32s_32_1_1 RTLNAME vector_multiply_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME vector_multiply_flow_control_loop_pipe RTLNAME vector_multiply_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME vector_multiply_flow_control_loop_pipe_U}
    }
  }
}
