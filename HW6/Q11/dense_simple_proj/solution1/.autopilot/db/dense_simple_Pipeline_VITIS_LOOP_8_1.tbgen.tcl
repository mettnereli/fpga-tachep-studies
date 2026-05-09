set moduleName dense_simple_Pipeline_VITIS_LOOP_8_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {dense_simple_Pipeline_VITIS_LOOP_8_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict w { MEM_WIDTH 32 MEM_SIZE 512 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict y { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ w int 32 regular {array 128 { 1 1 } 1 1 }  }
	{ x_load_7 int 32 regular  }
	{ x_load_11 int 32 regular  }
	{ x_load_8 int 32 regular  }
	{ x_load_2 int 32 regular  }
	{ x_load_1 int 32 regular  }
	{ x_load_5 int 32 regular  }
	{ x_load_12 int 32 regular  }
	{ x_load_3 int 32 regular  }
	{ x_load_10 int 32 regular  }
	{ x_load_4 int 32 regular  }
	{ x_load_13 int 32 regular  }
	{ x_load_6 int 32 regular  }
	{ x_load int 32 regular  }
	{ x_load_14 int 32 regular  }
	{ x_load_9 int 32 regular  }
	{ x_load_15 int 32 regular  }
	{ y int 32 regular {array 8 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "w", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_load_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_load_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_load_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_load_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_load_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_load_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_load_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_load_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_load_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_load_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w_address0 sc_out sc_lv 7 signal 0 } 
	{ w_ce0 sc_out sc_logic 1 signal 0 } 
	{ w_q0 sc_in sc_lv 32 signal 0 } 
	{ w_address1 sc_out sc_lv 7 signal 0 } 
	{ w_ce1 sc_out sc_logic 1 signal 0 } 
	{ w_q1 sc_in sc_lv 32 signal 0 } 
	{ x_load_7 sc_in sc_lv 32 signal 1 } 
	{ x_load_11 sc_in sc_lv 32 signal 2 } 
	{ x_load_8 sc_in sc_lv 32 signal 3 } 
	{ x_load_2 sc_in sc_lv 32 signal 4 } 
	{ x_load_1 sc_in sc_lv 32 signal 5 } 
	{ x_load_5 sc_in sc_lv 32 signal 6 } 
	{ x_load_12 sc_in sc_lv 32 signal 7 } 
	{ x_load_3 sc_in sc_lv 32 signal 8 } 
	{ x_load_10 sc_in sc_lv 32 signal 9 } 
	{ x_load_4 sc_in sc_lv 32 signal 10 } 
	{ x_load_13 sc_in sc_lv 32 signal 11 } 
	{ x_load_6 sc_in sc_lv 32 signal 12 } 
	{ x_load sc_in sc_lv 32 signal 13 } 
	{ x_load_14 sc_in sc_lv 32 signal 14 } 
	{ x_load_9 sc_in sc_lv 32 signal 15 } 
	{ x_load_15 sc_in sc_lv 32 signal 16 } 
	{ y_address0 sc_out sc_lv 3 signal 17 } 
	{ y_ce0 sc_out sc_logic 1 signal 17 } 
	{ y_we0 sc_out sc_logic 1 signal 17 } 
	{ y_d0 sc_out sc_lv 32 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "w", "role": "address0" }} , 
 	{ "name": "w_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "ce0" }} , 
 	{ "name": "w_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "q0" }} , 
 	{ "name": "w_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "w", "role": "address1" }} , 
 	{ "name": "w_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w", "role": "ce1" }} , 
 	{ "name": "w_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w", "role": "q1" }} , 
 	{ "name": "x_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_load_7", "role": "default" }} , 
 	{ "name": "x_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_load_11", "role": "default" }} , 
 	{ "name": "x_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_load_8", "role": "default" }} , 
 	{ "name": "x_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_load_2", "role": "default" }} , 
 	{ "name": "x_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_load_1", "role": "default" }} , 
 	{ "name": "x_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_load_5", "role": "default" }} , 
 	{ "name": "x_load_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_load_12", "role": "default" }} , 
 	{ "name": "x_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_load_3", "role": "default" }} , 
 	{ "name": "x_load_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_load_10", "role": "default" }} , 
 	{ "name": "x_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_load_4", "role": "default" }} , 
 	{ "name": "x_load_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_load_13", "role": "default" }} , 
 	{ "name": "x_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_load_6", "role": "default" }} , 
 	{ "name": "x_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_load", "role": "default" }} , 
 	{ "name": "x_load_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_load_14", "role": "default" }} , 
 	{ "name": "x_load_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_load_9", "role": "default" }} , 
 	{ "name": "x_load_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_load_15", "role": "default" }} , 
 	{ "name": "y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "y", "role": "address0" }} , 
 	{ "name": "y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "ce0" }} , 
 	{ "name": "y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "we0" }} , 
 	{ "name": "y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "dense_simple_Pipeline_VITIS_LOOP_8_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_8_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "8", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dense_simple_Pipeline_VITIS_LOOP_8_1 {
		w {Type I LastRead 8 FirstWrite -1}
		x_load_7 {Type I LastRead 0 FirstWrite -1}
		x_load_11 {Type I LastRead 0 FirstWrite -1}
		x_load_8 {Type I LastRead 0 FirstWrite -1}
		x_load_2 {Type I LastRead 0 FirstWrite -1}
		x_load_1 {Type I LastRead 0 FirstWrite -1}
		x_load_5 {Type I LastRead 0 FirstWrite -1}
		x_load_12 {Type I LastRead 0 FirstWrite -1}
		x_load_3 {Type I LastRead 0 FirstWrite -1}
		x_load_10 {Type I LastRead 0 FirstWrite -1}
		x_load_4 {Type I LastRead 0 FirstWrite -1}
		x_load_13 {Type I LastRead 0 FirstWrite -1}
		x_load_6 {Type I LastRead 0 FirstWrite -1}
		x_load {Type I LastRead 0 FirstWrite -1}
		x_load_14 {Type I LastRead 0 FirstWrite -1}
		x_load_9 {Type I LastRead 0 FirstWrite -1}
		x_load_15 {Type I LastRead 0 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 8}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	w { ap_memory {  { w_address0 mem_address 1 7 }  { w_ce0 mem_ce 1 1 }  { w_q0 mem_dout 0 32 }  { w_address1 MemPortADDR2 1 7 }  { w_ce1 MemPortCE2 1 1 }  { w_q1 MemPortDOUT2 0 32 } } }
	x_load_7 { ap_none {  { x_load_7 in_data 0 32 } } }
	x_load_11 { ap_none {  { x_load_11 in_data 0 32 } } }
	x_load_8 { ap_none {  { x_load_8 in_data 0 32 } } }
	x_load_2 { ap_none {  { x_load_2 in_data 0 32 } } }
	x_load_1 { ap_none {  { x_load_1 in_data 0 32 } } }
	x_load_5 { ap_none {  { x_load_5 in_data 0 32 } } }
	x_load_12 { ap_none {  { x_load_12 in_data 0 32 } } }
	x_load_3 { ap_none {  { x_load_3 in_data 0 32 } } }
	x_load_10 { ap_none {  { x_load_10 in_data 0 32 } } }
	x_load_4 { ap_none {  { x_load_4 in_data 0 32 } } }
	x_load_13 { ap_none {  { x_load_13 in_data 0 32 } } }
	x_load_6 { ap_none {  { x_load_6 in_data 0 32 } } }
	x_load { ap_none {  { x_load in_data 0 32 } } }
	x_load_14 { ap_none {  { x_load_14 in_data 0 32 } } }
	x_load_9 { ap_none {  { x_load_9 in_data 0 32 } } }
	x_load_15 { ap_none {  { x_load_15 in_data 0 32 } } }
	y { ap_memory {  { y_address0 mem_address 1 3 }  { y_ce0 mem_ce 1 1 }  { y_we0 mem_we 1 1 }  { y_d0 mem_din 1 32 } } }
}
