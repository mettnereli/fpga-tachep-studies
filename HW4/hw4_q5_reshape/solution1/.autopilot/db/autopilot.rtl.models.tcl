set SynModuleInfo {
  {SRCNAME q5_reshape MODELNAME q5_reshape RTLNAME q5_reshape IS_TOP 1
    SUBMODULES {
      {MODELNAME q5_reshape_mul_32s_32s_32_1_1 RTLNAME q5_reshape_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME q5_reshape_control_s_axi RTLNAME q5_reshape_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME q5_reshape_flow_control_loop_pipe RTLNAME q5_reshape_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME q5_reshape_flow_control_loop_pipe_U}
    }
  }
}
