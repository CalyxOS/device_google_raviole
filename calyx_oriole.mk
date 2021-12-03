#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := oriole
DEVICE_PATH := device/google/raviole
VENDOR_PATH := vendor/google/oriole
$(call inherit-product, device/google/gs101/calyx_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-calyx.mk)
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6
PRODUCT_NAME := calyx_$(DEVICE_CODENAME)

PRODUCT_SYSTEM_NAME := $(DEVICE_CODENAME)

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME) \
    PRIVATE_BUILD_DESC="oriole-user 14 AP2A.240905.003.F1 12235381 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:14/AP2A.240905.003.F1/12235381:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
