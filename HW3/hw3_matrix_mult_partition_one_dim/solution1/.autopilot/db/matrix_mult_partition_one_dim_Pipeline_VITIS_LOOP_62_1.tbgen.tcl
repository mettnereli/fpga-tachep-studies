set moduleName matrix_mult_partition_one_dim_Pipeline_VITIS_LOOP_62_1
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
set C_modelName {matrix_mult_partition_one_dim_Pipeline_VITIS_LOOP_62_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict C { MEM_WIDTH 32 MEM_SIZE 144 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_0 { MEM_WIDTH 32 MEM_SIZE 24 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_1 { MEM_WIDTH 32 MEM_SIZE 24 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_2 { MEM_WIDTH 32 MEM_SIZE 24 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_3 { MEM_WIDTH 32 MEM_SIZE 24 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_4 { MEM_WIDTH 32 MEM_SIZE 24 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_5 { MEM_WIDTH 32 MEM_SIZE 24 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE BYTE_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ C int 32 regular {bram 36 { 0 0 } 0 1 }  }
	{ A_0 int 32 regular {bram 6 { 1 3 } 1 1 }  }
	{ A_1 int 32 regular {bram 6 { 1 3 } 1 1 }  }
	{ A_2 int 32 regular {bram 6 { 1 3 } 1 1 }  }
	{ A_3 int 32 regular {bram 6 { 1 3 } 1 1 }  }
	{ A_4 int 32 regular {bram 6 { 1 3 } 1 1 }  }
	{ A_5 int 32 regular {bram 6 { 1 3 } 1 1 }  }
	{ B_2_load int 32 regular  }
	{ B_0_load int 32 regular  }
	{ B_4_load int 32 regular  }
	{ B_3_load int 32 regular  }
	{ B_5_load int 32 regular  }
	{ B_1_load int 32 regular  }
	{ B_2_load_1 int 32 regular  }
	{ B_0_load_1 int 32 regular  }
	{ B_4_load_1 int 32 regular  }
	{ B_3_load_1 int 32 regular  }
	{ B_5_load_1 int 32 regular  }
	{ B_1_load_1 int 32 regular  }
	{ B_2_load_2 int 32 regular  }
	{ B_0_load_2 int 32 regular  }
	{ B_4_load_2 int 32 regular  }
	{ B_3_load_2 int 32 regular  }
	{ B_5_load_2 int 32 regular  }
	{ B_1_load_2 int 32 regular  }
	{ B_2_load_3 int 32 regular  }
	{ B_0_load_3 int 32 regular  }
	{ B_4_load_3 int 32 regular  }
	{ B_3_load_3 int 32 regular  }
	{ B_5_load_3 int 32 regular  }
	{ B_1_load_3 int 32 regular  }
	{ B_2_load_4 int 32 regular  }
	{ B_0_load_4 int 32 regular  }
	{ B_4_load_4 int 32 regular  }
	{ B_3_load_4 int 32 regular  }
	{ B_5_load_4 int 32 regular  }
	{ B_1_load_4 int 32 regular  }
	{ B_2_load_5 int 32 regular  }
	{ B_0_load_5 int 32 regular  }
	{ B_4_load_5 int 32 regular  }
	{ B_3_load_5 int 32 regular  }
	{ B_5_load_5 int 32 regular  }
	{ B_1_load_5 int 32 regular  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "C", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "A_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_4", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_5", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 82
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ C_Addr_A sc_out sc_lv 32 signal 0 } 
	{ C_EN_A sc_out sc_logic 1 signal 0 } 
	{ C_WEN_A sc_out sc_lv 4 signal 0 } 
	{ C_Din_A sc_out sc_lv 32 signal 0 } 
	{ C_Dout_A sc_in sc_lv 32 signal 0 } 
	{ C_Addr_B sc_out sc_lv 32 signal 0 } 
	{ C_EN_B sc_out sc_logic 1 signal 0 } 
	{ C_WEN_B sc_out sc_lv 4 signal 0 } 
	{ C_Din_B sc_out sc_lv 32 signal 0 } 
	{ C_Dout_B sc_in sc_lv 32 signal 0 } 
	{ A_0_Addr_A sc_out sc_lv 32 signal 1 } 
	{ A_0_EN_A sc_out sc_logic 1 signal 1 } 
	{ A_0_WEN_A sc_out sc_lv 4 signal 1 } 
	{ A_0_Din_A sc_out sc_lv 32 signal 1 } 
	{ A_0_Dout_A sc_in sc_lv 32 signal 1 } 
	{ A_1_Addr_A sc_out sc_lv 32 signal 2 } 
	{ A_1_EN_A sc_out sc_logic 1 signal 2 } 
	{ A_1_WEN_A sc_out sc_lv 4 signal 2 } 
	{ A_1_Din_A sc_out sc_lv 32 signal 2 } 
	{ A_1_Dout_A sc_in sc_lv 32 signal 2 } 
	{ A_2_Addr_A sc_out sc_lv 32 signal 3 } 
	{ A_2_EN_A sc_out sc_logic 1 signal 3 } 
	{ A_2_WEN_A sc_out sc_lv 4 signal 3 } 
	{ A_2_Din_A sc_out sc_lv 32 signal 3 } 
	{ A_2_Dout_A sc_in sc_lv 32 signal 3 } 
	{ A_3_Addr_A sc_out sc_lv 32 signal 4 } 
	{ A_3_EN_A sc_out sc_logic 1 signal 4 } 
	{ A_3_WEN_A sc_out sc_lv 4 signal 4 } 
	{ A_3_Din_A sc_out sc_lv 32 signal 4 } 
	{ A_3_Dout_A sc_in sc_lv 32 signal 4 } 
	{ A_4_Addr_A sc_out sc_lv 32 signal 5 } 
	{ A_4_EN_A sc_out sc_logic 1 signal 5 } 
	{ A_4_WEN_A sc_out sc_lv 4 signal 5 } 
	{ A_4_Din_A sc_out sc_lv 32 signal 5 } 
	{ A_4_Dout_A sc_in sc_lv 32 signal 5 } 
	{ A_5_Addr_A sc_out sc_lv 32 signal 6 } 
	{ A_5_EN_A sc_out sc_logic 1 signal 6 } 
	{ A_5_WEN_A sc_out sc_lv 4 signal 6 } 
	{ A_5_Din_A sc_out sc_lv 32 signal 6 } 
	{ A_5_Dout_A sc_in sc_lv 32 signal 6 } 
	{ B_2_load sc_in sc_lv 32 signal 7 } 
	{ B_0_load sc_in sc_lv 32 signal 8 } 
	{ B_4_load sc_in sc_lv 32 signal 9 } 
	{ B_3_load sc_in sc_lv 32 signal 10 } 
	{ B_5_load sc_in sc_lv 32 signal 11 } 
	{ B_1_load sc_in sc_lv 32 signal 12 } 
	{ B_2_load_1 sc_in sc_lv 32 signal 13 } 
	{ B_0_load_1 sc_in sc_lv 32 signal 14 } 
	{ B_4_load_1 sc_in sc_lv 32 signal 15 } 
	{ B_3_load_1 sc_in sc_lv 32 signal 16 } 
	{ B_5_load_1 sc_in sc_lv 32 signal 17 } 
	{ B_1_load_1 sc_in sc_lv 32 signal 18 } 
	{ B_2_load_2 sc_in sc_lv 32 signal 19 } 
	{ B_0_load_2 sc_in sc_lv 32 signal 20 } 
	{ B_4_load_2 sc_in sc_lv 32 signal 21 } 
	{ B_3_load_2 sc_in sc_lv 32 signal 22 } 
	{ B_5_load_2 sc_in sc_lv 32 signal 23 } 
	{ B_1_load_2 sc_in sc_lv 32 signal 24 } 
	{ B_2_load_3 sc_in sc_lv 32 signal 25 } 
	{ B_0_load_3 sc_in sc_lv 32 signal 26 } 
	{ B_4_load_3 sc_in sc_lv 32 signal 27 } 
	{ B_3_load_3 sc_in sc_lv 32 signal 28 } 
	{ B_5_load_3 sc_in sc_lv 32 signal 29 } 
	{ B_1_load_3 sc_in sc_lv 32 signal 30 } 
	{ B_2_load_4 sc_in sc_lv 32 signal 31 } 
	{ B_0_load_4 sc_in sc_lv 32 signal 32 } 
	{ B_4_load_4 sc_in sc_lv 32 signal 33 } 
	{ B_3_load_4 sc_in sc_lv 32 signal 34 } 
	{ B_5_load_4 sc_in sc_lv 32 signal 35 } 
	{ B_1_load_4 sc_in sc_lv 32 signal 36 } 
	{ B_2_load_5 sc_in sc_lv 32 signal 37 } 
	{ B_0_load_5 sc_in sc_lv 32 signal 38 } 
	{ B_4_load_5 sc_in sc_lv 32 signal 39 } 
	{ B_3_load_5 sc_in sc_lv 32 signal 40 } 
	{ B_5_load_5 sc_in sc_lv 32 signal 41 } 
	{ B_1_load_5 sc_in sc_lv 32 signal 42 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "C_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "Addr_A" }} , 
 	{ "name": "C_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "EN_A" }} , 
 	{ "name": "C_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C", "role": "WEN_A" }} , 
 	{ "name": "C_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "Din_A" }} , 
 	{ "name": "C_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "Dout_A" }} , 
 	{ "name": "C_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "Addr_B" }} , 
 	{ "name": "C_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "EN_B" }} , 
 	{ "name": "C_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C", "role": "WEN_B" }} , 
 	{ "name": "C_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "Din_B" }} , 
 	{ "name": "C_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "Dout_B" }} , 
 	{ "name": "A_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_0", "role": "Addr_A" }} , 
 	{ "name": "A_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_0", "role": "EN_A" }} , 
 	{ "name": "A_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_0", "role": "WEN_A" }} , 
 	{ "name": "A_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_0", "role": "Din_A" }} , 
 	{ "name": "A_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_0", "role": "Dout_A" }} , 
 	{ "name": "A_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "Addr_A" }} , 
 	{ "name": "A_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "EN_A" }} , 
 	{ "name": "A_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_1", "role": "WEN_A" }} , 
 	{ "name": "A_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "Din_A" }} , 
 	{ "name": "A_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "Dout_A" }} , 
 	{ "name": "A_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "Addr_A" }} , 
 	{ "name": "A_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "EN_A" }} , 
 	{ "name": "A_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_2", "role": "WEN_A" }} , 
 	{ "name": "A_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "Din_A" }} , 
 	{ "name": "A_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "Dout_A" }} , 
 	{ "name": "A_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "Addr_A" }} , 
 	{ "name": "A_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "EN_A" }} , 
 	{ "name": "A_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_3", "role": "WEN_A" }} , 
 	{ "name": "A_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "Din_A" }} , 
 	{ "name": "A_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "Dout_A" }} , 
 	{ "name": "A_4_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_4", "role": "Addr_A" }} , 
 	{ "name": "A_4_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_4", "role": "EN_A" }} , 
 	{ "name": "A_4_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_4", "role": "WEN_A" }} , 
 	{ "name": "A_4_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_4", "role": "Din_A" }} , 
 	{ "name": "A_4_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_4", "role": "Dout_A" }} , 
 	{ "name": "A_5_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_5", "role": "Addr_A" }} , 
 	{ "name": "A_5_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_5", "role": "EN_A" }} , 
 	{ "name": "A_5_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_5", "role": "WEN_A" }} , 
 	{ "name": "A_5_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_5", "role": "Din_A" }} , 
 	{ "name": "A_5_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_5", "role": "Dout_A" }} , 
 	{ "name": "B_2_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_load", "role": "default" }} , 
 	{ "name": "B_0_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_load", "role": "default" }} , 
 	{ "name": "B_4_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_load", "role": "default" }} , 
 	{ "name": "B_3_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_load", "role": "default" }} , 
 	{ "name": "B_5_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_load", "role": "default" }} , 
 	{ "name": "B_1_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_load", "role": "default" }} , 
 	{ "name": "B_2_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_load_1", "role": "default" }} , 
 	{ "name": "B_0_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_load_1", "role": "default" }} , 
 	{ "name": "B_4_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_load_1", "role": "default" }} , 
 	{ "name": "B_3_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_load_1", "role": "default" }} , 
 	{ "name": "B_5_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_load_1", "role": "default" }} , 
 	{ "name": "B_1_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_load_1", "role": "default" }} , 
 	{ "name": "B_2_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_load_2", "role": "default" }} , 
 	{ "name": "B_0_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_load_2", "role": "default" }} , 
 	{ "name": "B_4_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_load_2", "role": "default" }} , 
 	{ "name": "B_3_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_load_2", "role": "default" }} , 
 	{ "name": "B_5_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_load_2", "role": "default" }} , 
 	{ "name": "B_1_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_load_2", "role": "default" }} , 
 	{ "name": "B_2_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_load_3", "role": "default" }} , 
 	{ "name": "B_0_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_load_3", "role": "default" }} , 
 	{ "name": "B_4_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_load_3", "role": "default" }} , 
 	{ "name": "B_3_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_load_3", "role": "default" }} , 
 	{ "name": "B_5_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_load_3", "role": "default" }} , 
 	{ "name": "B_1_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_load_3", "role": "default" }} , 
 	{ "name": "B_2_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_load_4", "role": "default" }} , 
 	{ "name": "B_0_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_load_4", "role": "default" }} , 
 	{ "name": "B_4_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_load_4", "role": "default" }} , 
 	{ "name": "B_3_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_load_4", "role": "default" }} , 
 	{ "name": "B_5_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_load_4", "role": "default" }} , 
 	{ "name": "B_1_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_load_4", "role": "default" }} , 
 	{ "name": "B_2_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_load_5", "role": "default" }} , 
 	{ "name": "B_0_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_load_5", "role": "default" }} , 
 	{ "name": "B_4_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_load_5", "role": "default" }} , 
 	{ "name": "B_3_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_load_5", "role": "default" }} , 
 	{ "name": "B_5_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_load_5", "role": "default" }} , 
 	{ "name": "B_1_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_load_5", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "matrix_mult_partition_one_dim_Pipeline_VITIS_LOOP_62_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "C", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "A_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "A_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "A_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "A_3", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "A_4", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "A_5", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "B_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_load_5", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrix_mult_partition_one_dim_Pipeline_VITIS_LOOP_62_1 {
		C {Type O LastRead -1 FirstWrite 1}
		A_0 {Type I LastRead 0 FirstWrite -1}
		A_1 {Type I LastRead 0 FirstWrite -1}
		A_2 {Type I LastRead 0 FirstWrite -1}
		A_3 {Type I LastRead 0 FirstWrite -1}
		A_4 {Type I LastRead 0 FirstWrite -1}
		A_5 {Type I LastRead 0 FirstWrite -1}
		B_2_load {Type I LastRead 0 FirstWrite -1}
		B_0_load {Type I LastRead 0 FirstWrite -1}
		B_4_load {Type I LastRead 0 FirstWrite -1}
		B_3_load {Type I LastRead 0 FirstWrite -1}
		B_5_load {Type I LastRead 0 FirstWrite -1}
		B_1_load {Type I LastRead 0 FirstWrite -1}
		B_2_load_1 {Type I LastRead 0 FirstWrite -1}
		B_0_load_1 {Type I LastRead 0 FirstWrite -1}
		B_4_load_1 {Type I LastRead 0 FirstWrite -1}
		B_3_load_1 {Type I LastRead 0 FirstWrite -1}
		B_5_load_1 {Type I LastRead 0 FirstWrite -1}
		B_1_load_1 {Type I LastRead 0 FirstWrite -1}
		B_2_load_2 {Type I LastRead 0 FirstWrite -1}
		B_0_load_2 {Type I LastRead 0 FirstWrite -1}
		B_4_load_2 {Type I LastRead 0 FirstWrite -1}
		B_3_load_2 {Type I LastRead 0 FirstWrite -1}
		B_5_load_2 {Type I LastRead 0 FirstWrite -1}
		B_1_load_2 {Type I LastRead 0 FirstWrite -1}
		B_2_load_3 {Type I LastRead 0 FirstWrite -1}
		B_0_load_3 {Type I LastRead 0 FirstWrite -1}
		B_4_load_3 {Type I LastRead 0 FirstWrite -1}
		B_3_load_3 {Type I LastRead 0 FirstWrite -1}
		B_5_load_3 {Type I LastRead 0 FirstWrite -1}
		B_1_load_3 {Type I LastRead 0 FirstWrite -1}
		B_2_load_4 {Type I LastRead 0 FirstWrite -1}
		B_0_load_4 {Type I LastRead 0 FirstWrite -1}
		B_4_load_4 {Type I LastRead 0 FirstWrite -1}
		B_3_load_4 {Type I LastRead 0 FirstWrite -1}
		B_5_load_4 {Type I LastRead 0 FirstWrite -1}
		B_1_load_4 {Type I LastRead 0 FirstWrite -1}
		B_2_load_5 {Type I LastRead 0 FirstWrite -1}
		B_0_load_5 {Type I LastRead 0 FirstWrite -1}
		B_4_load_5 {Type I LastRead 0 FirstWrite -1}
		B_3_load_5 {Type I LastRead 0 FirstWrite -1}
		B_5_load_5 {Type I LastRead 0 FirstWrite -1}
		B_1_load_5 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20", "Max" : "20"}
	, {"Name" : "Interval", "Min" : "20", "Max" : "20"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	C { bram {  { C_Addr_A MemPortADDR2 1 32 }  { C_EN_A MemPortCE2 1 1 }  { C_WEN_A MemPortWE2 1 4 }  { C_Din_A MemPortDIN2 1 32 }  { C_Dout_A MemPortDOUT2 0 32 }  { C_Addr_B MemPortADDR2 1 32 }  { C_EN_B MemPortCE2 1 1 }  { C_WEN_B MemPortWE2 1 4 }  { C_Din_B MemPortDIN2 1 32 }  { C_Dout_B MemPortDOUT2 0 32 } } }
	A_0 { bram {  { A_0_Addr_A MemPortADDR2 1 32 }  { A_0_EN_A MemPortCE2 1 1 }  { A_0_WEN_A MemPortWE2 1 4 }  { A_0_Din_A MemPortDIN2 1 32 }  { A_0_Dout_A MemPortDOUT2 0 32 } } }
	A_1 { bram {  { A_1_Addr_A MemPortADDR2 1 32 }  { A_1_EN_A MemPortCE2 1 1 }  { A_1_WEN_A MemPortWE2 1 4 }  { A_1_Din_A MemPortDIN2 1 32 }  { A_1_Dout_A MemPortDOUT2 0 32 } } }
	A_2 { bram {  { A_2_Addr_A MemPortADDR2 1 32 }  { A_2_EN_A MemPortCE2 1 1 }  { A_2_WEN_A MemPortWE2 1 4 }  { A_2_Din_A MemPortDIN2 1 32 }  { A_2_Dout_A MemPortDOUT2 0 32 } } }
	A_3 { bram {  { A_3_Addr_A MemPortADDR2 1 32 }  { A_3_EN_A MemPortCE2 1 1 }  { A_3_WEN_A MemPortWE2 1 4 }  { A_3_Din_A MemPortDIN2 1 32 }  { A_3_Dout_A MemPortDOUT2 0 32 } } }
	A_4 { bram {  { A_4_Addr_A MemPortADDR2 1 32 }  { A_4_EN_A MemPortCE2 1 1 }  { A_4_WEN_A MemPortWE2 1 4 }  { A_4_Din_A MemPortDIN2 1 32 }  { A_4_Dout_A MemPortDOUT2 0 32 } } }
	A_5 { bram {  { A_5_Addr_A MemPortADDR2 1 32 }  { A_5_EN_A MemPortCE2 1 1 }  { A_5_WEN_A MemPortWE2 1 4 }  { A_5_Din_A MemPortDIN2 1 32 }  { A_5_Dout_A MemPortDOUT2 0 32 } } }
	B_2_load { ap_none {  { B_2_load in_data 0 32 } } }
	B_0_load { ap_none {  { B_0_load in_data 0 32 } } }
	B_4_load { ap_none {  { B_4_load in_data 0 32 } } }
	B_3_load { ap_none {  { B_3_load in_data 0 32 } } }
	B_5_load { ap_none {  { B_5_load in_data 0 32 } } }
	B_1_load { ap_none {  { B_1_load in_data 0 32 } } }
	B_2_load_1 { ap_none {  { B_2_load_1 in_data 0 32 } } }
	B_0_load_1 { ap_none {  { B_0_load_1 in_data 0 32 } } }
	B_4_load_1 { ap_none {  { B_4_load_1 in_data 0 32 } } }
	B_3_load_1 { ap_none {  { B_3_load_1 in_data 0 32 } } }
	B_5_load_1 { ap_none {  { B_5_load_1 in_data 0 32 } } }
	B_1_load_1 { ap_none {  { B_1_load_1 in_data 0 32 } } }
	B_2_load_2 { ap_none {  { B_2_load_2 in_data 0 32 } } }
	B_0_load_2 { ap_none {  { B_0_load_2 in_data 0 32 } } }
	B_4_load_2 { ap_none {  { B_4_load_2 in_data 0 32 } } }
	B_3_load_2 { ap_none {  { B_3_load_2 in_data 0 32 } } }
	B_5_load_2 { ap_none {  { B_5_load_2 in_data 0 32 } } }
	B_1_load_2 { ap_none {  { B_1_load_2 in_data 0 32 } } }
	B_2_load_3 { ap_none {  { B_2_load_3 in_data 0 32 } } }
	B_0_load_3 { ap_none {  { B_0_load_3 in_data 0 32 } } }
	B_4_load_3 { ap_none {  { B_4_load_3 in_data 0 32 } } }
	B_3_load_3 { ap_none {  { B_3_load_3 in_data 0 32 } } }
	B_5_load_3 { ap_none {  { B_5_load_3 in_data 0 32 } } }
	B_1_load_3 { ap_none {  { B_1_load_3 in_data 0 32 } } }
	B_2_load_4 { ap_none {  { B_2_load_4 in_data 0 32 } } }
	B_0_load_4 { ap_none {  { B_0_load_4 in_data 0 32 } } }
	B_4_load_4 { ap_none {  { B_4_load_4 in_data 0 32 } } }
	B_3_load_4 { ap_none {  { B_3_load_4 in_data 0 32 } } }
	B_5_load_4 { ap_none {  { B_5_load_4 in_data 0 32 } } }
	B_1_load_4 { ap_none {  { B_1_load_4 in_data 0 32 } } }
	B_2_load_5 { ap_none {  { B_2_load_5 in_data 0 32 } } }
	B_0_load_5 { ap_none {  { B_0_load_5 in_data 0 32 } } }
	B_4_load_5 { ap_none {  { B_4_load_5 in_data 0 32 } } }
	B_3_load_5 { ap_none {  { B_3_load_5 in_data 0 32 } } }
	B_5_load_5 { ap_none {  { B_5_load_5 in_data 0 32 } } }
	B_1_load_5 { ap_none {  { B_1_load_5 in_data 0 32 } } }
}
