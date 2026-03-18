#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := raven
DEVICE_PATH := device/google/raviole
VENDOR_PATH := vendor/google/raven
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_NAME := calyx_$(DEVICE_CODENAME)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="raven-user 16 BP4A.251205.006 14401865 release-keys" \
    BuildFingerprint=google/raven/raven:16/BP4A.251205.006/14401865:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
