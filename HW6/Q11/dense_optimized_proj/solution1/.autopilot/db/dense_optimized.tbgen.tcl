set moduleName dense_optimized
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {dense_optimized}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict x_0 { MEM_WIDTH 32 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict x_1 { MEM_WIDTH 32 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict x_2 { MEM_WIDTH 32 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict x_3 { MEM_WIDTH 32 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict w_0 { MEM_WIDTH 32 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict w_1 { MEM_WIDTH 32 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict w_2 { MEM_WIDTH 32 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict w_3 { MEM_WIDTH 32 MEM_SIZE 128 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict y { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ x_0 int 32 regular {bram 4 { 1 3 } 1 1 }  }
	{ x_1 int 32 regular {bram 4 { 1 3 } 1 1 }  }
	{ x_2 int 32 regular {bram 4 { 1 3 } 1 1 }  }
	{ x_3 int 32 regular {bram 4 { 1 3 } 1 1 }  }
	{ w_0 int 32 regular {bram 32 { 1 3 } 1 1 stable  }  }
	{ w_1 int 32 regular {bram 32 { 1 3 } 1 1 stable  }  }
	{ w_2 int 32 regular {bram 32 { 1 3 } 1 1 stable  }  }
	{ w_3 int 32 regular {bram 32 { 1 3 } 1 1 stable  }  }
	{ y int 32 regular {bram 8 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "x_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "w_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 69
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_0_Addr_A sc_out sc_lv 32 signal 0 } 
	{ x_0_EN_A sc_out sc_logic 1 signal 0 } 
	{ x_0_WEN_A sc_out sc_lv 4 signal 0 } 
	{ x_0_Din_A sc_out sc_lv 32 signal 0 } 
	{ x_0_Dout_A sc_in sc_lv 32 signal 0 } 
	{ x_0_Clk_A sc_out sc_logic 1 signal 0 } 
	{ x_0_Rst_A sc_out sc_logic 1 signal 0 } 
	{ x_1_Addr_A sc_out sc_lv 32 signal 1 } 
	{ x_1_EN_A sc_out sc_logic 1 signal 1 } 
	{ x_1_WEN_A sc_out sc_lv 4 signal 1 } 
	{ x_1_Din_A sc_out sc_lv 32 signal 1 } 
	{ x_1_Dout_A sc_in sc_lv 32 signal 1 } 
	{ x_1_Clk_A sc_out sc_logic 1 signal 1 } 
	{ x_1_Rst_A sc_out sc_logic 1 signal 1 } 
	{ x_2_Addr_A sc_out sc_lv 32 signal 2 } 
	{ x_2_EN_A sc_out sc_logic 1 signal 2 } 
	{ x_2_WEN_A sc_out sc_lv 4 signal 2 } 
	{ x_2_Din_A sc_out sc_lv 32 signal 2 } 
	{ x_2_Dout_A sc_in sc_lv 32 signal 2 } 
	{ x_2_Clk_A sc_out sc_logic 1 signal 2 } 
	{ x_2_Rst_A sc_out sc_logic 1 signal 2 } 
	{ x_3_Addr_A sc_out sc_lv 32 signal 3 } 
	{ x_3_EN_A sc_out sc_logic 1 signal 3 } 
	{ x_3_WEN_A sc_out sc_lv 4 signal 3 } 
	{ x_3_Din_A sc_out sc_lv 32 signal 3 } 
	{ x_3_Dout_A sc_in sc_lv 32 signal 3 } 
	{ x_3_Clk_A sc_out sc_logic 1 signal 3 } 
	{ x_3_Rst_A sc_out sc_logic 1 signal 3 } 
	{ w_0_Addr_A sc_out sc_lv 32 signal 4 } 
	{ w_0_EN_A sc_out sc_logic 1 signal 4 } 
	{ w_0_WEN_A sc_out sc_lv 4 signal 4 } 
	{ w_0_Din_A sc_out sc_lv 32 signal 4 } 
	{ w_0_Dout_A sc_in sc_lv 32 signal 4 } 
	{ w_0_Clk_A sc_out sc_logic 1 signal 4 } 
	{ w_0_Rst_A sc_out sc_logic 1 signal 4 } 
	{ w_1_Addr_A sc_out sc_lv 32 signal 5 } 
	{ w_1_EN_A sc_out sc_logic 1 signal 5 } 
	{ w_1_WEN_A sc_out sc_lv 4 signal 5 } 
	{ w_1_Din_A sc_out sc_lv 32 signal 5 } 
	{ w_1_Dout_A sc_in sc_lv 32 signal 5 } 
	{ w_1_Clk_A sc_out sc_logic 1 signal 5 } 
	{ w_1_Rst_A sc_out sc_logic 1 signal 5 } 
	{ w_2_Addr_A sc_out sc_lv 32 signal 6 } 
	{ w_2_EN_A sc_out sc_logic 1 signal 6 } 
	{ w_2_WEN_A sc_out sc_lv 4 signal 6 } 
	{ w_2_Din_A sc_out sc_lv 32 signal 6 } 
	{ w_2_Dout_A sc_in sc_lv 32 signal 6 } 
	{ w_2_Clk_A sc_out sc_logic 1 signal 6 } 
	{ w_2_Rst_A sc_out sc_logic 1 signal 6 } 
	{ w_3_Addr_A sc_out sc_lv 32 signal 7 } 
	{ w_3_EN_A sc_out sc_logic 1 signal 7 } 
	{ w_3_WEN_A sc_out sc_lv 4 signal 7 } 
	{ w_3_Din_A sc_out sc_lv 32 signal 7 } 
	{ w_3_Dout_A sc_in sc_lv 32 signal 7 } 
	{ w_3_Clk_A sc_out sc_logic 1 signal 7 } 
	{ w_3_Rst_A sc_out sc_logic 1 signal 7 } 
	{ y_Addr_A sc_out sc_lv 32 signal 8 } 
	{ y_EN_A sc_out sc_logic 1 signal 8 } 
	{ y_WEN_A sc_out sc_lv 4 signal 8 } 
	{ y_Din_A sc_out sc_lv 32 signal 8 } 
	{ y_Dout_A sc_in sc_lv 32 signal 8 } 
	{ y_Clk_A sc_out sc_logic 1 signal 8 } 
	{ y_Rst_A sc_out sc_logic 1 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_0", "role": "Addr_A" }} , 
 	{ "name": "x_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_0", "role": "EN_A" }} , 
 	{ "name": "x_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_0", "role": "WEN_A" }} , 
 	{ "name": "x_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_0", "role": "Din_A" }} , 
 	{ "name": "x_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_0", "role": "Dout_A" }} , 
 	{ "name": "x_0_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_0", "role": "Clk_A" }} , 
 	{ "name": "x_0_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_0", "role": "Rst_A" }} , 
 	{ "name": "x_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_1", "role": "Addr_A" }} , 
 	{ "name": "x_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_1", "role": "EN_A" }} , 
 	{ "name": "x_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_1", "role": "WEN_A" }} , 
 	{ "name": "x_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_1", "role": "Din_A" }} , 
 	{ "name": "x_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_1", "role": "Dout_A" }} , 
 	{ "name": "x_1_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_1", "role": "Clk_A" }} , 
 	{ "name": "x_1_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_1", "role": "Rst_A" }} , 
 	{ "name": "x_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_2", "role": "Addr_A" }} , 
 	{ "name": "x_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_2", "role": "EN_A" }} , 
 	{ "name": "x_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_2", "role": "WEN_A" }} , 
 	{ "name": "x_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_2", "role": "Din_A" }} , 
 	{ "name": "x_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_2", "role": "Dout_A" }} , 
 	{ "name": "x_2_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_2", "role": "Clk_A" }} , 
 	{ "name": "x_2_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_2", "role": "Rst_A" }} , 
 	{ "name": "x_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_3", "role": "Addr_A" }} , 
 	{ "name": "x_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_3", "role": "EN_A" }} , 
 	{ "name": "x_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "x_3", "role": "WEN_A" }} , 
 	{ "name": "x_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_3", "role": "Din_A" }} , 
 	{ "name": "x_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_3", "role": "Dout_A" }} , 
 	{ "name": "x_3_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_3", "role": "Clk_A" }} , 
 	{ "name": "x_3_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_3", "role": "Rst_A" }} , 
 	{ "name": "w_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_0", "role": "Addr_A" }} , 
 	{ "name": "w_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_0", "role": "EN_A" }} , 
 	{ "name": "w_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w_0", "role": "WEN_A" }} , 
 	{ "name": "w_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_0", "role": "Din_A" }} , 
 	{ "name": "w_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_0", "role": "Dout_A" }} , 
 	{ "name": "w_0_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_0", "role": "Clk_A" }} , 
 	{ "name": "w_0_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_0", "role": "Rst_A" }} , 
 	{ "name": "w_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_1", "role": "Addr_A" }} , 
 	{ "name": "w_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_1", "role": "EN_A" }} , 
 	{ "name": "w_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w_1", "role": "WEN_A" }} , 
 	{ "name": "w_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_1", "role": "Din_A" }} , 
 	{ "name": "w_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_1", "role": "Dout_A" }} , 
 	{ "name": "w_1_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_1", "role": "Clk_A" }} , 
 	{ "name": "w_1_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_1", "role": "Rst_A" }} , 
 	{ "name": "w_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_2", "role": "Addr_A" }} , 
 	{ "name": "w_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_2", "role": "EN_A" }} , 
 	{ "name": "w_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w_2", "role": "WEN_A" }} , 
 	{ "name": "w_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_2", "role": "Din_A" }} , 
 	{ "name": "w_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_2", "role": "Dout_A" }} , 
 	{ "name": "w_2_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_2", "role": "Clk_A" }} , 
 	{ "name": "w_2_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_2", "role": "Rst_A" }} , 
 	{ "name": "w_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_3", "role": "Addr_A" }} , 
 	{ "name": "w_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_3", "role": "EN_A" }} , 
 	{ "name": "w_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "w_3", "role": "WEN_A" }} , 
 	{ "name": "w_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_3", "role": "Din_A" }} , 
 	{ "name": "w_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "w_3", "role": "Dout_A" }} , 
 	{ "name": "w_3_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_3", "role": "Clk_A" }} , 
 	{ "name": "w_3_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w_3", "role": "Rst_A" }} , 
 	{ "name": "y_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "Addr_A" }} , 
 	{ "name": "y_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "EN_A" }} , 
 	{ "name": "y_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "y", "role": "WEN_A" }} , 
 	{ "name": "y_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "Din_A" }} , 
 	{ "name": "y_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y", "role": "Dout_A" }} , 
 	{ "name": "y_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "Clk_A" }} , 
 	{ "name": "y_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y", "role": "Rst_A" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "dense_optimized",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "x_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "x_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "x_3", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "w_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "w_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "w_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "w_3", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "y", "Type" : "Bram", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_35_1_VITIS_LOOP_38_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_delay_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dense_optimized {
		x_0 {Type I LastRead 0 FirstWrite -1}
		x_1 {Type I LastRead 0 FirstWrite -1}
		x_2 {Type I LastRead 0 FirstWrite -1}
		x_3 {Type I LastRead 0 FirstWrite -1}
		w_0 {Type I LastRead 0 FirstWrite -1}
		w_1 {Type I LastRead 0 FirstWrite -1}
		w_2 {Type I LastRead 0 FirstWrite -1}
		w_3 {Type I LastRead 0 FirstWrite -1}
		y {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "130", "Max" : "130"}
	, {"Name" : "Interval", "Min" : "131", "Max" : "131"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	x_0 { bram {  { x_0_Addr_A MemPortADDR2 1 32 }  { x_0_EN_A MemPortCE2 1 1 }  { x_0_WEN_A MemPortWE2 1 4 }  { x_0_Din_A MemPortDIN2 1 32 }  { x_0_Dout_A MemPortDOUT2 0 32 }  { x_0_Clk_A mem_clk 1 1 }  { x_0_Rst_A mem_rst 1 1 } } }
	x_1 { bram {  { x_1_Addr_A MemPortADDR2 1 32 }  { x_1_EN_A MemPortCE2 1 1 }  { x_1_WEN_A MemPortWE2 1 4 }  { x_1_Din_A MemPortDIN2 1 32 }  { x_1_Dout_A MemPortDOUT2 0 32 }  { x_1_Clk_A mem_clk 1 1 }  { x_1_Rst_A mem_rst 1 1 } } }
	x_2 { bram {  { x_2_Addr_A MemPortADDR2 1 32 }  { x_2_EN_A MemPortCE2 1 1 }  { x_2_WEN_A MemPortWE2 1 4 }  { x_2_Din_A MemPortDIN2 1 32 }  { x_2_Dout_A MemPortDOUT2 0 32 }  { x_2_Clk_A mem_clk 1 1 }  { x_2_Rst_A mem_rst 1 1 } } }
	x_3 { bram {  { x_3_Addr_A MemPortADDR2 1 32 }  { x_3_EN_A MemPortCE2 1 1 }  { x_3_WEN_A MemPortWE2 1 4 }  { x_3_Din_A MemPortDIN2 1 32 }  { x_3_Dout_A MemPortDOUT2 0 32 }  { x_3_Clk_A mem_clk 1 1 }  { x_3_Rst_A mem_rst 1 1 } } }
	w_0 { bram {  { w_0_Addr_A MemPortADDR2 1 32 }  { w_0_EN_A MemPortCE2 1 1 }  { w_0_WEN_A MemPortWE2 1 4 }  { w_0_Din_A MemPortDIN2 1 32 }  { w_0_Dout_A MemPortDOUT2 0 32 }  { w_0_Clk_A mem_clk 1 1 }  { w_0_Rst_A mem_rst 1 1 } } }
	w_1 { bram {  { w_1_Addr_A MemPortADDR2 1 32 }  { w_1_EN_A MemPortCE2 1 1 }  { w_1_WEN_A MemPortWE2 1 4 }  { w_1_Din_A MemPortDIN2 1 32 }  { w_1_Dout_A MemPortDOUT2 0 32 }  { w_1_Clk_A mem_clk 1 1 }  { w_1_Rst_A mem_rst 1 1 } } }
	w_2 { bram {  { w_2_Addr_A MemPortADDR2 1 32 }  { w_2_EN_A MemPortCE2 1 1 }  { w_2_WEN_A MemPortWE2 1 4 }  { w_2_Din_A MemPortDIN2 1 32 }  { w_2_Dout_A MemPortDOUT2 0 32 }  { w_2_Clk_A mem_clk 1 1 }  { w_2_Rst_A mem_rst 1 1 } } }
	w_3 { bram {  { w_3_Addr_A MemPortADDR2 1 32 }  { w_3_EN_A MemPortCE2 1 1 }  { w_3_WEN_A MemPortWE2 1 4 }  { w_3_Din_A MemPortDIN2 1 32 }  { w_3_Dout_A MemPortDOUT2 0 32 }  { w_3_Clk_A mem_clk 1 1 }  { w_3_Rst_A mem_rst 1 1 } } }
	y { bram {  { y_Addr_A MemPortADDR2 1 32 }  { y_EN_A MemPortCE2 1 1 }  { y_WEN_A MemPortWE2 1 4 }  { y_Din_A MemPortDIN2 1 32 }  { y_Dout_A MemPortDOUT2 0 32 }  { y_Clk_A mem_clk 1 1 }  { y_Rst_A mem_rst 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
