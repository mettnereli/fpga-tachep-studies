set SynModuleInfo {
  {SRCNAME q5_simple MODELNAME q5_simple RTLNAME q5_simple IS_TOP 1
    SUBMODULES {
      {MODELNAME q5_simple_mul_32s_32s_32_1_1 RTLNAME q5_simple_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME q5_simple_flow_control_loop_pipe RTLNAME q5_simple_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME q5_simple_flow_control_loop_pipe_U}
    }
  }
}
