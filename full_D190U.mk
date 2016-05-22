# Copyright (C) 2009 The Android Open Source Project
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
#
#This is the full mk file for the BLU Dash JR 3G D190U
#

#Inherit device-specific files
$(call inherit-product, device/BLU/D190U/device_D190U.mk)

#Overrides
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_D190U
PRODUCT_DEVICE := D190U
PRODUCT_BRAND := BLU
PRODUCT_MODEL := DASH JR 3G
PRODUCT_MANUFACTURER := BLU
