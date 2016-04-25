#
#Copyright (C) 2011 The Android Open-Source Project
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

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := false
ARCH_ARM_HAVE_TLS_REGISTER := true

#fstab for nand
TARGET_RECOVERY_FSTAB := device/BLU/D190U/nand/recovery.fstab

#config u-boot
TARGET_NO_BOOTLOADER := false

#configure kernel
TARGET_NO_KERNEL := false
USES_UNCOMPRESSED_KERNEL := true
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttS1,115200n8

#sepolicy
BOARD_SEPOLICY_DIRS := device/BLU/D190U/sepolicy
BOARD_SEPOLICY_UNION := \
	file.te \
	file_contexts \
	seapp_contexts \
	theme.te \
	healthd.te \
	init.te \
	init_shell.te \
	installd.te \
	netd.te \
	shell.te \
	system.te \
	untrusted_app.te \
	vold.te \
	zygote.te

# select camera 2M,3M,5M,8M
CAMERA_SUPPORT_SIZE := 2M
TARGET_BOARD_NO_FRONT_SENSOR := false

# UBIFS partition layout
TARGET_USERIMAGES_USE_UBIFS := true

#Bluetooth configs
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_SPRD := true
BOARD_USE_SPRD_FMAPP := false

#GPS
BOARD_USE_SPRD_4IN1_GPS := true
