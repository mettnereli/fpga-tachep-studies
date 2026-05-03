set moduleName q5_block_partition
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
set C_modelName {q5_block_partition}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict A_0 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_1 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_2 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict A_3 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_0 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_1 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_2 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict B_3 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_0 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_1 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_2 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict C_3 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict D_0 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict D_1 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict D_2 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict D_3 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict E_0 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict E_1 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict E_2 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict E_3 { MEM_WIDTH 32 MEM_SIZE 64 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ A_0 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ A_1 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ A_2 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ A_3 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ B_0 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ B_1 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ B_2 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ B_3 int 32 regular {array 16 { 1 1 } 1 1 }  }
	{ C_0 int 32 regular {array 16 { 0 0 } 0 1 }  }
	{ C_1 int 32 regular {array 16 { 0 0 } 0 1 }  }
	{ C_2 int 32 regular {array 16 { 0 0 } 0 1 }  }
	{ C_3 int 32 regular {array 16 { 0 0 } 0 1 }  }
	{ D_0 int 32 regular {array 16 { 0 0 } 0 1 }  }
	{ D_1 int 32 regular {array 16 { 0 0 } 0 1 }  }
	{ D_2 int 32 regular {array 16 { 0 0 } 0 1 }  }
	{ D_3 int 32 regular {array 16 { 0 0 } 0 1 }  }
	{ E_0 int 32 regular {array 16 { 0 0 } 0 1 }  }
	{ E_1 int 32 regular {array 16 { 0 0 } 0 1 }  }
	{ E_2 int 32 regular {array 16 { 0 0 } 0 1 }  }
	{ E_3 int 32 regular {array 16 { 0 0 } 0 1 }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "A_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "D_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "E_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "E_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "E_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "E_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 164
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ A_0_address0 sc_out sc_lv 4 signal 0 } 
	{ A_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ A_0_q0 sc_in sc_lv 32 signal 0 } 
	{ A_0_address1 sc_out sc_lv 4 signal 0 } 
	{ A_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ A_0_q1 sc_in sc_lv 32 signal 0 } 
	{ A_1_address0 sc_out sc_lv 4 signal 1 } 
	{ A_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ A_1_q0 sc_in sc_lv 32 signal 1 } 
	{ A_1_address1 sc_out sc_lv 4 signal 1 } 
	{ A_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ A_1_q1 sc_in sc_lv 32 signal 1 } 
	{ A_2_address0 sc_out sc_lv 4 signal 2 } 
	{ A_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ A_2_q0 sc_in sc_lv 32 signal 2 } 
	{ A_2_address1 sc_out sc_lv 4 signal 2 } 
	{ A_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ A_2_q1 sc_in sc_lv 32 signal 2 } 
	{ A_3_address0 sc_out sc_lv 4 signal 3 } 
	{ A_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ A_3_q0 sc_in sc_lv 32 signal 3 } 
	{ A_3_address1 sc_out sc_lv 4 signal 3 } 
	{ A_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ A_3_q1 sc_in sc_lv 32 signal 3 } 
	{ B_0_address0 sc_out sc_lv 4 signal 4 } 
	{ B_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ B_0_q0 sc_in sc_lv 32 signal 4 } 
	{ B_0_address1 sc_out sc_lv 4 signal 4 } 
	{ B_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ B_0_q1 sc_in sc_lv 32 signal 4 } 
	{ B_1_address0 sc_out sc_lv 4 signal 5 } 
	{ B_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ B_1_q0 sc_in sc_lv 32 signal 5 } 
	{ B_1_address1 sc_out sc_lv 4 signal 5 } 
	{ B_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ B_1_q1 sc_in sc_lv 32 signal 5 } 
	{ B_2_address0 sc_out sc_lv 4 signal 6 } 
	{ B_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ B_2_q0 sc_in sc_lv 32 signal 6 } 
	{ B_2_address1 sc_out sc_lv 4 signal 6 } 
	{ B_2_ce1 sc_out sc_logic 1 signal 6 } 
	{ B_2_q1 sc_in sc_lv 32 signal 6 } 
	{ B_3_address0 sc_out sc_lv 4 signal 7 } 
	{ B_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ B_3_q0 sc_in sc_lv 32 signal 7 } 
	{ B_3_address1 sc_out sc_lv 4 signal 7 } 
	{ B_3_ce1 sc_out sc_logic 1 signal 7 } 
	{ B_3_q1 sc_in sc_lv 32 signal 7 } 
	{ C_0_address0 sc_out sc_lv 4 signal 8 } 
	{ C_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ C_0_we0 sc_out sc_logic 1 signal 8 } 
	{ C_0_d0 sc_out sc_lv 32 signal 8 } 
	{ C_0_address1 sc_out sc_lv 4 signal 8 } 
	{ C_0_ce1 sc_out sc_logic 1 signal 8 } 
	{ C_0_we1 sc_out sc_logic 1 signal 8 } 
	{ C_0_d1 sc_out sc_lv 32 signal 8 } 
	{ C_1_address0 sc_out sc_lv 4 signal 9 } 
	{ C_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ C_1_we0 sc_out sc_logic 1 signal 9 } 
	{ C_1_d0 sc_out sc_lv 32 signal 9 } 
	{ C_1_address1 sc_out sc_lv 4 signal 9 } 
	{ C_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ C_1_we1 sc_out sc_logic 1 signal 9 } 
	{ C_1_d1 sc_out sc_lv 32 signal 9 } 
	{ C_2_address0 sc_out sc_lv 4 signal 10 } 
	{ C_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ C_2_we0 sc_out sc_logic 1 signal 10 } 
	{ C_2_d0 sc_out sc_lv 32 signal 10 } 
	{ C_2_address1 sc_out sc_lv 4 signal 10 } 
	{ C_2_ce1 sc_out sc_logic 1 signal 10 } 
	{ C_2_we1 sc_out sc_logic 1 signal 10 } 
	{ C_2_d1 sc_out sc_lv 32 signal 10 } 
	{ C_3_address0 sc_out sc_lv 4 signal 11 } 
	{ C_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ C_3_we0 sc_out sc_logic 1 signal 11 } 
	{ C_3_d0 sc_out sc_lv 32 signal 11 } 
	{ C_3_address1 sc_out sc_lv 4 signal 11 } 
	{ C_3_ce1 sc_out sc_logic 1 signal 11 } 
	{ C_3_we1 sc_out sc_logic 1 signal 11 } 
	{ C_3_d1 sc_out sc_lv 32 signal 11 } 
	{ D_0_address0 sc_out sc_lv 4 signal 12 } 
	{ D_0_ce0 sc_out sc_logic 1 signal 12 } 
	{ D_0_we0 sc_out sc_logic 1 signal 12 } 
	{ D_0_d0 sc_out sc_lv 32 signal 12 } 
	{ D_0_address1 sc_out sc_lv 4 signal 12 } 
	{ D_0_ce1 sc_out sc_logic 1 signal 12 } 
	{ D_0_we1 sc_out sc_logic 1 signal 12 } 
	{ D_0_d1 sc_out sc_lv 32 signal 12 } 
	{ D_1_address0 sc_out sc_lv 4 signal 13 } 
	{ D_1_ce0 sc_out sc_logic 1 signal 13 } 
	{ D_1_we0 sc_out sc_logic 1 signal 13 } 
	{ D_1_d0 sc_out sc_lv 32 signal 13 } 
	{ D_1_address1 sc_out sc_lv 4 signal 13 } 
	{ D_1_ce1 sc_out sc_logic 1 signal 13 } 
	{ D_1_we1 sc_out sc_logic 1 signal 13 } 
	{ D_1_d1 sc_out sc_lv 32 signal 13 } 
	{ D_2_address0 sc_out sc_lv 4 signal 14 } 
	{ D_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ D_2_we0 sc_out sc_logic 1 signal 14 } 
	{ D_2_d0 sc_out sc_lv 32 signal 14 } 
	{ D_2_address1 sc_out sc_lv 4 signal 14 } 
	{ D_2_ce1 sc_out sc_logic 1 signal 14 } 
	{ D_2_we1 sc_out sc_logic 1 signal 14 } 
	{ D_2_d1 sc_out sc_lv 32 signal 14 } 
	{ D_3_address0 sc_out sc_lv 4 signal 15 } 
	{ D_3_ce0 sc_out sc_logic 1 signal 15 } 
	{ D_3_we0 sc_out sc_logic 1 signal 15 } 
	{ D_3_d0 sc_out sc_lv 32 signal 15 } 
	{ D_3_address1 sc_out sc_lv 4 signal 15 } 
	{ D_3_ce1 sc_out sc_logic 1 signal 15 } 
	{ D_3_we1 sc_out sc_logic 1 signal 15 } 
	{ D_3_d1 sc_out sc_lv 32 signal 15 } 
	{ E_0_address0 sc_out sc_lv 4 signal 16 } 
	{ E_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ E_0_we0 sc_out sc_logic 1 signal 16 } 
	{ E_0_d0 sc_out sc_lv 32 signal 16 } 
	{ E_0_address1 sc_out sc_lv 4 signal 16 } 
	{ E_0_ce1 sc_out sc_logic 1 signal 16 } 
	{ E_0_we1 sc_out sc_logic 1 signal 16 } 
	{ E_0_d1 sc_out sc_lv 32 signal 16 } 
	{ E_1_address0 sc_out sc_lv 4 signal 17 } 
	{ E_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ E_1_we0 sc_out sc_logic 1 signal 17 } 
	{ E_1_d0 sc_out sc_lv 32 signal 17 } 
	{ E_1_address1 sc_out sc_lv 4 signal 17 } 
	{ E_1_ce1 sc_out sc_logic 1 signal 17 } 
	{ E_1_we1 sc_out sc_logic 1 signal 17 } 
	{ E_1_d1 sc_out sc_lv 32 signal 17 } 
	{ E_2_address0 sc_out sc_lv 4 signal 18 } 
	{ E_2_ce0 sc_out sc_logic 1 signal 18 } 
	{ E_2_we0 sc_out sc_logic 1 signal 18 } 
	{ E_2_d0 sc_out sc_lv 32 signal 18 } 
	{ E_2_address1 sc_out sc_lv 4 signal 18 } 
	{ E_2_ce1 sc_out sc_logic 1 signal 18 } 
	{ E_2_we1 sc_out sc_logic 1 signal 18 } 
	{ E_2_d1 sc_out sc_lv 32 signal 18 } 
	{ E_3_address0 sc_out sc_lv 4 signal 19 } 
	{ E_3_ce0 sc_out sc_logic 1 signal 19 } 
	{ E_3_we0 sc_out sc_logic 1 signal 19 } 
	{ E_3_d0 sc_out sc_lv 32 signal 19 } 
	{ E_3_address1 sc_out sc_lv 4 signal 19 } 
	{ E_3_ce1 sc_out sc_logic 1 signal 19 } 
	{ E_3_we1 sc_out sc_logic 1 signal 19 } 
	{ E_3_d1 sc_out sc_lv 32 signal 19 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"q5_block_partition","role":"start","value":"0","valid_bit":"0"},{"name":"q5_block_partition","role":"continue","value":"0","valid_bit":"4"},{"name":"q5_block_partition","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"q5_block_partition","role":"start","value":"0","valid_bit":"0"},{"name":"q5_block_partition","role":"done","value":"0","valid_bit":"1"},{"name":"q5_block_partition","role":"idle","value":"0","valid_bit":"2"},{"name":"q5_block_partition","role":"ready","value":"0","valid_bit":"3"},{"name":"q5_block_partition","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "A_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_0", "role": "address0" }} , 
 	{ "name": "A_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_0", "role": "ce0" }} , 
 	{ "name": "A_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_0", "role": "q0" }} , 
 	{ "name": "A_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_0", "role": "address1" }} , 
 	{ "name": "A_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_0", "role": "ce1" }} , 
 	{ "name": "A_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_0", "role": "q1" }} , 
 	{ "name": "A_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_1", "role": "address0" }} , 
 	{ "name": "A_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "ce0" }} , 
 	{ "name": "A_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "q0" }} , 
 	{ "name": "A_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_1", "role": "address1" }} , 
 	{ "name": "A_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_1", "role": "ce1" }} , 
 	{ "name": "A_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1", "role": "q1" }} , 
 	{ "name": "A_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_2", "role": "address0" }} , 
 	{ "name": "A_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "ce0" }} , 
 	{ "name": "A_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "q0" }} , 
 	{ "name": "A_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_2", "role": "address1" }} , 
 	{ "name": "A_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_2", "role": "ce1" }} , 
 	{ "name": "A_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2", "role": "q1" }} , 
 	{ "name": "A_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_3", "role": "address0" }} , 
 	{ "name": "A_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "ce0" }} , 
 	{ "name": "A_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "q0" }} , 
 	{ "name": "A_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_3", "role": "address1" }} , 
 	{ "name": "A_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A_3", "role": "ce1" }} , 
 	{ "name": "A_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3", "role": "q1" }} , 
 	{ "name": "B_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_0", "role": "address0" }} , 
 	{ "name": "B_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_0", "role": "ce0" }} , 
 	{ "name": "B_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0", "role": "q0" }} , 
 	{ "name": "B_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_0", "role": "address1" }} , 
 	{ "name": "B_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_0", "role": "ce1" }} , 
 	{ "name": "B_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0", "role": "q1" }} , 
 	{ "name": "B_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_1", "role": "address0" }} , 
 	{ "name": "B_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_1", "role": "ce0" }} , 
 	{ "name": "B_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1", "role": "q0" }} , 
 	{ "name": "B_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_1", "role": "address1" }} , 
 	{ "name": "B_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_1", "role": "ce1" }} , 
 	{ "name": "B_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1", "role": "q1" }} , 
 	{ "name": "B_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_2", "role": "address0" }} , 
 	{ "name": "B_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_2", "role": "ce0" }} , 
 	{ "name": "B_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2", "role": "q0" }} , 
 	{ "name": "B_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_2", "role": "address1" }} , 
 	{ "name": "B_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_2", "role": "ce1" }} , 
 	{ "name": "B_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2", "role": "q1" }} , 
 	{ "name": "B_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_3", "role": "address0" }} , 
 	{ "name": "B_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_3", "role": "ce0" }} , 
 	{ "name": "B_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3", "role": "q0" }} , 
 	{ "name": "B_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_3", "role": "address1" }} , 
 	{ "name": "B_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B_3", "role": "ce1" }} , 
 	{ "name": "B_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3", "role": "q1" }} , 
 	{ "name": "C_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_0", "role": "address0" }} , 
 	{ "name": "C_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_0", "role": "ce0" }} , 
 	{ "name": "C_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_0", "role": "we0" }} , 
 	{ "name": "C_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_0", "role": "d0" }} , 
 	{ "name": "C_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_0", "role": "address1" }} , 
 	{ "name": "C_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_0", "role": "ce1" }} , 
 	{ "name": "C_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_0", "role": "we1" }} , 
 	{ "name": "C_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_0", "role": "d1" }} , 
 	{ "name": "C_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_1", "role": "address0" }} , 
 	{ "name": "C_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "ce0" }} , 
 	{ "name": "C_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "we0" }} , 
 	{ "name": "C_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_1", "role": "d0" }} , 
 	{ "name": "C_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_1", "role": "address1" }} , 
 	{ "name": "C_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "ce1" }} , 
 	{ "name": "C_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_1", "role": "we1" }} , 
 	{ "name": "C_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_1", "role": "d1" }} , 
 	{ "name": "C_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_2", "role": "address0" }} , 
 	{ "name": "C_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_2", "role": "ce0" }} , 
 	{ "name": "C_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_2", "role": "we0" }} , 
 	{ "name": "C_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_2", "role": "d0" }} , 
 	{ "name": "C_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_2", "role": "address1" }} , 
 	{ "name": "C_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_2", "role": "ce1" }} , 
 	{ "name": "C_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_2", "role": "we1" }} , 
 	{ "name": "C_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_2", "role": "d1" }} , 
 	{ "name": "C_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_3", "role": "address0" }} , 
 	{ "name": "C_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_3", "role": "ce0" }} , 
 	{ "name": "C_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_3", "role": "we0" }} , 
 	{ "name": "C_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_3", "role": "d0" }} , 
 	{ "name": "C_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "C_3", "role": "address1" }} , 
 	{ "name": "C_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_3", "role": "ce1" }} , 
 	{ "name": "C_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C_3", "role": "we1" }} , 
 	{ "name": "C_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_3", "role": "d1" }} , 
 	{ "name": "D_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_0", "role": "address0" }} , 
 	{ "name": "D_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_0", "role": "ce0" }} , 
 	{ "name": "D_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_0", "role": "we0" }} , 
 	{ "name": "D_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_0", "role": "d0" }} , 
 	{ "name": "D_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_0", "role": "address1" }} , 
 	{ "name": "D_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_0", "role": "ce1" }} , 
 	{ "name": "D_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_0", "role": "we1" }} , 
 	{ "name": "D_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_0", "role": "d1" }} , 
 	{ "name": "D_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_1", "role": "address0" }} , 
 	{ "name": "D_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_1", "role": "ce0" }} , 
 	{ "name": "D_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_1", "role": "we0" }} , 
 	{ "name": "D_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_1", "role": "d0" }} , 
 	{ "name": "D_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_1", "role": "address1" }} , 
 	{ "name": "D_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_1", "role": "ce1" }} , 
 	{ "name": "D_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_1", "role": "we1" }} , 
 	{ "name": "D_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_1", "role": "d1" }} , 
 	{ "name": "D_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_2", "role": "address0" }} , 
 	{ "name": "D_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_2", "role": "ce0" }} , 
 	{ "name": "D_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_2", "role": "we0" }} , 
 	{ "name": "D_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_2", "role": "d0" }} , 
 	{ "name": "D_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_2", "role": "address1" }} , 
 	{ "name": "D_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_2", "role": "ce1" }} , 
 	{ "name": "D_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_2", "role": "we1" }} , 
 	{ "name": "D_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_2", "role": "d1" }} , 
 	{ "name": "D_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_3", "role": "address0" }} , 
 	{ "name": "D_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_3", "role": "ce0" }} , 
 	{ "name": "D_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_3", "role": "we0" }} , 
 	{ "name": "D_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_3", "role": "d0" }} , 
 	{ "name": "D_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "D_3", "role": "address1" }} , 
 	{ "name": "D_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_3", "role": "ce1" }} , 
 	{ "name": "D_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "D_3", "role": "we1" }} , 
 	{ "name": "D_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "D_3", "role": "d1" }} , 
 	{ "name": "E_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "E_0", "role": "address0" }} , 
 	{ "name": "E_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E_0", "role": "ce0" }} , 
 	{ "name": "E_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E_0", "role": "we0" }} , 
 	{ "name": "E_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "E_0", "role": "d0" }} , 
 	{ "name": "E_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "E_0", "role": "address1" }} , 
 	{ "name": "E_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E_0", "role": "ce1" }} , 
 	{ "name": "E_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E_0", "role": "we1" }} , 
 	{ "name": "E_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "E_0", "role": "d1" }} , 
 	{ "name": "E_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "E_1", "role": "address0" }} , 
 	{ "name": "E_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E_1", "role": "ce0" }} , 
 	{ "name": "E_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E_1", "role": "we0" }} , 
 	{ "name": "E_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "E_1", "role": "d0" }} , 
 	{ "name": "E_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "E_1", "role": "address1" }} , 
 	{ "name": "E_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E_1", "role": "ce1" }} , 
 	{ "name": "E_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E_1", "role": "we1" }} , 
 	{ "name": "E_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "E_1", "role": "d1" }} , 
 	{ "name": "E_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "E_2", "role": "address0" }} , 
 	{ "name": "E_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E_2", "role": "ce0" }} , 
 	{ "name": "E_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E_2", "role": "we0" }} , 
 	{ "name": "E_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "E_2", "role": "d0" }} , 
 	{ "name": "E_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "E_2", "role": "address1" }} , 
 	{ "name": "E_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E_2", "role": "ce1" }} , 
 	{ "name": "E_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E_2", "role": "we1" }} , 
 	{ "name": "E_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "E_2", "role": "d1" }} , 
 	{ "name": "E_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "E_3", "role": "address0" }} , 
 	{ "name": "E_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E_3", "role": "ce0" }} , 
 	{ "name": "E_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E_3", "role": "we0" }} , 
 	{ "name": "E_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "E_3", "role": "d0" }} , 
 	{ "name": "E_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "E_3", "role": "address1" }} , 
 	{ "name": "E_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E_3", "role": "ce1" }} , 
 	{ "name": "E_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "E_3", "role": "we1" }} , 
 	{ "name": "E_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "E_3", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
		"CDFG" : "q5_block_partition",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "A_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "B_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "C_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "D_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "E_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "E_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "E_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "E_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U4", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U5", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U6", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U7", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U8", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U9", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U10", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U11", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_32_1_1_U12", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	q5_block_partition {
		A_0 {Type I LastRead 2 FirstWrite -1}
		A_1 {Type I LastRead 2 FirstWrite -1}
		A_2 {Type I LastRead 2 FirstWrite -1}
		A_3 {Type I LastRead 2 FirstWrite -1}
		B_0 {Type I LastRead 2 FirstWrite -1}
		B_1 {Type I LastRead 2 FirstWrite -1}
		B_2 {Type I LastRead 2 FirstWrite -1}
		B_3 {Type I LastRead 2 FirstWrite -1}
		C_0 {Type O LastRead -1 FirstWrite 1}
		C_1 {Type O LastRead -1 FirstWrite 1}
		C_2 {Type O LastRead -1 FirstWrite 1}
		C_3 {Type O LastRead -1 FirstWrite 1}
		D_0 {Type O LastRead -1 FirstWrite 1}
		D_1 {Type O LastRead -1 FirstWrite 1}
		D_2 {Type O LastRead -1 FirstWrite 1}
		D_3 {Type O LastRead -1 FirstWrite 1}
		E_0 {Type O LastRead -1 FirstWrite 1}
		E_1 {Type O LastRead -1 FirstWrite 1}
		E_2 {Type O LastRead -1 FirstWrite 1}
		E_3 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "35", "Max" : "35"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	A_0 { ap_memory {  { A_0_address0 mem_address 1 4 }  { A_0_ce0 mem_ce 1 1 }  { A_0_q0 mem_dout 0 32 }  { A_0_address1 MemPortADDR2 1 4 }  { A_0_ce1 MemPortCE2 1 1 }  { A_0_q1 MemPortDOUT2 0 32 } } }
	A_1 { ap_memory {  { A_1_address0 mem_address 1 4 }  { A_1_ce0 mem_ce 1 1 }  { A_1_q0 mem_dout 0 32 }  { A_1_address1 MemPortADDR2 1 4 }  { A_1_ce1 MemPortCE2 1 1 }  { A_1_q1 MemPortDOUT2 0 32 } } }
	A_2 { ap_memory {  { A_2_address0 mem_address 1 4 }  { A_2_ce0 mem_ce 1 1 }  { A_2_q0 mem_dout 0 32 }  { A_2_address1 MemPortADDR2 1 4 }  { A_2_ce1 MemPortCE2 1 1 }  { A_2_q1 MemPortDOUT2 0 32 } } }
	A_3 { ap_memory {  { A_3_address0 mem_address 1 4 }  { A_3_ce0 mem_ce 1 1 }  { A_3_q0 mem_dout 0 32 }  { A_3_address1 MemPortADDR2 1 4 }  { A_3_ce1 MemPortCE2 1 1 }  { A_3_q1 MemPortDOUT2 0 32 } } }
	B_0 { ap_memory {  { B_0_address0 mem_address 1 4 }  { B_0_ce0 mem_ce 1 1 }  { B_0_q0 mem_dout 0 32 }  { B_0_address1 MemPortADDR2 1 4 }  { B_0_ce1 MemPortCE2 1 1 }  { B_0_q1 MemPortDOUT2 0 32 } } }
	B_1 { ap_memory {  { B_1_address0 mem_address 1 4 }  { B_1_ce0 mem_ce 1 1 }  { B_1_q0 mem_dout 0 32 }  { B_1_address1 MemPortADDR2 1 4 }  { B_1_ce1 MemPortCE2 1 1 }  { B_1_q1 MemPortDOUT2 0 32 } } }
	B_2 { ap_memory {  { B_2_address0 mem_address 1 4 }  { B_2_ce0 mem_ce 1 1 }  { B_2_q0 mem_dout 0 32 }  { B_2_address1 MemPortADDR2 1 4 }  { B_2_ce1 MemPortCE2 1 1 }  { B_2_q1 MemPortDOUT2 0 32 } } }
	B_3 { ap_memory {  { B_3_address0 mem_address 1 4 }  { B_3_ce0 mem_ce 1 1 }  { B_3_q0 mem_dout 0 32 }  { B_3_address1 MemPortADDR2 1 4 }  { B_3_ce1 MemPortCE2 1 1 }  { B_3_q1 MemPortDOUT2 0 32 } } }
	C_0 { ap_memory {  { C_0_address0 mem_address 1 4 }  { C_0_ce0 mem_ce 1 1 }  { C_0_we0 mem_we 1 1 }  { C_0_d0 mem_din 1 32 }  { C_0_address1 MemPortADDR2 1 4 }  { C_0_ce1 MemPortCE2 1 1 }  { C_0_we1 MemPortWE2 1 1 }  { C_0_d1 MemPortDIN2 1 32 } } }
	C_1 { ap_memory {  { C_1_address0 mem_address 1 4 }  { C_1_ce0 mem_ce 1 1 }  { C_1_we0 mem_we 1 1 }  { C_1_d0 mem_din 1 32 }  { C_1_address1 MemPortADDR2 1 4 }  { C_1_ce1 MemPortCE2 1 1 }  { C_1_we1 MemPortWE2 1 1 }  { C_1_d1 MemPortDIN2 1 32 } } }
	C_2 { ap_memory {  { C_2_address0 mem_address 1 4 }  { C_2_ce0 mem_ce 1 1 }  { C_2_we0 mem_we 1 1 }  { C_2_d0 mem_din 1 32 }  { C_2_address1 MemPortADDR2 1 4 }  { C_2_ce1 MemPortCE2 1 1 }  { C_2_we1 MemPortWE2 1 1 }  { C_2_d1 MemPortDIN2 1 32 } } }
	C_3 { ap_memory {  { C_3_address0 mem_address 1 4 }  { C_3_ce0 mem_ce 1 1 }  { C_3_we0 mem_we 1 1 }  { C_3_d0 mem_din 1 32 }  { C_3_address1 MemPortADDR2 1 4 }  { C_3_ce1 MemPortCE2 1 1 }  { C_3_we1 MemPortWE2 1 1 }  { C_3_d1 MemPortDIN2 1 32 } } }
	D_0 { ap_memory {  { D_0_address0 mem_address 1 4 }  { D_0_ce0 mem_ce 1 1 }  { D_0_we0 mem_we 1 1 }  { D_0_d0 mem_din 1 32 }  { D_0_address1 MemPortADDR2 1 4 }  { D_0_ce1 MemPortCE2 1 1 }  { D_0_we1 MemPortWE2 1 1 }  { D_0_d1 MemPortDIN2 1 32 } } }
	D_1 { ap_memory {  { D_1_address0 mem_address 1 4 }  { D_1_ce0 mem_ce 1 1 }  { D_1_we0 mem_we 1 1 }  { D_1_d0 mem_din 1 32 }  { D_1_address1 MemPortADDR2 1 4 }  { D_1_ce1 MemPortCE2 1 1 }  { D_1_we1 MemPortWE2 1 1 }  { D_1_d1 MemPortDIN2 1 32 } } }
	D_2 { ap_memory {  { D_2_address0 mem_address 1 4 }  { D_2_ce0 mem_ce 1 1 }  { D_2_we0 mem_we 1 1 }  { D_2_d0 mem_din 1 32 }  { D_2_address1 MemPortADDR2 1 4 }  { D_2_ce1 MemPortCE2 1 1 }  { D_2_we1 MemPortWE2 1 1 }  { D_2_d1 MemPortDIN2 1 32 } } }
	D_3 { ap_memory {  { D_3_address0 mem_address 1 4 }  { D_3_ce0 mem_ce 1 1 }  { D_3_we0 mem_we 1 1 }  { D_3_d0 mem_din 1 32 }  { D_3_address1 MemPortADDR2 1 4 }  { D_3_ce1 MemPortCE2 1 1 }  { D_3_we1 MemPortWE2 1 1 }  { D_3_d1 MemPortDIN2 1 32 } } }
	E_0 { ap_memory {  { E_0_address0 mem_address 1 4 }  { E_0_ce0 mem_ce 1 1 }  { E_0_we0 mem_we 1 1 }  { E_0_d0 mem_din 1 32 }  { E_0_address1 MemPortADDR2 1 4 }  { E_0_ce1 MemPortCE2 1 1 }  { E_0_we1 MemPortWE2 1 1 }  { E_0_d1 MemPortDIN2 1 32 } } }
	E_1 { ap_memory {  { E_1_address0 mem_address 1 4 }  { E_1_ce0 mem_ce 1 1 }  { E_1_we0 mem_we 1 1 }  { E_1_d0 mem_din 1 32 }  { E_1_address1 MemPortADDR2 1 4 }  { E_1_ce1 MemPortCE2 1 1 }  { E_1_we1 MemPortWE2 1 1 }  { E_1_d1 MemPortDIN2 1 32 } } }
	E_2 { ap_memory {  { E_2_address0 mem_address 1 4 }  { E_2_ce0 mem_ce 1 1 }  { E_2_we0 mem_we 1 1 }  { E_2_d0 mem_din 1 32 }  { E_2_address1 MemPortADDR2 1 4 }  { E_2_ce1 MemPortCE2 1 1 }  { E_2_we1 MemPortWE2 1 1 }  { E_2_d1 MemPortDIN2 1 32 } } }
	E_3 { ap_memory {  { E_3_address0 mem_address 1 4 }  { E_3_ce0 mem_ce 1 1 }  { E_3_we0 mem_we 1 1 }  { E_3_d0 mem_din 1 32 }  { E_3_address1 MemPortADDR2 1 4 }  { E_3_ce1 MemPortCE2 1 1 }  { E_3_we1 MemPortWE2 1 1 }  { E_3_d1 MemPortDIN2 1 32 } } }
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
