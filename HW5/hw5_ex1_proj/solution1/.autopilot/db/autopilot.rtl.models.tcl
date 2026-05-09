set SynModuleInfo {
  {SRCNAME hw5_ex1_Pipeline_VITIS_LOOP_25_1 MODELNAME hw5_ex1_Pipeline_VITIS_LOOP_25_1 RTLNAME hw5_ex1_hw5_ex1_Pipeline_VITIS_LOOP_25_1
    SUBMODULES {
      {MODELNAME hw5_ex1_flow_control_loop_pipe_sequential_init RTLNAME hw5_ex1_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME hw5_ex1_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME hw5_ex1_Pipeline_VITIS_LOOP_5_1 MODELNAME hw5_ex1_Pipeline_VITIS_LOOP_5_1 RTLNAME hw5_ex1_hw5_ex1_Pipeline_VITIS_LOOP_5_1}
  {SRCNAME hw5_ex1_Pipeline_VITIS_LOOP_11_1 MODELNAME hw5_ex1_Pipeline_VITIS_LOOP_11_1 RTLNAME hw5_ex1_hw5_ex1_Pipeline_VITIS_LOOP_11_1
    SUBMODULES {
      {MODELNAME hw5_ex1_mul_32s_34ns_65_1_1 RTLNAME hw5_ex1_mul_32s_34ns_65_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hw5_ex1_urem_5ns_3ns_2_9_1 RTLNAME hw5_ex1_urem_5ns_3ns_2_9_1 BINDTYPE op TYPE urem IMPL auto LATENCY 8 ALLOW_PRAGMA 1}
      {MODELNAME hw5_ex1_mul_5ns_7ns_11_1_1 RTLNAME hw5_ex1_mul_5ns_7ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME hw5_ex1_sparsemux_7_2_32_1_1 RTLNAME hw5_ex1_sparsemux_7_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME hw5_ex1_Pipeline_VITIS_LOOP_17_1 MODELNAME hw5_ex1_Pipeline_VITIS_LOOP_17_1 RTLNAME hw5_ex1_hw5_ex1_Pipeline_VITIS_LOOP_17_1}
  {SRCNAME hw5_ex1 MODELNAME hw5_ex1 RTLNAME hw5_ex1 IS_TOP 1
    SUBMODULES {
      {MODELNAME hw5_ex1_temp1_RAM_AUTO_1R1W RTLNAME hw5_ex1_temp1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME hw5_ex1_temp2_RAM_AUTO_1R1W RTLNAME hw5_ex1_temp2_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
