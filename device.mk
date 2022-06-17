#
# Copyright (C) 2022 Naufal Altaf <nao@altaf.xyz>
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_TARGET_VNDK_VERSION := 29

# APEX
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Fingerprint
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml

PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.realme

# GSI
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Light
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.realme

# Overlay
PRODUCT_PACKAGES += \
    RealmeFramework

# Platform
TARGET_BOARD_PLATFORM := sdm710

# QTI
TARGET_COMMON_QTI_COMPONENTS := all

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
