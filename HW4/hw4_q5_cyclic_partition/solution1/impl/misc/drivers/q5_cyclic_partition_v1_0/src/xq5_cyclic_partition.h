// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XQ5_CYCLIC_PARTITION_H
#define XQ5_CYCLIC_PARTITION_H

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
#include "xq5_cyclic_partition_hw.h"

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
} XQ5_cyclic_partition_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XQ5_cyclic_partition;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XQ5_cyclic_partition_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XQ5_cyclic_partition_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XQ5_cyclic_partition_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XQ5_cyclic_partition_ReadReg(BaseAddress, RegOffset) \
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
int XQ5_cyclic_partition_Initialize(XQ5_cyclic_partition *InstancePtr, UINTPTR BaseAddress);
XQ5_cyclic_partition_Config* XQ5_cyclic_partition_LookupConfig(UINTPTR BaseAddress);
#else
int XQ5_cyclic_partition_Initialize(XQ5_cyclic_partition *InstancePtr, u16 DeviceId);
XQ5_cyclic_partition_Config* XQ5_cyclic_partition_LookupConfig(u16 DeviceId);
#endif
int XQ5_cyclic_partition_CfgInitialize(XQ5_cyclic_partition *InstancePtr, XQ5_cyclic_partition_Config *ConfigPtr);
#else
int XQ5_cyclic_partition_Initialize(XQ5_cyclic_partition *InstancePtr, const char* InstanceName);
int XQ5_cyclic_partition_Release(XQ5_cyclic_partition *InstancePtr);
#endif

void XQ5_cyclic_partition_Start(XQ5_cyclic_partition *InstancePtr);
u32 XQ5_cyclic_partition_IsDone(XQ5_cyclic_partition *InstancePtr);
u32 XQ5_cyclic_partition_IsIdle(XQ5_cyclic_partition *InstancePtr);
u32 XQ5_cyclic_partition_IsReady(XQ5_cyclic_partition *InstancePtr);
void XQ5_cyclic_partition_EnableAutoRestart(XQ5_cyclic_partition *InstancePtr);
void XQ5_cyclic_partition_DisableAutoRestart(XQ5_cyclic_partition *InstancePtr);


void XQ5_cyclic_partition_InterruptGlobalEnable(XQ5_cyclic_partition *InstancePtr);
void XQ5_cyclic_partition_InterruptGlobalDisable(XQ5_cyclic_partition *InstancePtr);
void XQ5_cyclic_partition_InterruptEnable(XQ5_cyclic_partition *InstancePtr, u32 Mask);
void XQ5_cyclic_partition_InterruptDisable(XQ5_cyclic_partition *InstancePtr, u32 Mask);
void XQ5_cyclic_partition_InterruptClear(XQ5_cyclic_partition *InstancePtr, u32 Mask);
u32 XQ5_cyclic_partition_InterruptGetEnabled(XQ5_cyclic_partition *InstancePtr);
u32 XQ5_cyclic_partition_InterruptGetStatus(XQ5_cyclic_partition *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
