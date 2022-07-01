#
# Copyright (C) 2022 Naufal Altaf <nao@altaf.xyz>
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product-if-exists, vendor/realme/RMX1971/RMX1971-vendor.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# APEX
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Audio
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml

PRODUCT_PACKAGES += \
    android.hardware.audio@5.0-impl \
    android.hardware.audio.effect@5.0-impl \
    android.hardware.audio@2.0-service \
    android.hardware.bluetooth.audio@2.0-impl \
    android.hardware.soundtrigger@2.1-impl

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.bluetooth.default \
    audio.primary.sdm710 \
    audio.r_submix.default \
    audio.usb.default

PRODUCT_PACKAGES += \
    libaudioalsa \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libtinycompress \
    libvolumelistener \
    tinymix

# Init
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc

# GSI
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
