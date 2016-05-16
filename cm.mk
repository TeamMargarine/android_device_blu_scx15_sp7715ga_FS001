
#cm.mk originally made by Qiangong2

#release name
PRODUCT_RELEASE_NAME := scx15_sp7715ga_FS001

#inherit common CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

#inherit device configuration
$(call inherit-product, device/BLU/D190U/full_scx15_sp7715ga_FS001.mk)

#Override build properties
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=scx15_sp7715ga_FS001plus_NativeUIhvga \
	TARGET_DEVICE=scx15_sp7715ga_FS001
	BUILD_FINGERPRINT="BLU/scx15_sp7715ga_FS001plus_NativeUIhvga/scx15_sp7715ga_FS001:4.4.2/KOT49H/BLU_D190U_V08_GENERIC_20150918_1512:user/test-keys" \
	PRIVATE_BUILD_DESC="user 4.4.2 KOT49H BLU_D190U_V08_GENERIC_20150918_1512 test-keys"

#Device Identifier. Needs to come after every other inclusion
PRODUCT_MODEL := DASH JR 3G
PRODUCT_BRAND := BLU
PRODUCT_NAME := cm_scx15_sp7715ga_FS001
PRODUCT_DEVICE := scx15_sp7715ga_FS001
PRODUCT_MANUFACTURER := BLU
