#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/miatoll

BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_INCORRECT_PARTITION_IMAGES := true
BUILD_BROKEN_ENFORCE_SYSPROP_OWNER := true
BUILD_BROKEN_VENDOR_PROPERTY_NAMESPACE := true
TARGET_USES_PREBUILT_CAMERA_SERVICE := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a76

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a76

TARGET_BOARD_INFO_FILE := device/xiaomi/miatoll/board-info.txt

# Audio
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
#AUDIO_FEATURE_ENABLED_AHAL_EXT := true

AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
AUDIO_FEATURE_ENABLED_GEF_SUPPORT := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true

TARGET_PROVIDES_AUDIO_EXTNS := true

# Audio policy
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := atoll
TARGET_NO_BOOTLOADER := true

# Build broken
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# Dex
WITH_DEXPREOPT_DEBUG_INFO := false
DONT_DEXPREOPT_PREBUILTS := true
USE_DEX2OAT_DEBUG := false

# Display
TARGET_SCREEN_DENSITY := 440
TARGET_USES_HWC2 := true
TARGET_USES_COLOR_METADATA := true
TARGET_USES_DRM_PP := true
USE_OPENGL_RENDERER := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# Jemalloc
MALLOC_SVELTE := true
MALLOC_SVELTE_FOR_LIBC32 := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true

BOARD_BOOT_HEADER_VERSION := 2
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_RAMDISK_USE_LZ4 := true

TARGET_KERNEL_ADDITIONAL_FLAGS += LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump
TARGET_KERNEL_SOURCE := kernel/xiaomi/sm6250
TARGET_KERNEL_CONFIG := cust_defconfig

BOARD_KERNEL_CMDLINE += androidboot.console=ttyMSM0
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += androidboot.memcg=1
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a600000.dwc3
BOARD_KERNEL_CMDLINE += cgroup.memory=nokmem,nosocket
BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200n8
BOARD_KERNEL_CMDLINE += earlycon=msm_geni_serial,0xa88000
BOARD_KERNEL_CMDLINE += loop.max_part=7
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += msm_rtb.enabled=1
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += service_locator.enable=1
BOARD_KERNEL_CMDLINE += swiotlb=1
BOARD_KERNEL_CMDLINE += video=vfb:640x400,bpp=32,memsize=3072000

# Kernel (clang)
KERNEL_TOOLCHAIN := $(shell pwd)/prebuilts/clang/host/linux-x86/clang-r498229b/bin
TARGET_KERNEL_CLANG_PATH := $(shell pwd)/prebuilts/clang/host/linux-x86/clang-r498229b
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_VERSION := 17.0.4

# ART
ART_BUILD_TARGET_NDEBUG := true
ART_BUILD_TARGET_DEBUG := false
ART_BUILD_HOST_NDEBUG := true
ART_BUILD_HOST_DEBUG := false

# FM
BOARD_HAVE_QCOM_FM := true

# HIDL
TARGET_USES_CUSTOM_C2_MANIFEST := true
DEVICE_MANIFEST_FILE := \
    $(DEVICE_PATH)/hidl/manifest.xml \
    $(DEVICE_PATH)/hidl/c2_manifest_vendor.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/hidl/device_framework_matrix.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/hidl/compatibility_matrix.xml
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/hidl/framework_manifest.xml
ODM_MANIFEST_JOYEUSE_FILES := $(DEVICE_PATH)/hidl/manifest_joyeuse.xml
ODM_MANIFEST_SKUS += \
    joyeuse

# Init
TARGET_INIT_VENDOR_LIB ?= //$(DEVICE_PATH):init_xiaomi_atoll
TARGET_RECOVERY_DEVICE_MODULES ?= init_xiaomi_atoll

# Media
TARGET_USES_ION := true
TARGET_DISABLED_UBWC := true

# MiuiCamera
TARGET_INCLUDES_MIUI_CAMERA := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728
BOARD_SUPER_PARTITION_SIZE := 8589934592

BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 8585740288

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

ifeq ($(WITH_GMS),true)
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 104857600
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 104857600
else
BOARD_PRODUCTIMAGE_EXTFS_INODE_COUNT := -1
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 1887436800
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := -1
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 1887436800
endif
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 104857600
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 104857600

TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product

BOARD_USES_METADATA_PARTITION := true

BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

# OTA assert
TARGET_OTA_ASSERT_DEVICE := curtana,excalibur,gram,joyeuse

# Platform
BOARD_VENDOR := xiaomi
TARGET_BOARD_PLATFORM := atoll

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/properties/odm.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/properties/product.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/properties/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/properties/vendor.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/properties/system_ext.prop

# QCOM
BOARD_USES_QCOM_HARDWARE := true

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Security patch level
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# Sepolicy
include device/lineage/sepolicy/libperfmgr/sepolicy.mk
include device/qcom/sepolicy_vndr/legacy-um/SEPolicy.mk

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/public
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
BOARD_SEPOLICY_M4DEFS += sysfs_battery_supply=vendor_sysfs_battery_supply

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1
BOARD_AVB_VBMETA_SYSTEM := system product
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA4096
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# WiFi
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
QC_WIFI_HIDL_FEATURE_DUAL_AP := true
WIFI_DRIVER_DEFAULT := qca_cld3
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_OFF := "OFF"
WIFI_DRIVER_STATE_ON := "ON"
WIFI_HIDL_FEATURE_AWARE := true
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Inherit proprietary blobs
-include vendor/xiaomi/miatoll/BoardConfigVendor.mk
