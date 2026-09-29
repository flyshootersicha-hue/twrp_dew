
LOCAL_PATH := device/xiaomi/dew

DEVICE_PATH := $(LOCAL_PATH)

# ==========================================
# Architecture
# ==========================================

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Device supports 64-bit applications
TARGET_SUPPORTS_64_BIT_APPS := true

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel

# ==========================================
# Platform
# ==========================================

TARGET_BOARD_PLATFORM := mt6768
TARGET_BOOTLOADER_BOARD_NAME := dew

# ==========================================
# Boot image
# ==========================================

BOARD_BOOT_HEADER_VERSION := 4
BOARD_KERNEL_PAGESIZE := 4096
BOARD_RAMDISK_USE_LZ4 := true

BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)

BOARD_KERNEL_IMAGE_NAME := Image

# ==========================================
# A/B
# ==========================================

AB_OTA_UPDATER := true

AB_OTA_PARTITIONS := \
    boot \
    init_boot \
    vendor_boot \
    dtbo \
    vbmeta \
    vbmeta_system \
    vbmeta_vendor

# ==========================================
# Storage
# ==========================================

BOARD_FLASH_BLOCK_SIZE := 131072

# ==========================================
# Partition sizes
# ==========================================

BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_INIT_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

# ==========================================
# Super partition
# ==========================================

BOARD_SUPER_PARTITION_SIZE := 9663676416

# ==========================================
# Metadata
# ==========================================

BOARD_USES_METADATA_PARTITION := true

# ==========================================
# Recovery
# ==========================================

TARGET_NO_RECOVERY := true

BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
# BOARD_INCLUDE_RECOVERY_RAMDISK_IN_VENDOR_BOOT := true

# 关闭单独root镜像，适配不生成root目录的平台
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
# 如果是A11+ 动态分区设备，很多机型需要这个
# BOARD_USES_RECOVERY_AS_BOOT := true

# ==========================================
# Filesystems
# ==========================================

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# ==========================================
# TWRP
# ==========================================

TW_THEME := portrait_hdpi

TW_INCLUDE_FASTBOOTD := true
TW_INCLUDE_CRYPTO := true
TWRP_INCLUDE_LOGCAT := true
TW_INCLUDE_NTFS_3G := true
