#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from LXX503 device
$(call inherit-product, device/lava/LXX503/device.mk)

PRODUCT_DEVICE := LXX503
PRODUCT_NAME := omni_LXX503
PRODUCT_BRAND := LAVA
PRODUCT_MODEL := LAVA LXX503
PRODUCT_MANUFACTURER := lava

PRODUCT_GMS_CLIENTID_BASE := android-lava

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="LXX503-user 12 SP1A.210812.016 1669460824 release-keys"

BUILD_FINGERPRINT := LAVA/LXX503/LXX503:12/SP1A.210812.016/1669458002:user/release-keys
