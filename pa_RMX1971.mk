#
# Copyright (C) 2022 Naufal Altaf <nao@altaf.xyz>
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit common AOSPA configurations
$(call inherit-product, vendor/pa/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, device/realme/RMX1971/device.mk)

# Target configurations
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DISABLES_GMS := true

PRODUCT_NAME := pa_RMX1971
PRODUCT_DEVICE := RMX1971
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme 5 Pro
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme
