// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xq5_reshape.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XQ5_reshape_CfgInitialize(XQ5_reshape *InstancePtr, XQ5_reshape_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XQ5_reshape_Start(XQ5_reshape *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQ5_reshape_ReadReg(InstancePtr->Control_BaseAddress, XQ5_RESHAPE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XQ5_reshape_WriteReg(InstancePtr->Control_BaseAddress, XQ5_RESHAPE_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XQ5_reshape_IsDone(XQ5_reshape *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQ5_reshape_ReadReg(InstancePtr->Control_BaseAddress, XQ5_RESHAPE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XQ5_reshape_IsIdle(XQ5_reshape *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQ5_reshape_ReadReg(InstancePtr->Control_BaseAddress, XQ5_RESHAPE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XQ5_reshape_IsReady(XQ5_reshape *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQ5_reshape_ReadReg(InstancePtr->Control_BaseAddress, XQ5_RESHAPE_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XQ5_reshape_EnableAutoRestart(XQ5_reshape *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQ5_reshape_WriteReg(InstancePtr->Control_BaseAddress, XQ5_RESHAPE_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XQ5_reshape_DisableAutoRestart(XQ5_reshape *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQ5_reshape_WriteReg(InstancePtr->Control_BaseAddress, XQ5_RESHAPE_CONTROL_ADDR_AP_CTRL, 0);
}

void XQ5_reshape_InterruptGlobalEnable(XQ5_reshape *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQ5_reshape_WriteReg(InstancePtr->Control_BaseAddress, XQ5_RESHAPE_CONTROL_ADDR_GIE, 1);
}

void XQ5_reshape_InterruptGlobalDisable(XQ5_reshape *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQ5_reshape_WriteReg(InstancePtr->Control_BaseAddress, XQ5_RESHAPE_CONTROL_ADDR_GIE, 0);
}

void XQ5_reshape_InterruptEnable(XQ5_reshape *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQ5_reshape_ReadReg(InstancePtr->Control_BaseAddress, XQ5_RESHAPE_CONTROL_ADDR_IER);
    XQ5_reshape_WriteReg(InstancePtr->Control_BaseAddress, XQ5_RESHAPE_CONTROL_ADDR_IER, Register | Mask);
}

void XQ5_reshape_InterruptDisable(XQ5_reshape *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQ5_reshape_ReadReg(InstancePtr->Control_BaseAddress, XQ5_RESHAPE_CONTROL_ADDR_IER);
    XQ5_reshape_WriteReg(InstancePtr->Control_BaseAddress, XQ5_RESHAPE_CONTROL_ADDR_IER, Register & (~Mask));
}

void XQ5_reshape_InterruptClear(XQ5_reshape *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQ5_reshape_WriteReg(InstancePtr->Control_BaseAddress, XQ5_RESHAPE_CONTROL_ADDR_ISR, Mask);
}

u32 XQ5_reshape_InterruptGetEnabled(XQ5_reshape *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQ5_reshape_ReadReg(InstancePtr->Control_BaseAddress, XQ5_RESHAPE_CONTROL_ADDR_IER);
}

u32 XQ5_reshape_InterruptGetStatus(XQ5_reshape *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQ5_reshape_ReadReg(InstancePtr->Control_BaseAddress, XQ5_RESHAPE_CONTROL_ADDR_ISR);
}

