#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/a52q

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := a52q

# Bootloader"
TARGET_BOOTLOADER_BOARD_NAME := SRPTJ27A001

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 81788928 # This is the maximum known partition size, but it can be higher, so we just omit it
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor

# Kernel
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=1 androidboot.usbcontroller=a600000.dwc3 loop.max_part=7 printk.devkmsg=on firmware_class.path=/vendor/firmware_mnt/image
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_DTB_OFFSET := 0x01f00000
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_TAGS_OFFSET := 0x01e00000
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_KERNEL_IMAGE_NAME := Image.gz
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/samsung/a52q

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := atoll
TARGET_BOARD_PLATFORM_GPU := qcom-adreno618
QCOM_BOARD_PLATFORMS += atoll

# Dynamic Partition
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 9126805504
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := product vendor system odm

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/etc/recovery.fstab
TARGET_RECOVERY_QCOM_RTC_FIX := true
RECOVERY_SDCARD_ON_DATA := true
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS := 425
TW_DEFAULT_BRIGHTNESS := 255
TW_Y_OFFSET := 110
TW_H_OFFSET := -110
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone17/temp
TARGET_USES_MKE2FS := true
TW_EXCLUDE_TWRPAPP := true
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
#TWRP_EVENT_LOGGING := true
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
