#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from LXX503 device
$(call inherit-product, device/lava/LXX503/device.mk)

PRODUCT_DEVICE := LXX503
PRODUCT_NAME := lineage_LXX503
PRODUCT_BRAND := LAVA
PRODUCT_MODEL := LAVA LXX503
PRODUCT_MANUFACTURER := lava

PRODUCT_GMS_CLIENTID_BASE := android-lava

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="LXX503-user 12 SP1A.210812.016 1669458002 release-keys"

BUILD_FINGERPRINT := LAVA/LXX503/LXX503:12/SP1A.210812.016/1669458002:user/release-keys
