
#cm.mk originally made by Qiangong2
#	NOT by BLU

#release name
PRODUCT_RELEASE_NAME := scx15_sp7715ga_FS001

#inherit common CM stuff
$(call inherit-product, vendor/omni/config/common.mk)

#inherit device configuration
$(call inherit-product, device/blu/scx15_sp7715ga_FS001/full_scx15_sp7715ga_FS001.mk)

#Device Identifier. Needs to come after every other inclusion
PRODUCT_NAME := omni_scx15_sp7715ga_FS001
PRODUCT_DEVICE := scx15_sp7715ga_FS001
PRODUCT_BRAND := BLU
PRODUCT_MODEL := DASH JR 3G
PRODUCT_MANUFACTURER := BLU

#Override build properties
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=scx15_sp7715ga_FS001plus_NativeUIhvga \
	TARGET_DEVICE=scx15_sp7715ga_FS001 \
	BUILD_FINGERPRINT="BLU/scx15_sp7715ga_FS001plus_NativeUIhvga/scx15_sp7715ga_FS001:4.4.2/KOT49H/BLU_D190U_V08_GENERIC_20150918_1512:user/test-keys" PRIVATE_BUILD_DESC="user_4.4.2_KOT49H-BLU_D190U_V08_GENERIC_20150918_1512+test-keys"

