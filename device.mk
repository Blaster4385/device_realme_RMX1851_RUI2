#
# Copyright (C) 2022 Naufal Altaf <nao@altaf.xyz>
#
# SPDX-License-Identifier: Apache-2.0
#

# APEX
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# GSI
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Platform
TARGET_BOARD_PLATFORM := sdm710

# QTI
TARGET_COMMON_QTI_COMPONENTS := all

# Soong
PRODUCT_SOONG_NAMESPACES := \
    $(LOCAL_PATH)
