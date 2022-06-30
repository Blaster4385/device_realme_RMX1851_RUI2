#
# Copyright (C) 2022 Naufal Altaf <nao@altaf.xyz>
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit common AOSP system configurations.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/mainline_system.mk)

# Inherit common AOSP product configurations.
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_product.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_product.mk)

# Inherit device configurations.
$(call inherit-product, device/realme/RMX1971/device.mk)

# Target configurations.
PRODUCT_NAME := RMX1971
PRODUCT_DEVICE := RMX1971
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX1971
PRODUCT_MANUFACTURER := realme
