# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/gs101/calyx_common.mk)
$(call inherit-product, device/google/raviole/device-calyx.mk)
$(call inherit-product, device/google/raviole/aosp_raven.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 12 SP2A.220405.004 8233519 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SP2A.220405.004/8233519:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
