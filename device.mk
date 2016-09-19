# Copyright (C) 2016 The CyanogenMod Project
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
# Thank you BLU for never responding to my enquiries about source code
#
# and I guess this phone as well....

#We need an fstab
PRODUCT_COPY_FILES += device/blu/scx15_sp7715ga_FS001/nand/twrp.fstab:recovery/root/etc/twrp.fstab

#And another....
PRODUCT_COPY_FILES += device/blu/scx15_sp7715ga_FS001/rootdir/fstab.scx15:root/fstab.scx15

PRODUCT_PACKAGES += \
    mke2fs \
    mkcached.sh \
	busybox

#Video Wallpapers (Who uses these??)
#PRODUCT_VIDEO_WALLPAPERS := none

PRODUCT_PROPERTY_OVERRIDES += \
	ro.storage.flash_type=1

STORAGE_INTERNAL := emulated
STORAGE_PRIMARY := external

PRODUCT_COPY_FILES += \
	    device/blu/scx15_sp7715ga_FS001/storage/init.storage.rc:root/init.storage.rc

PRODUCT_PACKAGE_OVERLAYS := device/blu/scx15_sp7715ga_FS001/storage

#Build.prop overrides
PRODUCT_PROPERTY_OVERRIDES += \
	 ro.sf.lcd_density=160 \
	 ro.sf.lcd_width=36 \
	 ro.sf.lcd_height=54 \
	 keyguard.no_require_sim=true \
	 ro.msms.phone_count=2 \
	 ro.modem.w.count=2 \
	 wcdma.sim.slot.cfg=true \
	 sys.usb.gser.count=4
	 
