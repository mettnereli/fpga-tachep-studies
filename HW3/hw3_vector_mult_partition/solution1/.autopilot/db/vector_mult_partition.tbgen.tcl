set moduleName vector_mult_partition
set isTopModule 1
set isCombinational 1
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
set C_modelName {vector_mult_partition}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ a_0 int 32 regular {pointer 0}  }
	{ a_1 int 32 regular {pointer 0}  }
	{ a_2 int 32 regular {pointer 0}  }
	{ a_3 int 32 regular {pointer 0}  }
	{ a_4 int 32 regular {pointer 0}  }
	{ a_5 int 32 regular {pointer 0}  }
	{ a_6 int 32 regular {pointer 0}  }
	{ a_7 int 32 regular {pointer 0}  }
	{ a_8 int 32 regular {pointer 0}  }
	{ a_9 int 32 regular {pointer 0}  }
	{ a_10 int 32 regular {pointer 0}  }
	{ a_11 int 32 regular {pointer 0}  }
	{ a_12 int 32 regular {pointer 0}  }
	{ a_13 int 32 regular {pointer 0}  }
	{ a_14 int 32 regular {pointer 0}  }
	{ a_15 int 32 regular {pointer 0}  }
	{ b_0 int 32 regular {pointer 0}  }
	{ b_1 int 32 regular {pointer 0}  }
	{ b_2 int 32 regular {pointer 0}  }
	{ b_3 int 32 regular {pointer 0}  }
	{ b_4 int 32 regular {pointer 0}  }
	{ b_5 int 32 regular {pointer 0}  }
	{ b_6 int 32 regular {pointer 0}  }
	{ b_7 int 32 regular {pointer 0}  }
	{ b_8 int 32 regular {pointer 0}  }
	{ b_9 int 32 regular {pointer 0}  }
	{ b_10 int 32 regular {pointer 0}  }
	{ b_11 int 32 regular {pointer 0}  }
	{ b_12 int 32 regular {pointer 0}  }
	{ b_13 int 32 regular {pointer 0}  }
	{ b_14 int 32 regular {pointer 0}  }
	{ b_15 int 32 regular {pointer 0}  }
	{ c_0 int 32 regular {pointer 1}  }
	{ c_1 int 32 regular {pointer 1}  }
	{ c_2 int 32 regular {pointer 1}  }
	{ c_3 int 32 regular {pointer 1}  }
	{ c_4 int 32 regular {pointer 1}  }
	{ c_5 int 32 regular {pointer 1}  }
	{ c_6 int 32 regular {pointer 1}  }
	{ c_7 int 32 regular {pointer 1}  }
	{ c_8 int 32 regular {pointer 1}  }
	{ c_9 int 32 regular {pointer 1}  }
	{ c_10 int 32 regular {pointer 1}  }
	{ c_11 int 32 regular {pointer 1}  }
	{ c_12 int 32 regular {pointer 1}  }
	{ c_13 int 32 regular {pointer 1}  }
	{ c_14 int 32 regular {pointer 1}  }
	{ c_15 int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "a_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_1", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_3", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_4", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_5", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_6", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_7", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_8", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_9", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_10", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_11", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_12", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_13", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_14", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c_15", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 69
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_0 sc_in sc_lv 32 signal 0 } 
	{ a_1 sc_in sc_lv 32 signal 1 } 
	{ a_2 sc_in sc_lv 32 signal 2 } 
	{ a_3 sc_in sc_lv 32 signal 3 } 
	{ a_4 sc_in sc_lv 32 signal 4 } 
	{ a_5 sc_in sc_lv 32 signal 5 } 
	{ a_6 sc_in sc_lv 32 signal 6 } 
	{ a_7 sc_in sc_lv 32 signal 7 } 
	{ a_8 sc_in sc_lv 32 signal 8 } 
	{ a_9 sc_in sc_lv 32 signal 9 } 
	{ a_10 sc_in sc_lv 32 signal 10 } 
	{ a_11 sc_in sc_lv 32 signal 11 } 
	{ a_12 sc_in sc_lv 32 signal 12 } 
	{ a_13 sc_in sc_lv 32 signal 13 } 
	{ a_14 sc_in sc_lv 32 signal 14 } 
	{ a_15 sc_in sc_lv 32 signal 15 } 
	{ b_0 sc_in sc_lv 32 signal 16 } 
	{ b_1 sc_in sc_lv 32 signal 17 } 
	{ b_2 sc_in sc_lv 32 signal 18 } 
	{ b_3 sc_in sc_lv 32 signal 19 } 
	{ b_4 sc_in sc_lv 32 signal 20 } 
	{ b_5 sc_in sc_lv 32 signal 21 } 
	{ b_6 sc_in sc_lv 32 signal 22 } 
	{ b_7 sc_in sc_lv 32 signal 23 } 
	{ b_8 sc_in sc_lv 32 signal 24 } 
	{ b_9 sc_in sc_lv 32 signal 25 } 
	{ b_10 sc_in sc_lv 32 signal 26 } 
	{ b_11 sc_in sc_lv 32 signal 27 } 
	{ b_12 sc_in sc_lv 32 signal 28 } 
	{ b_13 sc_in sc_lv 32 signal 29 } 
	{ b_14 sc_in sc_lv 32 signal 30 } 
	{ b_15 sc_in sc_lv 32 signal 31 } 
	{ c_0 sc_out sc_lv 32 signal 32 } 
	{ c_0_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ c_1 sc_out sc_lv 32 signal 33 } 
	{ c_1_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ c_2 sc_out sc_lv 32 signal 34 } 
	{ c_2_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ c_3 sc_out sc_lv 32 signal 35 } 
	{ c_3_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ c_4 sc_out sc_lv 32 signal 36 } 
	{ c_4_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ c_5 sc_out sc_lv 32 signal 37 } 
	{ c_5_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ c_6 sc_out sc_lv 32 signal 38 } 
	{ c_6_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ c_7 sc_out sc_lv 32 signal 39 } 
	{ c_7_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ c_8 sc_out sc_lv 32 signal 40 } 
	{ c_8_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ c_9 sc_out sc_lv 32 signal 41 } 
	{ c_9_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ c_10 sc_out sc_lv 32 signal 42 } 
	{ c_10_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ c_11 sc_out sc_lv 32 signal 43 } 
	{ c_11_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ c_12 sc_out sc_lv 32 signal 44 } 
	{ c_12_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ c_13 sc_out sc_lv 32 signal 45 } 
	{ c_13_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ c_14 sc_out sc_lv 32 signal 46 } 
	{ c_14_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ c_15 sc_out sc_lv 32 signal 47 } 
	{ c_15_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0", "role": "default" }} , 
 	{ "name": "a_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1", "role": "default" }} , 
 	{ "name": "a_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_2", "role": "default" }} , 
 	{ "name": "a_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_3", "role": "default" }} , 
 	{ "name": "a_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_4", "role": "default" }} , 
 	{ "name": "a_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_5", "role": "default" }} , 
 	{ "name": "a_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_6", "role": "default" }} , 
 	{ "name": "a_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_7", "role": "default" }} , 
 	{ "name": "a_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_8", "role": "default" }} , 
 	{ "name": "a_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_9", "role": "default" }} , 
 	{ "name": "a_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_10", "role": "default" }} , 
 	{ "name": "a_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_11", "role": "default" }} , 
 	{ "name": "a_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_12", "role": "default" }} , 
 	{ "name": "a_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_13", "role": "default" }} , 
 	{ "name": "a_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_14", "role": "default" }} , 
 	{ "name": "a_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_15", "role": "default" }} , 
 	{ "name": "b_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_0", "role": "default" }} , 
 	{ "name": "b_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "default" }} , 
 	{ "name": "b_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_2", "role": "default" }} , 
 	{ "name": "b_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_3", "role": "default" }} , 
 	{ "name": "b_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_4", "role": "default" }} , 
 	{ "name": "b_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_5", "role": "default" }} , 
 	{ "name": "b_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_6", "role": "default" }} , 
 	{ "name": "b_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_7", "role": "default" }} , 
 	{ "name": "b_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_8", "role": "default" }} , 
 	{ "name": "b_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_9", "role": "default" }} , 
 	{ "name": "b_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_10", "role": "default" }} , 
 	{ "name": "b_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_11", "role": "default" }} , 
 	{ "name": "b_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_12", "role": "default" }} , 
 	{ "name": "b_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_13", "role": "default" }} , 
 	{ "name": "b_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_14", "role": "default" }} , 
 	{ "name": "b_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_15", "role": "default" }} , 
 	{ "name": "c_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_0", "role": "default" }} , 
 	{ "name": "c_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_0", "role": "ap_vld" }} , 
 	{ "name": "c_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_1", "role": "default" }} , 
 	{ "name": "c_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_1", "role": "ap_vld" }} , 
 	{ "name": "c_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_2", "role": "default" }} , 
 	{ "name": "c_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_2", "role": "ap_vld" }} , 
 	{ "name": "c_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_3", "role": "default" }} , 
 	{ "name": "c_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_3", "role": "ap_vld" }} , 
 	{ "name": "c_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_4", "role": "default" }} , 
 	{ "name": "c_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_4", "role": "ap_vld" }} , 
 	{ "name": "c_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_5", "role": "default" }} , 
 	{ "name": "c_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_5", "role": "ap_vld" }} , 
 	{ "name": "c_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_6", "role": "default" }} , 
 	{ "name": "c_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_6", "role": "ap_vld" }} , 
 	{ "name": "c_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_7", "role": "default" }} , 
 	{ "name": "c_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_7", "role": "ap_vld" }} , 
 	{ "name": "c_8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_8", "role": "default" }} , 
 	{ "name": "c_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_8", "role": "ap_vld" }} , 
 	{ "name": "c_9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_9", "role": "default" }} , 
 	{ "name": "c_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_9", "role": "ap_vld" }} , 
 	{ "name": "c_10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_10", "role": "default" }} , 
 	{ "name": "c_10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_10", "role": "ap_vld" }} , 
 	{ "name": "c_11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_11", "role": "default" }} , 
 	{ "name": "c_11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_11", "role": "ap_vld" }} , 
 	{ "name": "c_12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_12", "role": "default" }} , 
 	{ "name": "c_12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_12", "role": "ap_vld" }} , 
 	{ "name": "c_13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_13", "role": "default" }} , 
 	{ "name": "c_13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_13", "role": "ap_vld" }} , 
 	{ "name": "c_14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_14", "role": "default" }} , 
 	{ "name": "c_14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_14", "role": "ap_vld" }} , 
 	{ "name": "c_15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_15", "role": "default" }} , 
 	{ "name": "c_15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "c_15", "role": "ap_vld" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "vector_mult_partition",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "a_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "a_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "c_15", "Type" : "Vld", "Direction" : "O"}]},
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
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U16", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	vector_mult_partition {
		a_0 {Type I LastRead 0 FirstWrite -1}
		a_1 {Type I LastRead 0 FirstWrite -1}
		a_2 {Type I LastRead 0 FirstWrite -1}
		a_3 {Type I LastRead 0 FirstWrite -1}
		a_4 {Type I LastRead 0 FirstWrite -1}
		a_5 {Type I LastRead 0 FirstWrite -1}
		a_6 {Type I LastRead 0 FirstWrite -1}
		a_7 {Type I LastRead 0 FirstWrite -1}
		a_8 {Type I LastRead 0 FirstWrite -1}
		a_9 {Type I LastRead 0 FirstWrite -1}
		a_10 {Type I LastRead 0 FirstWrite -1}
		a_11 {Type I LastRead 0 FirstWrite -1}
		a_12 {Type I LastRead 0 FirstWrite -1}
		a_13 {Type I LastRead 0 FirstWrite -1}
		a_14 {Type I LastRead 0 FirstWrite -1}
		a_15 {Type I LastRead 0 FirstWrite -1}
		b_0 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		b_2 {Type I LastRead 0 FirstWrite -1}
		b_3 {Type I LastRead 0 FirstWrite -1}
		b_4 {Type I LastRead 0 FirstWrite -1}
		b_5 {Type I LastRead 0 FirstWrite -1}
		b_6 {Type I LastRead 0 FirstWrite -1}
		b_7 {Type I LastRead 0 FirstWrite -1}
		b_8 {Type I LastRead 0 FirstWrite -1}
		b_9 {Type I LastRead 0 FirstWrite -1}
		b_10 {Type I LastRead 0 FirstWrite -1}
		b_11 {Type I LastRead 0 FirstWrite -1}
		b_12 {Type I LastRead 0 FirstWrite -1}
		b_13 {Type I LastRead 0 FirstWrite -1}
		b_14 {Type I LastRead 0 FirstWrite -1}
		b_15 {Type I LastRead 0 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 0}
		c_1 {Type O LastRead -1 FirstWrite 0}
		c_2 {Type O LastRead -1 FirstWrite 0}
		c_3 {Type O LastRead -1 FirstWrite 0}
		c_4 {Type O LastRead -1 FirstWrite 0}
		c_5 {Type O LastRead -1 FirstWrite 0}
		c_6 {Type O LastRead -1 FirstWrite 0}
		c_7 {Type O LastRead -1 FirstWrite 0}
		c_8 {Type O LastRead -1 FirstWrite 0}
		c_9 {Type O LastRead -1 FirstWrite 0}
		c_10 {Type O LastRead -1 FirstWrite 0}
		c_11 {Type O LastRead -1 FirstWrite 0}
		c_12 {Type O LastRead -1 FirstWrite 0}
		c_13 {Type O LastRead -1 FirstWrite 0}
		c_14 {Type O LastRead -1 FirstWrite 0}
		c_15 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a_0 { ap_none {  { a_0 in_data 0 32 } } }
	a_1 { ap_none {  { a_1 in_data 0 32 } } }
	a_2 { ap_none {  { a_2 in_data 0 32 } } }
	a_3 { ap_none {  { a_3 in_data 0 32 } } }
	a_4 { ap_none {  { a_4 in_data 0 32 } } }
	a_5 { ap_none {  { a_5 in_data 0 32 } } }
	a_6 { ap_none {  { a_6 in_data 0 32 } } }
	a_7 { ap_none {  { a_7 in_data 0 32 } } }
	a_8 { ap_none {  { a_8 in_data 0 32 } } }
	a_9 { ap_none {  { a_9 in_data 0 32 } } }
	a_10 { ap_none {  { a_10 in_data 0 32 } } }
	a_11 { ap_none {  { a_11 in_data 0 32 } } }
	a_12 { ap_none {  { a_12 in_data 0 32 } } }
	a_13 { ap_none {  { a_13 in_data 0 32 } } }
	a_14 { ap_none {  { a_14 in_data 0 32 } } }
	a_15 { ap_none {  { a_15 in_data 0 32 } } }
	b_0 { ap_none {  { b_0 in_data 0 32 } } }
	b_1 { ap_none {  { b_1 in_data 0 32 } } }
	b_2 { ap_none {  { b_2 in_data 0 32 } } }
	b_3 { ap_none {  { b_3 in_data 0 32 } } }
	b_4 { ap_none {  { b_4 in_data 0 32 } } }
	b_5 { ap_none {  { b_5 in_data 0 32 } } }
	b_6 { ap_none {  { b_6 in_data 0 32 } } }
	b_7 { ap_none {  { b_7 in_data 0 32 } } }
	b_8 { ap_none {  { b_8 in_data 0 32 } } }
	b_9 { ap_none {  { b_9 in_data 0 32 } } }
	b_10 { ap_none {  { b_10 in_data 0 32 } } }
	b_11 { ap_none {  { b_11 in_data 0 32 } } }
	b_12 { ap_none {  { b_12 in_data 0 32 } } }
	b_13 { ap_none {  { b_13 in_data 0 32 } } }
	b_14 { ap_none {  { b_14 in_data 0 32 } } }
	b_15 { ap_none {  { b_15 in_data 0 32 } } }
	c_0 { ap_vld {  { c_0 out_data 1 32 }  { c_0_ap_vld out_vld 1 1 } } }
	c_1 { ap_vld {  { c_1 out_data 1 32 }  { c_1_ap_vld out_vld 1 1 } } }
	c_2 { ap_vld {  { c_2 out_data 1 32 }  { c_2_ap_vld out_vld 1 1 } } }
	c_3 { ap_vld {  { c_3 out_data 1 32 }  { c_3_ap_vld out_vld 1 1 } } }
	c_4 { ap_vld {  { c_4 out_data 1 32 }  { c_4_ap_vld out_vld 1 1 } } }
	c_5 { ap_vld {  { c_5 out_data 1 32 }  { c_5_ap_vld out_vld 1 1 } } }
	c_6 { ap_vld {  { c_6 out_data 1 32 }  { c_6_ap_vld out_vld 1 1 } } }
	c_7 { ap_vld {  { c_7 out_data 1 32 }  { c_7_ap_vld out_vld 1 1 } } }
	c_8 { ap_vld {  { c_8 out_data 1 32 }  { c_8_ap_vld out_vld 1 1 } } }
	c_9 { ap_vld {  { c_9 out_data 1 32 }  { c_9_ap_vld out_vld 1 1 } } }
	c_10 { ap_vld {  { c_10 out_data 1 32 }  { c_10_ap_vld out_vld 1 1 } } }
	c_11 { ap_vld {  { c_11 out_data 1 32 }  { c_11_ap_vld out_vld 1 1 } } }
	c_12 { ap_vld {  { c_12 out_data 1 32 }  { c_12_ap_vld out_vld 1 1 } } }
	c_13 { ap_vld {  { c_13 out_data 1 32 }  { c_13_ap_vld out_vld 1 1 } } }
	c_14 { ap_vld {  { c_14 out_data 1 32 }  { c_14_ap_vld out_vld 1 1 } } }
	c_15 { ap_vld {  { c_15 out_data 1 32 }  { c_15_ap_vld out_vld 1 1 } } }
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
