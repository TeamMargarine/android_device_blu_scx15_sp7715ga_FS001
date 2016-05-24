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
TARGET_BOARD_PLATFORM := scx15
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := false
ARCH_ARM_HAVE_TLS_REGISTER := true
#TARGET_ARCH_LOWMEM := true
TARGET_BOOTLOADER_BOARD_NAME := scx15_sp7715ga
#BOARD_HAS_LARGE_FILESYSTEM := false

#fstab
TARGET_RECOVERY_FSTAB := device/BLU/D190U/nand/recovery.fstab

#config u-boot
TARGET_NO_BOOTLOADER := false

#configure kernel
TARGET_NO_KERNEL := false
USES_UNCOMPRESSED_KERNEL := true
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttS1,115200n8
#TARGET_KERNEL_CONFIG := cm_scx15_sp7715ga_FS001-defconfig
TARGET_PREBUILT_KERNEL := device/BLU/D190U/zImage

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
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 223032115
BOARD_USERDATAIMAGE_PARTITION_SIZE := 191050547
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 113141350
BOARD_CACHEIMAGE_PARTITION_SIZE := 57671680
BOARD_PRODNVIMAGE_PARTITION_SIZE := 1153433
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ubifs
BOARD_PRODNVIMAGE_FILE_SYSTEM_TYPE := ubifs

#Bluetooth configs
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_SPRD := true
BOARD_USE_SPRD_FMAPP := false

#GPS
BOARD_USE_SPRD_4IN1_GPS := true

#Userimages
TARGET_USERIMAGES_USE_UBIFS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ubifs
BOARD_PRODNVIMAGE_FILE_SYSTEM_TYPE := ubifs

#Boot Animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

# WIFI configs
BOARD_WPA_SUPPLICANT_DRIVER := NL80211

# select WCN
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_SPRD := true
BOARD_HAVE_FM_TROUT := true
BOARD_USE_SPRD_FMAPP := true

# Enable dex-preoptimization
WITH_DEXPREOPT := true

#Recovery related
TARGET_RECOVERY_INITRC := device/BLU/D190U/ramdisk/init.rc

#Audio configs
BOARD_USES_TINYALSA_AUDIO := true
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := false
BUILD_WITH_ALSA_UTILS := false

#TWRP parts
RECOVERY_VARIANT := twrp
TW_THEME := portrait_mdpi
TW_CUSTOM_POWER_BUTTON := 116
TW_NO_BATT_PERCENT := true
DEVICE_RESOLUTION := 320x480
