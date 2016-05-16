# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/BLU/D190U/scx15_sp7715ga_FS001-vendor.mk)

#Boot Animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

#Video modules
PRODUCT_PACKAGES += \
	libstagefright_sprd_soft_mpeg4dec \
	libstagefright_sprd_soft_h264dec \
	libstagefright_sprd_mpeg4dec \
	libstagefright_sprd_mpeg4enc \
	libstagefright_sprd_h264dec \
	libstagefright_sprd_h264enc \
	libstagefright_sprd_vpxdec \
	libstagefright_soft_mjpgdec \
	libstagefright_soft_imaadpcmdec \
	libstagefright_sprd_aacdec \
	libstagefright_sprd_mp3dec \
	libstagefright_sprd_apedec

#Rootdir files
ROOTDIR_FILES := \
	$(LOCAL_PATH)/ramdisk/init.rc \
	$(LOCAL_PATH)/ramdisk/init.board.rc \
	$(LOCAL_PATH)/ramdisk/init.scx15.rc \
	$(LOCAL_PATH)/ramdisk/init.scx15.usb.rc \
	$(LOCAL_PATH)/ramdisk/init.scx15_ss.rc \
	$(LOCAL_PATH)/ramdisk/init.vivalto3gvn.rc \
	$(LOCAL_PATH)/ramdisk/init.vivalto3gvn_base.rc \
	$(LOCAL_PATH)/ramdisk/init.wifi.rc \
	$(LOCAL_PATH)/ramdisk/init.swap.rc \
	$(LOCAL_PATH)/ramdisk/init.recovery.scx15.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.scx15.rc \
	$(LOCAL_PATH)/ramdisk/fstab.scx15 \
	$(LOCAL_PATH)/ramdisk/fstab.swap \
	$(LOCAL_PATH)/ramdisk/property_contexts
