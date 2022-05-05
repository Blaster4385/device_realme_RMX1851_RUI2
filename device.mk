#
# Copyright (C) 2022 Naufal Altaf <nao@altaf.xyz>
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_TARGET_VNDK_VERSION := 29

# APEX
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# GSI
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Light
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.realme

# Platform
TARGET_BOARD_PLATFORM := sdm710

# QTI
TARGET_COMMON_QTI_COMPONENTS := all

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
