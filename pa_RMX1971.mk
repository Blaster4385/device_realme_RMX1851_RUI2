#
# Copyright (C) 2022 Naufal Altaf <nao@altaf.xyz>
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit common AOSP system configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/mainline_system.mk)

# Inherit common AOSP product configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_product.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_product.mk)

# Inherit common AOSPA configurations
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DISABLES_GAPPS := true
$(call inherit-product, vendor/pa/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, device/realme/RMX1971/device.mk)

# Target configurations
PRODUCT_NAME := pa_RMX1971
PRODUCT_DEVICE := RMX1971
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme 5 Pro
PRODUCT_MANUFACTURER := realme

# Set Android client-id
PRODUCT_GMS_CLIENTID_BASE := android-realme

# Override build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX1971-user 10 QKQ1.190918.001 1621845351 release-keys"

BUILD_FINGERPRINT := realme/RMX1971/RMX1971:10/QKQ1.190918.001/1621845351:user/release-keys
