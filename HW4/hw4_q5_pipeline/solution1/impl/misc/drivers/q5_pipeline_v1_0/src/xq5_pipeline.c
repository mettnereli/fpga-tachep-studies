// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xq5_pipeline.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XQ5_pipeline_CfgInitialize(XQ5_pipeline *InstancePtr, XQ5_pipeline_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XQ5_pipeline_Start(XQ5_pipeline *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQ5_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XQ5_PIPELINE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XQ5_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XQ5_PIPELINE_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XQ5_pipeline_IsDone(XQ5_pipeline *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQ5_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XQ5_PIPELINE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XQ5_pipeline_IsIdle(XQ5_pipeline *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQ5_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XQ5_PIPELINE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XQ5_pipeline_IsReady(XQ5_pipeline *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQ5_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XQ5_PIPELINE_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XQ5_pipeline_EnableAutoRestart(XQ5_pipeline *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQ5_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XQ5_PIPELINE_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XQ5_pipeline_DisableAutoRestart(XQ5_pipeline *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQ5_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XQ5_PIPELINE_CONTROL_ADDR_AP_CTRL, 0);
}

void XQ5_pipeline_InterruptGlobalEnable(XQ5_pipeline *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQ5_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XQ5_PIPELINE_CONTROL_ADDR_GIE, 1);
}

void XQ5_pipeline_InterruptGlobalDisable(XQ5_pipeline *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQ5_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XQ5_PIPELINE_CONTROL_ADDR_GIE, 0);
}

void XQ5_pipeline_InterruptEnable(XQ5_pipeline *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQ5_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XQ5_PIPELINE_CONTROL_ADDR_IER);
    XQ5_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XQ5_PIPELINE_CONTROL_ADDR_IER, Register | Mask);
}

void XQ5_pipeline_InterruptDisable(XQ5_pipeline *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQ5_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XQ5_PIPELINE_CONTROL_ADDR_IER);
    XQ5_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XQ5_PIPELINE_CONTROL_ADDR_IER, Register & (~Mask));
}

void XQ5_pipeline_InterruptClear(XQ5_pipeline *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQ5_pipeline_WriteReg(InstancePtr->Control_BaseAddress, XQ5_PIPELINE_CONTROL_ADDR_ISR, Mask);
}

u32 XQ5_pipeline_InterruptGetEnabled(XQ5_pipeline *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQ5_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XQ5_PIPELINE_CONTROL_ADDR_IER);
}

u32 XQ5_pipeline_InterruptGetStatus(XQ5_pipeline *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQ5_pipeline_ReadReg(InstancePtr->Control_BaseAddress, XQ5_PIPELINE_CONTROL_ADDR_ISR);
}

