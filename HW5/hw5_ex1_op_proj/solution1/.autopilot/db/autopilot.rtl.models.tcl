set SynModuleInfo {
  {SRCNAME read_data MODELNAME read_data RTLNAME hw5_ex1_op_read_data
    SUBMODULES {
      {MODELNAME hw5_ex1_op_flow_control_loop_pipe_sequential_init RTLNAME hw5_ex1_op_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME hw5_ex1_op_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME compute_blur MODELNAME compute_blur RTLNAME hw5_ex1_op_compute_blur
    SUBMODULES {
      {MODELNAME hw5_ex1_op_mul_32s_34ns_65_1_1 RTLNAME hw5_ex1_op_mul_32s_34ns_65_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hw5_ex1_op_urem_5ns_3ns_2_9_1 RTLNAME hw5_ex1_op_urem_5ns_3ns_2_9_1 BINDTYPE op TYPE urem IMPL auto LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME hw5_ex1_op_mul_5ns_7ns_11_1_1 RTLNAME hw5_ex1_op_mul_5ns_7ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hw5_ex1_op_sparsemux_7_2_32_1_1 RTLNAME hw5_ex1_op_sparsemux_7_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME write_data MODELNAME write_data RTLNAME hw5_ex1_op_write_data}
  {SRCNAME hw5_ex1_op MODELNAME hw5_ex1_op RTLNAME hw5_ex1_op IS_TOP 1
    SUBMODULES {
      {MODELNAME hw5_ex1_op_temp1_RAM_AUTO_1R1W RTLNAME hw5_ex1_op_temp1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hw5_ex1_op_temp2_RAM_AUTO_1R1W RTLNAME hw5_ex1_op_temp2_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
