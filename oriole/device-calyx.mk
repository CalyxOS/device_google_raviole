#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(DEVICE_PATH)/device-calyx.mk)

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/$(DEVICE_CODENAME)/overlay-calyx

# HBM
PRODUCT_PACKAGES += \
    HbmSVManagerOverlay
