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

#Overlays
DEVICE_PACKAGE_OVERLAYS += device/BLU/D190U/overlay

LOCAL_PATH := device/BLU/D190U

PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/headset-keyboard.kl:system/usr/keylayout/headset-keyboard.kl \
     $(LOCAL_PATH)/sci-keypad.kl:system/usr/keylayout/sci-keypad.kl 

#Video Wallpapers
PRODUCT_VIDEO_WALLPAPERS := none	 

PRODUCT_COPY_FILES += device/BLU/D190U/twrp.fstab:recovery/root/etc/twrp.fstab

#Build.prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
	 ro.sf.lcd_density=160 \
	 ro.sf.lcd_width=36 \
	 ro.sf.lcd_height=54 \
	 keyguard.no_require_sim=true \
	 lmk.autocalc=false \
	 ro.msms.phone_count=2 \
	 ro.modem.w.count=2 \
	 sys.usb.gser.count=4

#Audio
PRODUCT_COPY_FILES += \
	 $(LOCAL_PATH)/audio_params/tiny_hw.xml:system/etc/tiny_hw.xml \
	 $(LOCAL_PATH)/audio_params/audio_hw.xml:system/etc/audio_hw.xml \
	 $(LOCAL_PATH)/audio_params/codec_pga.xml:system/etc/codec_pga.xml \
	 $(LOCAL_PATH)/audio_params/audio_policy.conf:system/etc/audio_policy.conf \
	 $(LOCAL_PATH)/audio_params/audio_para:system/etc/audio_para \
	 $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
	 $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

#Frameworks needed
PRODUCT_COPY_FILES += \
	 frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	 frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	 frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	 frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	 frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	 frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	 frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	 frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	 frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	 frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	 frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	 frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
	 frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	 frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

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
	$(LOCAL_PATH)/ramdisk/init.recovery.board.rc \
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
