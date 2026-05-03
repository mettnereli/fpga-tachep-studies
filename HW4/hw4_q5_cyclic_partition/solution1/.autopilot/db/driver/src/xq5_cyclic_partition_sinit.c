// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xq5_cyclic_partition.h"

extern XQ5_cyclic_partition_Config XQ5_cyclic_partition_ConfigTable[];

#ifdef SDT
XQ5_cyclic_partition_Config *XQ5_cyclic_partition_LookupConfig(UINTPTR BaseAddress) {
	XQ5_cyclic_partition_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XQ5_cyclic_partition_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XQ5_cyclic_partition_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XQ5_cyclic_partition_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XQ5_cyclic_partition_Initialize(XQ5_cyclic_partition *InstancePtr, UINTPTR BaseAddress) {
	XQ5_cyclic_partition_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XQ5_cyclic_partition_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XQ5_cyclic_partition_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XQ5_cyclic_partition_Config *XQ5_cyclic_partition_LookupConfig(u16 DeviceId) {
	XQ5_cyclic_partition_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XQ5_CYCLIC_PARTITION_NUM_INSTANCES; Index++) {
		if (XQ5_cyclic_partition_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XQ5_cyclic_partition_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XQ5_cyclic_partition_Initialize(XQ5_cyclic_partition *InstancePtr, u16 DeviceId) {
	XQ5_cyclic_partition_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XQ5_cyclic_partition_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XQ5_cyclic_partition_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

