## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := bacon

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/oneplus/bacon/device_bacon.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := bacon
PRODUCT_NAME := cm_bacon
PRODUCT_BRAND := oneplus
PRODUCT_MODEL := bacon
PRODUCT_MANUFACTURER := oneplus
#TARGET_VENDOR_PRODUCT_NAME := bacon
#TARGET_VENDOR_DEVICE_NAME := A0001
#PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=A0001 PRODUCT_NAME=bacon
