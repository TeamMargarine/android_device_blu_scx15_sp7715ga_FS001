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
# Thanks BLU for NOT providing the source code... -_-

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

#fstab for cwm
#TARGET_RECOVERY_FSTAB := device/BLU/D190U/nand/recovery.fstab

#fstab for twrp
TARGET_RECOVERY_FSTAB := device/BLU/D190U/nand/twrp.fstab

#config u-boot
TARGET_NO_BOOTLOADER := false

#configure kernel (We love prebuilt kernels :D )
TARGET_NO_KERNEL := false
TARGET_USES_UNCOMPRESSED_KERNEL := true
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttS1,115200n8
#TARGET_KERNEL_CONFIG := sp7715ga-native-hvga_defconfig
TARGET_PREBUILT_KERNEL := device/BLU/D190U/zImage
#TARGET_KERNEL_SOURCE := kernel/BLU/D190U
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.6

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
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 113141350
BOARD_CACHEIMAGE_PARTITION_SIZE := 57671680
BOARD_PRODNVIMAGE_PARTITION_SIZE := 1153433

#Bluetooth configs
BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_SPRD := true
#BOARD_USE_SPRD_FMAPP := false

#GPS
BOARD_USE_SPRD_4IN1_GPS := true

#Userimages
TARGET_USERIMAGES_USE_UBIFS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ubifs
BOARD_PRODNVIMAGE_FILE_SYSTEM_TYPE := ubifs

#Boot Animation (Is this the problem why the recovery isn't working on build?)
#TARGET_SCREEN_HEIGHT := 480
#TARGET_SCREEN_WIDTH := 320

# WIFI configs
#BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#WPA_SUPPLICANT_VERSION      := VER_2_1_DEVEL
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_sprdwl
#BOARD_HOSTAPD_DRIVER        := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_sprdwl
#BOARD_WLAN_DEVICE           := sprdwl
WIFI_DRIVER_FW_PATH_PARAM   := "/data/misc/wifi/fwpath"
WIFI_DRIVER_FW_PATH_STA     := "sta_mode"
WIFI_DRIVER_FW_PATH_P2P     := "p2p_mode"
WIFI_DRIVER_FW_PATH_AP      := "ap_mode"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/sprdwl.ko"
WIFI_DRIVER_MODULE_NAME     := "sprdwl"

# select WCN
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_SPRD := true
BOARD_HAVE_FM_TROUT := true
BOARD_USE_SPRD_FMAPP := true

# Enable dex-preoptimization
WITH_DEXPREOPT := true

#Recovery related (comment this when building twrp)
#TARGET_RECOVERY_INITRC := device/BLU/D190U/ramdisk/init.rc

#Audio configs
BOARD_USES_TINYALSA_AUDIO := true
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := false
BUILD_WITH_ALSA_UTILS := false

#change for different recovery types
RECOVERY_VARIANT := twrp

#TWRP parts (comment these when not building twrp)
TW_THEME := portrait_mdpi
TW_CUSTOM_POWER_BUTTON := 116
TARGET_RECOVERY_INITRC := device/BLU/D190U/ramdisk/init.rc
TW_NO_BATT_PERCENT := true
DEVICE_RESOLUTION := 320x480
TW_HAVE_SELINUX := true
TW_INTERNAL_STORAGE_PATH := "/dev/block/platform/sprd-sdhci.0/mmcblk0p1"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_FLASH_FROM_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
#SP1_NAME := "sdcard"
#SP1_BACKUP_METHOD := files
#SP1_MOUNTABLE := 1
