#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifer: Apache-2.0
#

# Inherit some common ShapeShiftOS stuff.
$(call inherit-product, vendor/ssos/config/common_full_phone.mk)

# Inherit from RMX1971 device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := RMX1971
PRODUCT_NAME := ssos_RMX1971
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 5 Pro
PRODUCT_MANUFACTURER := Realme

TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ1A.210105.003 7005429 release-keys"

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ1A.210105.003/7005429:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1971" \
    TARGET_DEVICE="RMX1971"

# ShapeShiftOS specific properties
PRODUCT_PRODUCT_PROPERTIES += \
  ro.ssos.cpu=SDM712

# Gapps
TARGET_GAPPS_ARCH := arm64
