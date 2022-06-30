#
# Copyright (C) 2022 Naufal Altaf <nao@altaf.xyz>
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (lineage_RMX1971,$(TARGET_PRODUCT))

# Inherit full target configurations.
$(call inherit-product, device/realme/RMX1971/RMX1971.mk)

# Inherit common LineageOS configurations.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Target configurations.
PRODUCT_NAME := lineage_RMX1971

# Set Android GMS client-id.
PRODUCT_GMS_CLIENTID_BASE := android-realme

# Override build informations.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX1971-user 10 QKQ1.190918.001 1621845351 release-keys"

BUILD_FINGERPRINT := realme/RMX1971/RMX1971:10/QKQ1.190918.001/1621845351:user/release-keys

endif
