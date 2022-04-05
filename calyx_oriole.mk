# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs101/calyx_common.mk)
$(call inherit-product, device/google/raviole/device-calyx.mk)
$(call inherit-product, device/google/raviole/aosp_oriole.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_oriole
PRODUCT_MODEL := Pixel 6
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=oriole \
    PRIVATE_BUILD_DESC="oriole-user 12 SP2A.220405.004 8233519 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:12/SP2A.220405.004/8233519:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
