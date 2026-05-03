set moduleName matrix_mult_partition_both_dims
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
set C_modelName {matrix_mult_partition_both_dims}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ A_0_0 int 32 regular {pointer 0}  }
	{ A_0_1 int 32 regular {pointer 0}  }
	{ A_0_2 int 32 regular {pointer 0}  }
	{ A_0_3 int 32 regular {pointer 0}  }
	{ A_0_4 int 32 regular {pointer 0}  }
	{ A_0_5 int 32 regular {pointer 0}  }
	{ A_1_0 int 32 regular {pointer 0}  }
	{ A_1_1 int 32 regular {pointer 0}  }
	{ A_1_2 int 32 regular {pointer 0}  }
	{ A_1_3 int 32 regular {pointer 0}  }
	{ A_1_4 int 32 regular {pointer 0}  }
	{ A_1_5 int 32 regular {pointer 0}  }
	{ A_2_0 int 32 regular {pointer 0}  }
	{ A_2_1 int 32 regular {pointer 0}  }
	{ A_2_2 int 32 regular {pointer 0}  }
	{ A_2_3 int 32 regular {pointer 0}  }
	{ A_2_4 int 32 regular {pointer 0}  }
	{ A_2_5 int 32 regular {pointer 0}  }
	{ A_3_0 int 32 regular {pointer 0}  }
	{ A_3_1 int 32 regular {pointer 0}  }
	{ A_3_2 int 32 regular {pointer 0}  }
	{ A_3_3 int 32 regular {pointer 0}  }
	{ A_3_4 int 32 regular {pointer 0}  }
	{ A_3_5 int 32 regular {pointer 0}  }
	{ A_4_0 int 32 regular {pointer 0}  }
	{ A_4_1 int 32 regular {pointer 0}  }
	{ A_4_2 int 32 regular {pointer 0}  }
	{ A_4_3 int 32 regular {pointer 0}  }
	{ A_4_4 int 32 regular {pointer 0}  }
	{ A_4_5 int 32 regular {pointer 0}  }
	{ A_5_0 int 32 regular {pointer 0}  }
	{ A_5_1 int 32 regular {pointer 0}  }
	{ A_5_2 int 32 regular {pointer 0}  }
	{ A_5_3 int 32 regular {pointer 0}  }
	{ A_5_4 int 32 regular {pointer 0}  }
	{ A_5_5 int 32 regular {pointer 0}  }
	{ B_0_0 int 32 regular {pointer 0}  }
	{ B_0_1 int 32 regular {pointer 0}  }
	{ B_0_2 int 32 regular {pointer 0}  }
	{ B_0_3 int 32 regular {pointer 0}  }
	{ B_0_4 int 32 regular {pointer 0}  }
	{ B_0_5 int 32 regular {pointer 0}  }
	{ B_1_0 int 32 regular {pointer 0}  }
	{ B_1_1 int 32 regular {pointer 0}  }
	{ B_1_2 int 32 regular {pointer 0}  }
	{ B_1_3 int 32 regular {pointer 0}  }
	{ B_1_4 int 32 regular {pointer 0}  }
	{ B_1_5 int 32 regular {pointer 0}  }
	{ B_2_0 int 32 regular {pointer 0}  }
	{ B_2_1 int 32 regular {pointer 0}  }
	{ B_2_2 int 32 regular {pointer 0}  }
	{ B_2_3 int 32 regular {pointer 0}  }
	{ B_2_4 int 32 regular {pointer 0}  }
	{ B_2_5 int 32 regular {pointer 0}  }
	{ B_3_0 int 32 regular {pointer 0}  }
	{ B_3_1 int 32 regular {pointer 0}  }
	{ B_3_2 int 32 regular {pointer 0}  }
	{ B_3_3 int 32 regular {pointer 0}  }
	{ B_3_4 int 32 regular {pointer 0}  }
	{ B_3_5 int 32 regular {pointer 0}  }
	{ B_4_0 int 32 regular {pointer 0}  }
	{ B_4_1 int 32 regular {pointer 0}  }
	{ B_4_2 int 32 regular {pointer 0}  }
	{ B_4_3 int 32 regular {pointer 0}  }
	{ B_4_4 int 32 regular {pointer 0}  }
	{ B_4_5 int 32 regular {pointer 0}  }
	{ B_5_0 int 32 regular {pointer 0}  }
	{ B_5_1 int 32 regular {pointer 0}  }
	{ B_5_2 int 32 regular {pointer 0}  }
	{ B_5_3 int 32 regular {pointer 0}  }
	{ B_5_4 int 32 regular {pointer 0}  }
	{ B_5_5 int 32 regular {pointer 0}  }
	{ C_0_0 int 32 regular {pointer 1}  }
	{ C_0_1 int 32 regular {pointer 1}  }
	{ C_0_2 int 32 regular {pointer 1}  }
	{ C_0_3 int 32 regular {pointer 1}  }
	{ C_0_4 int 32 regular {pointer 1}  }
	{ C_0_5 int 32 regular {pointer 1}  }
	{ C_1_0 int 32 regular {pointer 1}  }
	{ C_1_1 int 32 regular {pointer 1}  }
	{ C_1_2 int 32 regular {pointer 1}  }
	{ C_1_3 int 32 regular {pointer 1}  }
	{ C_1_4 int 32 regular {pointer 1}  }
	{ C_1_5 int 32 regular {pointer 1}  }
	{ C_2_0 int 32 regular {pointer 1}  }
	{ C_2_1 int 32 regular {pointer 1}  }
	{ C_2_2 int 32 regular {pointer 1}  }
	{ C_2_3 int 32 regular {pointer 1}  }
	{ C_2_4 int 32 regular {pointer 1}  }
	{ C_2_5 int 32 regular {pointer 1}  }
	{ C_3_0 int 32 regular {pointer 1}  }
	{ C_3_1 int 32 regular {pointer 1}  }
	{ C_3_2 int 32 regular {pointer 1}  }
	{ C_3_3 int 32 regular {pointer 1}  }
	{ C_3_4 int 32 regular {pointer 1}  }
	{ C_3_5 int 32 regular {pointer 1}  }
	{ C_4_0 int 32 regular {pointer 1}  }
	{ C_4_1 int 32 regular {pointer 1}  }
	{ C_4_2 int 32 regular {pointer 1}  }
	{ C_4_3 int 32 regular {pointer 1}  }
	{ C_4_4 int 32 regular {pointer 1}  }
	{ C_4_5 int 32 regular {pointer 1}  }
	{ C_5_0 int 32 regular {pointer 1}  }
	{ C_5_1 int 32 regular {pointer 1}  }
	{ C_5_2 int 32 regular {pointer 1}  }
	{ C_5_3 int 32 regular {pointer 1}  }
	{ C_5_4 int 32 regular {pointer 1}  }
	{ C_5_5 int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "A_0_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_0_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_0_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_0_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_0_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_0_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_1_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_1_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_1_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_1_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_1_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_1_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_2_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_2_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_2_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_2_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_2_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_2_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_3_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_3_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_3_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_3_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_3_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_3_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_4_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_4_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_4_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_4_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_4_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_4_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_5_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_5_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_5_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_5_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_5_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "A_5_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_0_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_1_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_2_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_3_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_4_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "B_5_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C_0_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_0_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_0_2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_0_3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_0_4", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_0_5", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_1_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_1_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_1_2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_1_3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_1_4", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_1_5", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_2_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_2_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_2_2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_2_3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_2_4", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_2_5", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_3_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_3_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_3_2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_3_3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_3_4", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_3_5", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_4_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_4_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_4_2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_4_3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_4_4", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_4_5", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_5_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_5_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_5_2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_5_3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_5_4", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "C_5_5", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 150
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_0_0 sc_in sc_lv 32 signal 0 } 
	{ A_0_1 sc_in sc_lv 32 signal 1 } 
	{ A_0_2 sc_in sc_lv 32 signal 2 } 
	{ A_0_3 sc_in sc_lv 32 signal 3 } 
	{ A_0_4 sc_in sc_lv 32 signal 4 } 
	{ A_0_5 sc_in sc_lv 32 signal 5 } 
	{ A_1_0 sc_in sc_lv 32 signal 6 } 
	{ A_1_1 sc_in sc_lv 32 signal 7 } 
	{ A_1_2 sc_in sc_lv 32 signal 8 } 
	{ A_1_3 sc_in sc_lv 32 signal 9 } 
	{ A_1_4 sc_in sc_lv 32 signal 10 } 
	{ A_1_5 sc_in sc_lv 32 signal 11 } 
	{ A_2_0 sc_in sc_lv 32 signal 12 } 
	{ A_2_1 sc_in sc_lv 32 signal 13 } 
	{ A_2_2 sc_in sc_lv 32 signal 14 } 
	{ A_2_3 sc_in sc_lv 32 signal 15 } 
	{ A_2_4 sc_in sc_lv 32 signal 16 } 
	{ A_2_5 sc_in sc_lv 32 signal 17 } 
	{ A_3_0 sc_in sc_lv 32 signal 18 } 
	{ A_3_1 sc_in sc_lv 32 signal 19 } 
	{ A_3_2 sc_in sc_lv 32 signal 20 } 
	{ A_3_3 sc_in sc_lv 32 signal 21 } 
	{ A_3_4 sc_in sc_lv 32 signal 22 } 
	{ A_3_5 sc_in sc_lv 32 signal 23 } 
	{ A_4_0 sc_in sc_lv 32 signal 24 } 
	{ A_4_1 sc_in sc_lv 32 signal 25 } 
	{ A_4_2 sc_in sc_lv 32 signal 26 } 
	{ A_4_3 sc_in sc_lv 32 signal 27 } 
	{ A_4_4 sc_in sc_lv 32 signal 28 } 
	{ A_4_5 sc_in sc_lv 32 signal 29 } 
	{ A_5_0 sc_in sc_lv 32 signal 30 } 
	{ A_5_1 sc_in sc_lv 32 signal 31 } 
	{ A_5_2 sc_in sc_lv 32 signal 32 } 
	{ A_5_3 sc_in sc_lv 32 signal 33 } 
	{ A_5_4 sc_in sc_lv 32 signal 34 } 
	{ A_5_5 sc_in sc_lv 32 signal 35 } 
	{ B_0_0 sc_in sc_lv 32 signal 36 } 
	{ B_0_1 sc_in sc_lv 32 signal 37 } 
	{ B_0_2 sc_in sc_lv 32 signal 38 } 
	{ B_0_3 sc_in sc_lv 32 signal 39 } 
	{ B_0_4 sc_in sc_lv 32 signal 40 } 
	{ B_0_5 sc_in sc_lv 32 signal 41 } 
	{ B_1_0 sc_in sc_lv 32 signal 42 } 
	{ B_1_1 sc_in sc_lv 32 signal 43 } 
	{ B_1_2 sc_in sc_lv 32 signal 44 } 
	{ B_1_3 sc_in sc_lv 32 signal 45 } 
	{ B_1_4 sc_in sc_lv 32 signal 46 } 
	{ B_1_5 sc_in sc_lv 32 signal 47 } 
	{ B_2_0 sc_in sc_lv 32 signal 48 } 
	{ B_2_1 sc_in sc_lv 32 signal 49 } 
	{ B_2_2 sc_in sc_lv 32 signal 50 } 
	{ B_2_3 sc_in sc_lv 32 signal 51 } 
	{ B_2_4 sc_in sc_lv 32 signal 52 } 
	{ B_2_5 sc_in sc_lv 32 signal 53 } 
	{ B_3_0 sc_in sc_lv 32 signal 54 } 
	{ B_3_1 sc_in sc_lv 32 signal 55 } 
	{ B_3_2 sc_in sc_lv 32 signal 56 } 
	{ B_3_3 sc_in sc_lv 32 signal 57 } 
	{ B_3_4 sc_in sc_lv 32 signal 58 } 
	{ B_3_5 sc_in sc_lv 32 signal 59 } 
	{ B_4_0 sc_in sc_lv 32 signal 60 } 
	{ B_4_1 sc_in sc_lv 32 signal 61 } 
	{ B_4_2 sc_in sc_lv 32 signal 62 } 
	{ B_4_3 sc_in sc_lv 32 signal 63 } 
	{ B_4_4 sc_in sc_lv 32 signal 64 } 
	{ B_4_5 sc_in sc_lv 32 signal 65 } 
	{ B_5_0 sc_in sc_lv 32 signal 66 } 
	{ B_5_1 sc_in sc_lv 32 signal 67 } 
	{ B_5_2 sc_in sc_lv 32 signal 68 } 
	{ B_5_3 sc_in sc_lv 32 signal 69 } 
	{ B_5_4 sc_in sc_lv 32 signal 70 } 
	{ B_5_5 sc_in sc_lv 32 signal 71 } 
	{ C_0_0 sc_out sc_lv 32 signal 72 } 
	{ C_0_0_ap_vld sc_out sc_logic 1 outvld 72 } 
	{ C_0_1 sc_out sc_lv 32 signal 73 } 
	{ C_0_1_ap_vld sc_out sc_logic 1 outvld 73 } 
	{ C_0_2 sc_out sc_lv 32 signal 74 } 
	{ C_0_2_ap_vld sc_out sc_logic 1 outvld 74 } 
	{ C_0_3 sc_out sc_lv 32 signal 75 } 
	{ C_0_3_ap_vld sc_out sc_logic 1 outvld 75 } 
	{ C_0_4 sc_out sc_lv 32 signal 76 } 
	{ C_0_4_ap_vld sc_out sc_logic 1 outvld 76 } 
	{ C_0_5 sc_out sc_lv 32 signal 77 } 
	{ C_0_5_ap_vld sc_out sc_logic 1 outvld 77 } 
	{ C_1_0 sc_out sc_lv 32 signal 78 } 
	{ C_1_0_ap_vld sc_out sc_logic 1 outvld 78 } 
	{ C_1_1 sc_out sc_lv 32 signal 79 } 
	{ C_1_1_ap_vld sc_out sc_logic 1 outvld 79 } 
	{ C_1_2 sc_out sc_lv 32 signal 80 } 
	{ C_1_2_ap_vld sc_out sc_logic 1 outvld 80 } 
	{ C_1_3 sc_out sc_lv 32 signal 81 } 
	{ C_1_3_ap_vld sc_out sc_logic 1 outvld 81 } 
	{ C_1_4 sc_out sc_lv 32 signal 82 } 
	{ C_1_4_ap_vld sc_out sc_logic 1 outvld 82 } 
	{ C_1_5 sc_out sc_lv 32 signal 83 } 
	{ C_1_5_ap_vld sc_out sc_logic 1 outvld 83 } 
	{ C_2_0 sc_out sc_lv 32 signal 84 } 
	{ C_2_0_ap_vld sc_out sc_logic 1 outvld 84 } 
	{ C_2_1 sc_out sc_lv 32 signal 85 } 
	{ C_2_1_ap_vld sc_out sc_logic 1 outvld 85 } 
	{ C_2_2 sc_out sc_lv 32 signal 86 } 
	{ C_2_2_ap_vld sc_out sc_logic 1 outvld 86 } 
	{ C_2_3 sc_out sc_lv 32 signal 87 } 
	{ C_2_3_ap_vld sc_out sc_logic 1 outvld 87 } 
	{ C_2_4 sc_out sc_lv 32 signal 88 } 
	{ C_2_4_ap_vld sc_out sc_logic 1 outvld 88 } 
	{ C_2_5 sc_out sc_lv 32 signal 89 } 
	{ C_2_5_ap_vld sc_out sc_logic 1 outvld 89 } 
	{ C_3_0 sc_out sc_lv 32 signal 90 } 
	{ C_3_0_ap_vld sc_out sc_logic 1 outvld 90 } 
	{ C_3_1 sc_out sc_lv 32 signal 91 } 
	{ C_3_1_ap_vld sc_out sc_logic 1 outvld 91 } 
	{ C_3_2 sc_out sc_lv 32 signal 92 } 
	{ C_3_2_ap_vld sc_out sc_logic 1 outvld 92 } 
	{ C_3_3 sc_out sc_lv 32 signal 93 } 
	{ C_3_3_ap_vld sc_out sc_logic 1 outvld 93 } 
	{ C_3_4 sc_out sc_lv 32 signal 94 } 
	{ C_3_4_ap_vld sc_out sc_logic 1 outvld 94 } 
	{ C_3_5 sc_out sc_lv 32 signal 95 } 
	{ C_3_5_ap_vld sc_out sc_logic 1 outvld 95 } 
	{ C_4_0 sc_out sc_lv 32 signal 96 } 
	{ C_4_0_ap_vld sc_out sc_logic 1 outvld 96 } 
	{ C_4_1 sc_out sc_lv 32 signal 97 } 
	{ C_4_1_ap_vld sc_out sc_logic 1 outvld 97 } 
	{ C_4_2 sc_out sc_lv 32 signal 98 } 
	{ C_4_2_ap_vld sc_out sc_logic 1 outvld 98 } 
	{ C_4_3 sc_out sc_lv 32 signal 99 } 
	{ C_4_3_ap_vld sc_out sc_logic 1 outvld 99 } 
	{ C_4_4 sc_out sc_lv 32 signal 100 } 
	{ C_4_4_ap_vld sc_out sc_logic 1 outvld 100 } 
	{ C_4_5 sc_out sc_lv 32 signal 101 } 
	{ C_4_5_ap_vld sc_out sc_logic 1 outvld 101 } 
	{ C_5_0 sc_out sc_lv 32 signal 102 } 
	{ C_5_0_ap_vld sc_out sc_logic 1 outvld 102 } 
	{ C_5_1 sc_out sc_lv 32 signal 103 } 
	{ C_5_1_ap_vld sc_out sc_logic 1 outvld 103 } 
	{ C_5_2 sc_out sc_lv 32 signal 104 } 
	{ C_5_2_ap_vld sc_out sc_logic 1 outvld 104 } 
	{ C_5_3 sc_out sc_lv 32 signal 105 } 
	{ C_5_3_ap_vld sc_out sc_logic 1 outvld 105 } 
	{ C_5_4 sc_out sc_lv 32 signal 106 } 
	{ C_5_4_ap_vld sc_out sc_logic 1 outvld 106 } 
	{ C_5_5 sc_out sc_lv 32 signal 107 } 
	{ C_5_5_ap_vld sc_out sc_logic 1 outvld 107 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_0_0", "role": "default" }} , 
 	{ "name": "A_0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_0_1", "role": "default" }} , 
 	{ "name": "A_0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_0_2", "role": "default" }} , 
 	{ "name": "A_0_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_0_3", "role": "default" }} , 
 	{ "name": "A_0_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_0_4", "role": "default" }} , 
 	{ "name": "A_0_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_0_5", "role": "default" }} , 
 	{ "name": "A_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1_0", "role": "default" }} , 
 	{ "name": "A_1_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1_1", "role": "default" }} , 
 	{ "name": "A_1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1_2", "role": "default" }} , 
 	{ "name": "A_1_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1_3", "role": "default" }} , 
 	{ "name": "A_1_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1_4", "role": "default" }} , 
 	{ "name": "A_1_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_1_5", "role": "default" }} , 
 	{ "name": "A_2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2_0", "role": "default" }} , 
 	{ "name": "A_2_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2_1", "role": "default" }} , 
 	{ "name": "A_2_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2_2", "role": "default" }} , 
 	{ "name": "A_2_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2_3", "role": "default" }} , 
 	{ "name": "A_2_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2_4", "role": "default" }} , 
 	{ "name": "A_2_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_2_5", "role": "default" }} , 
 	{ "name": "A_3_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3_0", "role": "default" }} , 
 	{ "name": "A_3_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3_1", "role": "default" }} , 
 	{ "name": "A_3_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3_2", "role": "default" }} , 
 	{ "name": "A_3_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3_3", "role": "default" }} , 
 	{ "name": "A_3_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3_4", "role": "default" }} , 
 	{ "name": "A_3_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_3_5", "role": "default" }} , 
 	{ "name": "A_4_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_4_0", "role": "default" }} , 
 	{ "name": "A_4_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_4_1", "role": "default" }} , 
 	{ "name": "A_4_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_4_2", "role": "default" }} , 
 	{ "name": "A_4_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_4_3", "role": "default" }} , 
 	{ "name": "A_4_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_4_4", "role": "default" }} , 
 	{ "name": "A_4_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_4_5", "role": "default" }} , 
 	{ "name": "A_5_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_5_0", "role": "default" }} , 
 	{ "name": "A_5_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_5_1", "role": "default" }} , 
 	{ "name": "A_5_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_5_2", "role": "default" }} , 
 	{ "name": "A_5_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_5_3", "role": "default" }} , 
 	{ "name": "A_5_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_5_4", "role": "default" }} , 
 	{ "name": "A_5_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_5_5", "role": "default" }} , 
 	{ "name": "B_0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_0", "role": "default" }} , 
 	{ "name": "B_0_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_1", "role": "default" }} , 
 	{ "name": "B_0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_2", "role": "default" }} , 
 	{ "name": "B_0_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_3", "role": "default" }} , 
 	{ "name": "B_0_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_4", "role": "default" }} , 
 	{ "name": "B_0_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_0_5", "role": "default" }} , 
 	{ "name": "B_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_0", "role": "default" }} , 
 	{ "name": "B_1_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_1", "role": "default" }} , 
 	{ "name": "B_1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_2", "role": "default" }} , 
 	{ "name": "B_1_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_3", "role": "default" }} , 
 	{ "name": "B_1_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_4", "role": "default" }} , 
 	{ "name": "B_1_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_1_5", "role": "default" }} , 
 	{ "name": "B_2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_0", "role": "default" }} , 
 	{ "name": "B_2_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_1", "role": "default" }} , 
 	{ "name": "B_2_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_2", "role": "default" }} , 
 	{ "name": "B_2_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_3", "role": "default" }} , 
 	{ "name": "B_2_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_4", "role": "default" }} , 
 	{ "name": "B_2_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_2_5", "role": "default" }} , 
 	{ "name": "B_3_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_0", "role": "default" }} , 
 	{ "name": "B_3_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_1", "role": "default" }} , 
 	{ "name": "B_3_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_2", "role": "default" }} , 
 	{ "name": "B_3_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_3", "role": "default" }} , 
 	{ "name": "B_3_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_4", "role": "default" }} , 
 	{ "name": "B_3_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_3_5", "role": "default" }} , 
 	{ "name": "B_4_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_0", "role": "default" }} , 
 	{ "name": "B_4_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_1", "role": "default" }} , 
 	{ "name": "B_4_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_2", "role": "default" }} , 
 	{ "name": "B_4_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_3", "role": "default" }} , 
 	{ "name": "B_4_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_4", "role": "default" }} , 
 	{ "name": "B_4_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_4_5", "role": "default" }} , 
 	{ "name": "B_5_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_0", "role": "default" }} , 
 	{ "name": "B_5_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_1", "role": "default" }} , 
 	{ "name": "B_5_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_2", "role": "default" }} , 
 	{ "name": "B_5_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_3", "role": "default" }} , 
 	{ "name": "B_5_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_4", "role": "default" }} , 
 	{ "name": "B_5_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_5_5", "role": "default" }} , 
 	{ "name": "C_0_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_0_0", "role": "default" }} , 
 	{ "name": "C_0_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_0_0", "role": "ap_vld" }} , 
 	{ "name": "C_0_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_0_1", "role": "default" }} , 
 	{ "name": "C_0_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_0_1", "role": "ap_vld" }} , 
 	{ "name": "C_0_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_0_2", "role": "default" }} , 
 	{ "name": "C_0_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_0_2", "role": "ap_vld" }} , 
 	{ "name": "C_0_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_0_3", "role": "default" }} , 
 	{ "name": "C_0_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_0_3", "role": "ap_vld" }} , 
 	{ "name": "C_0_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_0_4", "role": "default" }} , 
 	{ "name": "C_0_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_0_4", "role": "ap_vld" }} , 
 	{ "name": "C_0_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_0_5", "role": "default" }} , 
 	{ "name": "C_0_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_0_5", "role": "ap_vld" }} , 
 	{ "name": "C_1_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_1_0", "role": "default" }} , 
 	{ "name": "C_1_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_1_0", "role": "ap_vld" }} , 
 	{ "name": "C_1_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_1_1", "role": "default" }} , 
 	{ "name": "C_1_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_1_1", "role": "ap_vld" }} , 
 	{ "name": "C_1_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_1_2", "role": "default" }} , 
 	{ "name": "C_1_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_1_2", "role": "ap_vld" }} , 
 	{ "name": "C_1_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_1_3", "role": "default" }} , 
 	{ "name": "C_1_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_1_3", "role": "ap_vld" }} , 
 	{ "name": "C_1_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_1_4", "role": "default" }} , 
 	{ "name": "C_1_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_1_4", "role": "ap_vld" }} , 
 	{ "name": "C_1_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_1_5", "role": "default" }} , 
 	{ "name": "C_1_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_1_5", "role": "ap_vld" }} , 
 	{ "name": "C_2_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_2_0", "role": "default" }} , 
 	{ "name": "C_2_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_2_0", "role": "ap_vld" }} , 
 	{ "name": "C_2_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_2_1", "role": "default" }} , 
 	{ "name": "C_2_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_2_1", "role": "ap_vld" }} , 
 	{ "name": "C_2_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_2_2", "role": "default" }} , 
 	{ "name": "C_2_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_2_2", "role": "ap_vld" }} , 
 	{ "name": "C_2_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_2_3", "role": "default" }} , 
 	{ "name": "C_2_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_2_3", "role": "ap_vld" }} , 
 	{ "name": "C_2_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_2_4", "role": "default" }} , 
 	{ "name": "C_2_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_2_4", "role": "ap_vld" }} , 
 	{ "name": "C_2_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_2_5", "role": "default" }} , 
 	{ "name": "C_2_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_2_5", "role": "ap_vld" }} , 
 	{ "name": "C_3_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_3_0", "role": "default" }} , 
 	{ "name": "C_3_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_3_0", "role": "ap_vld" }} , 
 	{ "name": "C_3_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_3_1", "role": "default" }} , 
 	{ "name": "C_3_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_3_1", "role": "ap_vld" }} , 
 	{ "name": "C_3_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_3_2", "role": "default" }} , 
 	{ "name": "C_3_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_3_2", "role": "ap_vld" }} , 
 	{ "name": "C_3_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_3_3", "role": "default" }} , 
 	{ "name": "C_3_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_3_3", "role": "ap_vld" }} , 
 	{ "name": "C_3_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_3_4", "role": "default" }} , 
 	{ "name": "C_3_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_3_4", "role": "ap_vld" }} , 
 	{ "name": "C_3_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_3_5", "role": "default" }} , 
 	{ "name": "C_3_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_3_5", "role": "ap_vld" }} , 
 	{ "name": "C_4_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_4_0", "role": "default" }} , 
 	{ "name": "C_4_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_4_0", "role": "ap_vld" }} , 
 	{ "name": "C_4_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_4_1", "role": "default" }} , 
 	{ "name": "C_4_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_4_1", "role": "ap_vld" }} , 
 	{ "name": "C_4_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_4_2", "role": "default" }} , 
 	{ "name": "C_4_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_4_2", "role": "ap_vld" }} , 
 	{ "name": "C_4_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_4_3", "role": "default" }} , 
 	{ "name": "C_4_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_4_3", "role": "ap_vld" }} , 
 	{ "name": "C_4_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_4_4", "role": "default" }} , 
 	{ "name": "C_4_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_4_4", "role": "ap_vld" }} , 
 	{ "name": "C_4_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_4_5", "role": "default" }} , 
 	{ "name": "C_4_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_4_5", "role": "ap_vld" }} , 
 	{ "name": "C_5_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_5_0", "role": "default" }} , 
 	{ "name": "C_5_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_5_0", "role": "ap_vld" }} , 
 	{ "name": "C_5_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_5_1", "role": "default" }} , 
 	{ "name": "C_5_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_5_1", "role": "ap_vld" }} , 
 	{ "name": "C_5_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_5_2", "role": "default" }} , 
 	{ "name": "C_5_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_5_2", "role": "ap_vld" }} , 
 	{ "name": "C_5_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_5_3", "role": "default" }} , 
 	{ "name": "C_5_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_5_3", "role": "ap_vld" }} , 
 	{ "name": "C_5_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_5_4", "role": "default" }} , 
 	{ "name": "C_5_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_5_4", "role": "ap_vld" }} , 
 	{ "name": "C_5_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C_5_5", "role": "default" }} , 
 	{ "name": "C_5_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "C_5_5", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "matrix_mult_partition_both_dims",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "A_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_0_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_0_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_0_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_1_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_1_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_1_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_2_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_2_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_2_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_2_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_3_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_3_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_3_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_3_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_3_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_3_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_4_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_4_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_4_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_4_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_4_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_4_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_5_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_5_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_5_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_5_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_5_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_5_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_0_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_1_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_2_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_3_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_4_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "B_5_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "C_0_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_0_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_0_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_0_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_0_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_0_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_1_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_1_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_1_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_1_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_1_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_1_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_2_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_2_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_2_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_2_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_2_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_2_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_3_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_3_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_3_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_3_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_3_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_3_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_4_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_4_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_4_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_4_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_4_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_4_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_5_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_5_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_5_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_5_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_5_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "C_5_5", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_89_1_VITIS_LOOP_90_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_13_3_32_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_13_3_32_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_13_3_32_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_13_3_32_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_13_3_32_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_13_3_32_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_13_3_32_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_13_3_32_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_13_3_32_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_13_3_32_1_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_13_3_32_1_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_13_3_32_1_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrix_mult_partition_both_dims {
		A_0_0 {Type I LastRead 0 FirstWrite -1}
		A_0_1 {Type I LastRead 0 FirstWrite -1}
		A_0_2 {Type I LastRead 0 FirstWrite -1}
		A_0_3 {Type I LastRead 0 FirstWrite -1}
		A_0_4 {Type I LastRead 0 FirstWrite -1}
		A_0_5 {Type I LastRead 0 FirstWrite -1}
		A_1_0 {Type I LastRead 0 FirstWrite -1}
		A_1_1 {Type I LastRead 0 FirstWrite -1}
		A_1_2 {Type I LastRead 0 FirstWrite -1}
		A_1_3 {Type I LastRead 0 FirstWrite -1}
		A_1_4 {Type I LastRead 0 FirstWrite -1}
		A_1_5 {Type I LastRead 0 FirstWrite -1}
		A_2_0 {Type I LastRead 0 FirstWrite -1}
		A_2_1 {Type I LastRead 0 FirstWrite -1}
		A_2_2 {Type I LastRead 0 FirstWrite -1}
		A_2_3 {Type I LastRead 0 FirstWrite -1}
		A_2_4 {Type I LastRead 0 FirstWrite -1}
		A_2_5 {Type I LastRead 0 FirstWrite -1}
		A_3_0 {Type I LastRead 0 FirstWrite -1}
		A_3_1 {Type I LastRead 0 FirstWrite -1}
		A_3_2 {Type I LastRead 0 FirstWrite -1}
		A_3_3 {Type I LastRead 0 FirstWrite -1}
		A_3_4 {Type I LastRead 0 FirstWrite -1}
		A_3_5 {Type I LastRead 0 FirstWrite -1}
		A_4_0 {Type I LastRead 0 FirstWrite -1}
		A_4_1 {Type I LastRead 0 FirstWrite -1}
		A_4_2 {Type I LastRead 0 FirstWrite -1}
		A_4_3 {Type I LastRead 0 FirstWrite -1}
		A_4_4 {Type I LastRead 0 FirstWrite -1}
		A_4_5 {Type I LastRead 0 FirstWrite -1}
		A_5_0 {Type I LastRead 0 FirstWrite -1}
		A_5_1 {Type I LastRead 0 FirstWrite -1}
		A_5_2 {Type I LastRead 0 FirstWrite -1}
		A_5_3 {Type I LastRead 0 FirstWrite -1}
		A_5_4 {Type I LastRead 0 FirstWrite -1}
		A_5_5 {Type I LastRead 0 FirstWrite -1}
		B_0_0 {Type I LastRead 0 FirstWrite -1}
		B_0_1 {Type I LastRead 0 FirstWrite -1}
		B_0_2 {Type I LastRead 0 FirstWrite -1}
		B_0_3 {Type I LastRead 0 FirstWrite -1}
		B_0_4 {Type I LastRead 0 FirstWrite -1}
		B_0_5 {Type I LastRead 0 FirstWrite -1}
		B_1_0 {Type I LastRead 0 FirstWrite -1}
		B_1_1 {Type I LastRead 0 FirstWrite -1}
		B_1_2 {Type I LastRead 0 FirstWrite -1}
		B_1_3 {Type I LastRead 0 FirstWrite -1}
		B_1_4 {Type I LastRead 0 FirstWrite -1}
		B_1_5 {Type I LastRead 0 FirstWrite -1}
		B_2_0 {Type I LastRead 0 FirstWrite -1}
		B_2_1 {Type I LastRead 0 FirstWrite -1}
		B_2_2 {Type I LastRead 0 FirstWrite -1}
		B_2_3 {Type I LastRead 0 FirstWrite -1}
		B_2_4 {Type I LastRead 0 FirstWrite -1}
		B_2_5 {Type I LastRead 0 FirstWrite -1}
		B_3_0 {Type I LastRead 0 FirstWrite -1}
		B_3_1 {Type I LastRead 0 FirstWrite -1}
		B_3_2 {Type I LastRead 0 FirstWrite -1}
		B_3_3 {Type I LastRead 0 FirstWrite -1}
		B_3_4 {Type I LastRead 0 FirstWrite -1}
		B_3_5 {Type I LastRead 0 FirstWrite -1}
		B_4_0 {Type I LastRead 0 FirstWrite -1}
		B_4_1 {Type I LastRead 0 FirstWrite -1}
		B_4_2 {Type I LastRead 0 FirstWrite -1}
		B_4_3 {Type I LastRead 0 FirstWrite -1}
		B_4_4 {Type I LastRead 0 FirstWrite -1}
		B_4_5 {Type I LastRead 0 FirstWrite -1}
		B_5_0 {Type I LastRead 0 FirstWrite -1}
		B_5_1 {Type I LastRead 0 FirstWrite -1}
		B_5_2 {Type I LastRead 0 FirstWrite -1}
		B_5_3 {Type I LastRead 0 FirstWrite -1}
		B_5_4 {Type I LastRead 0 FirstWrite -1}
		B_5_5 {Type I LastRead 0 FirstWrite -1}
		C_0_0 {Type O LastRead -1 FirstWrite 0}
		C_0_1 {Type O LastRead -1 FirstWrite 0}
		C_0_2 {Type O LastRead -1 FirstWrite 0}
		C_0_3 {Type O LastRead -1 FirstWrite 0}
		C_0_4 {Type O LastRead -1 FirstWrite 0}
		C_0_5 {Type O LastRead -1 FirstWrite 0}
		C_1_0 {Type O LastRead -1 FirstWrite 0}
		C_1_1 {Type O LastRead -1 FirstWrite 0}
		C_1_2 {Type O LastRead -1 FirstWrite 0}
		C_1_3 {Type O LastRead -1 FirstWrite 0}
		C_1_4 {Type O LastRead -1 FirstWrite 0}
		C_1_5 {Type O LastRead -1 FirstWrite 0}
		C_2_0 {Type O LastRead -1 FirstWrite 0}
		C_2_1 {Type O LastRead -1 FirstWrite 0}
		C_2_2 {Type O LastRead -1 FirstWrite 0}
		C_2_3 {Type O LastRead -1 FirstWrite 0}
		C_2_4 {Type O LastRead -1 FirstWrite 0}
		C_2_5 {Type O LastRead -1 FirstWrite 0}
		C_3_0 {Type O LastRead -1 FirstWrite 0}
		C_3_1 {Type O LastRead -1 FirstWrite 0}
		C_3_2 {Type O LastRead -1 FirstWrite 0}
		C_3_3 {Type O LastRead -1 FirstWrite 0}
		C_3_4 {Type O LastRead -1 FirstWrite 0}
		C_3_5 {Type O LastRead -1 FirstWrite 0}
		C_4_0 {Type O LastRead -1 FirstWrite 0}
		C_4_1 {Type O LastRead -1 FirstWrite 0}
		C_4_2 {Type O LastRead -1 FirstWrite 0}
		C_4_3 {Type O LastRead -1 FirstWrite 0}
		C_4_4 {Type O LastRead -1 FirstWrite 0}
		C_4_5 {Type O LastRead -1 FirstWrite 0}
		C_5_0 {Type O LastRead -1 FirstWrite 0}
		C_5_1 {Type O LastRead -1 FirstWrite 0}
		C_5_2 {Type O LastRead -1 FirstWrite 0}
		C_5_3 {Type O LastRead -1 FirstWrite 0}
		C_5_4 {Type O LastRead -1 FirstWrite 0}
		C_5_5 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "37", "Max" : "37"}
	, {"Name" : "Interval", "Min" : "38", "Max" : "38"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A_0_0 { ap_none {  { A_0_0 in_data 0 32 } } }
	A_0_1 { ap_none {  { A_0_1 in_data 0 32 } } }
	A_0_2 { ap_none {  { A_0_2 in_data 0 32 } } }
	A_0_3 { ap_none {  { A_0_3 in_data 0 32 } } }
	A_0_4 { ap_none {  { A_0_4 in_data 0 32 } } }
	A_0_5 { ap_none {  { A_0_5 in_data 0 32 } } }
	A_1_0 { ap_none {  { A_1_0 in_data 0 32 } } }
	A_1_1 { ap_none {  { A_1_1 in_data 0 32 } } }
	A_1_2 { ap_none {  { A_1_2 in_data 0 32 } } }
	A_1_3 { ap_none {  { A_1_3 in_data 0 32 } } }
	A_1_4 { ap_none {  { A_1_4 in_data 0 32 } } }
	A_1_5 { ap_none {  { A_1_5 in_data 0 32 } } }
	A_2_0 { ap_none {  { A_2_0 in_data 0 32 } } }
	A_2_1 { ap_none {  { A_2_1 in_data 0 32 } } }
	A_2_2 { ap_none {  { A_2_2 in_data 0 32 } } }
	A_2_3 { ap_none {  { A_2_3 in_data 0 32 } } }
	A_2_4 { ap_none {  { A_2_4 in_data 0 32 } } }
	A_2_5 { ap_none {  { A_2_5 in_data 0 32 } } }
	A_3_0 { ap_none {  { A_3_0 in_data 0 32 } } }
	A_3_1 { ap_none {  { A_3_1 in_data 0 32 } } }
	A_3_2 { ap_none {  { A_3_2 in_data 0 32 } } }
	A_3_3 { ap_none {  { A_3_3 in_data 0 32 } } }
	A_3_4 { ap_none {  { A_3_4 in_data 0 32 } } }
	A_3_5 { ap_none {  { A_3_5 in_data 0 32 } } }
	A_4_0 { ap_none {  { A_4_0 in_data 0 32 } } }
	A_4_1 { ap_none {  { A_4_1 in_data 0 32 } } }
	A_4_2 { ap_none {  { A_4_2 in_data 0 32 } } }
	A_4_3 { ap_none {  { A_4_3 in_data 0 32 } } }
	A_4_4 { ap_none {  { A_4_4 in_data 0 32 } } }
	A_4_5 { ap_none {  { A_4_5 in_data 0 32 } } }
	A_5_0 { ap_none {  { A_5_0 in_data 0 32 } } }
	A_5_1 { ap_none {  { A_5_1 in_data 0 32 } } }
	A_5_2 { ap_none {  { A_5_2 in_data 0 32 } } }
	A_5_3 { ap_none {  { A_5_3 in_data 0 32 } } }
	A_5_4 { ap_none {  { A_5_4 in_data 0 32 } } }
	A_5_5 { ap_none {  { A_5_5 in_data 0 32 } } }
	B_0_0 { ap_none {  { B_0_0 in_data 0 32 } } }
	B_0_1 { ap_none {  { B_0_1 in_data 0 32 } } }
	B_0_2 { ap_none {  { B_0_2 in_data 0 32 } } }
	B_0_3 { ap_none {  { B_0_3 in_data 0 32 } } }
	B_0_4 { ap_none {  { B_0_4 in_data 0 32 } } }
	B_0_5 { ap_none {  { B_0_5 in_data 0 32 } } }
	B_1_0 { ap_none {  { B_1_0 in_data 0 32 } } }
	B_1_1 { ap_none {  { B_1_1 in_data 0 32 } } }
	B_1_2 { ap_none {  { B_1_2 in_data 0 32 } } }
	B_1_3 { ap_none {  { B_1_3 in_data 0 32 } } }
	B_1_4 { ap_none {  { B_1_4 in_data 0 32 } } }
	B_1_5 { ap_none {  { B_1_5 in_data 0 32 } } }
	B_2_0 { ap_none {  { B_2_0 in_data 0 32 } } }
	B_2_1 { ap_none {  { B_2_1 in_data 0 32 } } }
	B_2_2 { ap_none {  { B_2_2 in_data 0 32 } } }
	B_2_3 { ap_none {  { B_2_3 in_data 0 32 } } }
	B_2_4 { ap_none {  { B_2_4 in_data 0 32 } } }
	B_2_5 { ap_none {  { B_2_5 in_data 0 32 } } }
	B_3_0 { ap_none {  { B_3_0 in_data 0 32 } } }
	B_3_1 { ap_none {  { B_3_1 in_data 0 32 } } }
	B_3_2 { ap_none {  { B_3_2 in_data 0 32 } } }
	B_3_3 { ap_none {  { B_3_3 in_data 0 32 } } }
	B_3_4 { ap_none {  { B_3_4 in_data 0 32 } } }
	B_3_5 { ap_none {  { B_3_5 in_data 0 32 } } }
	B_4_0 { ap_none {  { B_4_0 in_data 0 32 } } }
	B_4_1 { ap_none {  { B_4_1 in_data 0 32 } } }
	B_4_2 { ap_none {  { B_4_2 in_data 0 32 } } }
	B_4_3 { ap_none {  { B_4_3 in_data 0 32 } } }
	B_4_4 { ap_none {  { B_4_4 in_data 0 32 } } }
	B_4_5 { ap_none {  { B_4_5 in_data 0 32 } } }
	B_5_0 { ap_none {  { B_5_0 in_data 0 32 } } }
	B_5_1 { ap_none {  { B_5_1 in_data 0 32 } } }
	B_5_2 { ap_none {  { B_5_2 in_data 0 32 } } }
	B_5_3 { ap_none {  { B_5_3 in_data 0 32 } } }
	B_5_4 { ap_none {  { B_5_4 in_data 0 32 } } }
	B_5_5 { ap_none {  { B_5_5 in_data 0 32 } } }
	C_0_0 { ap_vld {  { C_0_0 out_data 1 32 }  { C_0_0_ap_vld out_vld 1 1 } } }
	C_0_1 { ap_vld {  { C_0_1 out_data 1 32 }  { C_0_1_ap_vld out_vld 1 1 } } }
	C_0_2 { ap_vld {  { C_0_2 out_data 1 32 }  { C_0_2_ap_vld out_vld 1 1 } } }
	C_0_3 { ap_vld {  { C_0_3 out_data 1 32 }  { C_0_3_ap_vld out_vld 1 1 } } }
	C_0_4 { ap_vld {  { C_0_4 out_data 1 32 }  { C_0_4_ap_vld out_vld 1 1 } } }
	C_0_5 { ap_vld {  { C_0_5 out_data 1 32 }  { C_0_5_ap_vld out_vld 1 1 } } }
	C_1_0 { ap_vld {  { C_1_0 out_data 1 32 }  { C_1_0_ap_vld out_vld 1 1 } } }
	C_1_1 { ap_vld {  { C_1_1 out_data 1 32 }  { C_1_1_ap_vld out_vld 1 1 } } }
	C_1_2 { ap_vld {  { C_1_2 out_data 1 32 }  { C_1_2_ap_vld out_vld 1 1 } } }
	C_1_3 { ap_vld {  { C_1_3 out_data 1 32 }  { C_1_3_ap_vld out_vld 1 1 } } }
	C_1_4 { ap_vld {  { C_1_4 out_data 1 32 }  { C_1_4_ap_vld out_vld 1 1 } } }
	C_1_5 { ap_vld {  { C_1_5 out_data 1 32 }  { C_1_5_ap_vld out_vld 1 1 } } }
	C_2_0 { ap_vld {  { C_2_0 out_data 1 32 }  { C_2_0_ap_vld out_vld 1 1 } } }
	C_2_1 { ap_vld {  { C_2_1 out_data 1 32 }  { C_2_1_ap_vld out_vld 1 1 } } }
	C_2_2 { ap_vld {  { C_2_2 out_data 1 32 }  { C_2_2_ap_vld out_vld 1 1 } } }
	C_2_3 { ap_vld {  { C_2_3 out_data 1 32 }  { C_2_3_ap_vld out_vld 1 1 } } }
	C_2_4 { ap_vld {  { C_2_4 out_data 1 32 }  { C_2_4_ap_vld out_vld 1 1 } } }
	C_2_5 { ap_vld {  { C_2_5 out_data 1 32 }  { C_2_5_ap_vld out_vld 1 1 } } }
	C_3_0 { ap_vld {  { C_3_0 out_data 1 32 }  { C_3_0_ap_vld out_vld 1 1 } } }
	C_3_1 { ap_vld {  { C_3_1 out_data 1 32 }  { C_3_1_ap_vld out_vld 1 1 } } }
	C_3_2 { ap_vld {  { C_3_2 out_data 1 32 }  { C_3_2_ap_vld out_vld 1 1 } } }
	C_3_3 { ap_vld {  { C_3_3 out_data 1 32 }  { C_3_3_ap_vld out_vld 1 1 } } }
	C_3_4 { ap_vld {  { C_3_4 out_data 1 32 }  { C_3_4_ap_vld out_vld 1 1 } } }
	C_3_5 { ap_vld {  { C_3_5 out_data 1 32 }  { C_3_5_ap_vld out_vld 1 1 } } }
	C_4_0 { ap_vld {  { C_4_0 out_data 1 32 }  { C_4_0_ap_vld out_vld 1 1 } } }
	C_4_1 { ap_vld {  { C_4_1 out_data 1 32 }  { C_4_1_ap_vld out_vld 1 1 } } }
	C_4_2 { ap_vld {  { C_4_2 out_data 1 32 }  { C_4_2_ap_vld out_vld 1 1 } } }
	C_4_3 { ap_vld {  { C_4_3 out_data 1 32 }  { C_4_3_ap_vld out_vld 1 1 } } }
	C_4_4 { ap_vld {  { C_4_4 out_data 1 32 }  { C_4_4_ap_vld out_vld 1 1 } } }
	C_4_5 { ap_vld {  { C_4_5 out_data 1 32 }  { C_4_5_ap_vld out_vld 1 1 } } }
	C_5_0 { ap_vld {  { C_5_0 out_data 1 32 }  { C_5_0_ap_vld out_vld 1 1 } } }
	C_5_1 { ap_vld {  { C_5_1 out_data 1 32 }  { C_5_1_ap_vld out_vld 1 1 } } }
	C_5_2 { ap_vld {  { C_5_2 out_data 1 32 }  { C_5_2_ap_vld out_vld 1 1 } } }
	C_5_3 { ap_vld {  { C_5_3 out_data 1 32 }  { C_5_3_ap_vld out_vld 1 1 } } }
	C_5_4 { ap_vld {  { C_5_4 out_data 1 32 }  { C_5_4_ap_vld out_vld 1 1 } } }
	C_5_5 { ap_vld {  { C_5_5 out_data 1 32 }  { C_5_5_ap_vld out_vld 1 1 } } }
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
