#
#Copyright (C) 2016 The Android Open-Source Project
#
#Licensed Under the Apache License, Version 2.0 (the "License");
#You may only use this file in compliance with the License
#
#
#This BoardConfig.mk was originally made by Qiangong2 for the D190U
#
#Do Not Edit any text above and including this line
#Feel free to edit anything below this line :)
#
#
# Thanks BLU for NOT providing the source code... -_-

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := scx15
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := false
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := scx15_sp7715ga

BOARD_HAS_NO_SELECT_BUTTON := true

#Kernel
TARGET_PREBUILT_KERNEL := device/blu/d190u/zImage
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
TARGET_RECOVERY_FSTAB += device/blu/d190u/nand/twrp.fstab

#Userimages
TARGET_USERIMAGES_USE_UBIFS := true

#TWRP
RECOVERY_VARIANT := twrp
TW_NO_SCREEN_TIMEOUT := true
TWRP_INCLUDE_LOGCAT := true
DEVICE_RESOLUTION := 320x480
TW_CUSTOM_POWER_BUTTON := 116
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_FLASH_FROM_STORAGE := true
