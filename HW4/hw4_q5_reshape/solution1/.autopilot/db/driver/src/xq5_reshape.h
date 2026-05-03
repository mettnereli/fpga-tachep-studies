// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XQ5_RESHAPE_H
#define XQ5_RESHAPE_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xq5_reshape_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XQ5_reshape_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XQ5_reshape;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XQ5_reshape_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XQ5_reshape_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XQ5_reshape_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XQ5_reshape_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XQ5_reshape_Initialize(XQ5_reshape *InstancePtr, UINTPTR BaseAddress);
XQ5_reshape_Config* XQ5_reshape_LookupConfig(UINTPTR BaseAddress);
#else
int XQ5_reshape_Initialize(XQ5_reshape *InstancePtr, u16 DeviceId);
XQ5_reshape_Config* XQ5_reshape_LookupConfig(u16 DeviceId);
#endif
int XQ5_reshape_CfgInitialize(XQ5_reshape *InstancePtr, XQ5_reshape_Config *ConfigPtr);
#else
int XQ5_reshape_Initialize(XQ5_reshape *InstancePtr, const char* InstanceName);
int XQ5_reshape_Release(XQ5_reshape *InstancePtr);
#endif

void XQ5_reshape_Start(XQ5_reshape *InstancePtr);
u32 XQ5_reshape_IsDone(XQ5_reshape *InstancePtr);
u32 XQ5_reshape_IsIdle(XQ5_reshape *InstancePtr);
u32 XQ5_reshape_IsReady(XQ5_reshape *InstancePtr);
void XQ5_reshape_EnableAutoRestart(XQ5_reshape *InstancePtr);
void XQ5_reshape_DisableAutoRestart(XQ5_reshape *InstancePtr);


void XQ5_reshape_InterruptGlobalEnable(XQ5_reshape *InstancePtr);
void XQ5_reshape_InterruptGlobalDisable(XQ5_reshape *InstancePtr);
void XQ5_reshape_InterruptEnable(XQ5_reshape *InstancePtr, u32 Mask);
void XQ5_reshape_InterruptDisable(XQ5_reshape *InstancePtr, u32 Mask);
void XQ5_reshape_InterruptClear(XQ5_reshape *InstancePtr, u32 Mask);
u32 XQ5_reshape_InterruptGetEnabled(XQ5_reshape *InstancePtr);
u32 XQ5_reshape_InterruptGetStatus(XQ5_reshape *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
