set ModuleHierarchy {[{
"Name" : "hw5_ex1_op","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_read_data_fu_44","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_6_1","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_compute_blur_fu_56","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_14_1","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_write_data_fu_64","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_22_1","ID" : "6","Type" : "pipeline"},]},]
}]}