USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/oneplus/bacon/BoardConfigVendor.mk

# Include path
#TARGET_SPECIFIC_HEADER_PATH := device/oneplus/bacon/include

# Bootloader
#TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8974

# Platform
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel
#BOARD_CUSTOM_BOOTIMG_MK := device/oneplus/bacon/mkbootimg.mk
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=bacon user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

# dt.img
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01e00000 --dt device/oneplus/bacon/dt.img
TARGET_PREBUILT_KERNEL := device/oneplus/bacon/kernel

# Recovery
TARGET_RECOVERY_FSTAB := device/oneplus/bacon/rootdir/etc/fstab.bacon
TARGET_OTA_ASSERT_DEVICE := bacon,A0001
TARGET_WCNSS_MAC_PREFIX := e8bba8

#Font
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"fontcn46_28x73.h\"

#分辨率
DEVICE_RESOLUTION := 1080x1920
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

#RGB制式
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_565″

#Ext4
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4

#touch滑动
BOARD_RECOVERY_SWIPE := true

BOARD_HAS_NO_SELECT_BUTTON := true

#Virtual key
RECOVERY_USE_VIRTUAL_KEY := true
# BOARD_CUSTOM_RECOVERY_KEYMAPPING := device/oneplus/bacon/recovery/recovery_keys.c

#lcd bright
TARGET_BRIGHTNESS_PATH := /sys/devices/mdp.0/qcom,mdss_fb_primary.158/leds/lcd-backlight/brightness
# TARGET_BRIGHTNESS_PATH := /sys/devices/mdp.0/qcom,mdss_fb_primary.158/leds/lcd-backlight/max_brightness
#TARGET_MAX_BRIGHTNESS := 255

BOARD_USE_FB2PNG := true
# BOARD_USE_AROMA_FILE_MANAGER := true

#BOARD_HAS_SLOW_STORAGE := true

#Fix Wipe
#BOARD_NO_SECURE_DISCARD := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
#KERNEL_EXFAT_MODULE_NAME := "exfat"

#Use data/media/0
RECOVERY_USE_MIGRATED_STORAGE := true

# QCOM hardware
#BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
#TARGET_USES_QCOM_BSP := true
#TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_DISPLAY_VARIANT := caf-new
TARGET_QCOM_MEDIA_VARIANT := caf-new

# QCRIL
#TARGET_RIL_VARIANT := caf

# USB Mounting
# BOARD_VOLD_MAX_PARTITIONS := 38
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

# Custom init.rc scripts
#TARGET_PROVIDES_INIT_RC := true
#TARGET_PROVIDES_RECOVERY_INIT_RC := true
#TARGET_RECOVERY_INITRC := device/oneplus/bacon/rootdir/etc/init.recovery.rc

# RECOVERY_SDCARD_ON_DATA:= true
# TARGET_INTERNAL_STORAGE_PATH:= "/data/media/0"
# TARGET_INTERNAL_STORAGE_MOUNT_POINT:= "data"
# TARGET_EXTERNAL_STORAGE_PATH:= "/external_sd"
# TARGET_EXTERNAL_STORAGE_MOUNT_POINT:= "external_sd"

# TWRP
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
#TW_EXTERNAL_STORAGE_PATH := "/sdcard2"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard2"
TW_HAS_DOWNLOAD_MODE := true
#TW_NO_REBOOT_BOOTLOADER := true
#TW_NO_USB_STORAGE := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
#TW_BRIGHTNESS_PATH := /sys/devices/mdp.0/qcom,mdss_fb_primary.158/leds/lcd-backlight/brightness
#TW_MAX_BRIGHTNESS := 255
#TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_INCLUDE_FB2PNG := true
#TW_USE_TOOLBOX := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# SELinux policies
# qcom sepolicy
#include device/qcom/sepolicy/sepolicy.mk

#BOARD_SEPOLICY_DIRS += \
#        device/oneplus/bacon/sepolicy
