#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Common Path
COMMON_PATH := device/samsung/exynos7870-common

# Init
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/init/fstab.samsungexynos7870:$(TARGET_COPY_OUT_RAMDISK)/fstab.samsungexynos7870 \
    $(COMMON_PATH)/configs/init/fstab.samsungexynos7870:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.samsungexynos7870 \
    $(COMMON_PATH)/configs/init/init.samsungexynos7870.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.samsungexynos7870.rc \
    $(COMMON_PATH)/configs/init/init.samsungexynos7870.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.samsungexynos7870.usb.rc \
    $(COMMON_PATH)/configs/init/ueventd.rc:$(TARGET_COPY_OUT_VENDOR)/ueventd.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(COMMON_PATH)
