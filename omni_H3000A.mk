#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from H3000A device
$(call inherit-product, device/eebbk/H3000A/device.mk)

PRODUCT_DEVICE := H3000A
PRODUCT_NAME := omni_H3000A
PRODUCT_BRAND := EEBBK
PRODUCT_MODEL := S3 Prow
PRODUCT_MANUFACTURER := eebbk

PRODUCT_GMS_CLIENTID_BASE := android-eebbk

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_H3000A-user 7.0 NRD90M V1.4.6_210910 release-keys"

BUILD_FINGERPRINT := EEBBK/full_H3000A/H3000A:7.0/NRD90M/V1.4.6_210910:user/release-keys
