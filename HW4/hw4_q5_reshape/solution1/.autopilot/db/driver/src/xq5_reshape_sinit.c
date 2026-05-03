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
#include "xq5_reshape.h"

extern XQ5_reshape_Config XQ5_reshape_ConfigTable[];

#ifdef SDT
XQ5_reshape_Config *XQ5_reshape_LookupConfig(UINTPTR BaseAddress) {
	XQ5_reshape_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XQ5_reshape_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XQ5_reshape_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XQ5_reshape_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XQ5_reshape_Initialize(XQ5_reshape *InstancePtr, UINTPTR BaseAddress) {
	XQ5_reshape_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XQ5_reshape_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XQ5_reshape_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XQ5_reshape_Config *XQ5_reshape_LookupConfig(u16 DeviceId) {
	XQ5_reshape_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XQ5_RESHAPE_NUM_INSTANCES; Index++) {
		if (XQ5_reshape_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XQ5_reshape_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XQ5_reshape_Initialize(XQ5_reshape *InstancePtr, u16 DeviceId) {
	XQ5_reshape_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XQ5_reshape_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XQ5_reshape_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

