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

# Inherit from M1822 device
$(call inherit-product, device/meizu/M1822/device.mk)

PRODUCT_DEVICE := M1822
PRODUCT_NAME := omni_M1822
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := M1822
PRODUCT_MANUFACTURER := meizu

PRODUCT_GMS_CLIENTID_BASE := android-meizu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="meizu_M1822_CN-user 8.1.0 OPM1.171019.026 1537930165 release-keys"

BUILD_FINGERPRINT := Meizu/K81822AA1/K81822AA1:8.1.0/OPM1.171019.026/1537930165:user/release-keys
