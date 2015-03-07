USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/oneplus/bacon/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := bacon
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8974

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := bacon

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3
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
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --dt device/oneplus/bacon/dt.img

TARGET_PREBUILT_KERNEL := device/oneplus/bacon/kernel

# Recovery
TARGET_RECOVERY_FSTAB := device/oneplus/bacon/rootdir/etc/fstab.bacon
TARGET_OTA_ASSERT_DEVICE := bacon,A0001
TARGET_WCNSS_MAC_PREFIX := e8bba8

#英文
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
#Philz_中文
# BOARD_USE_CUSTOM_RECOVERY_FONT := \"chinese/font_24x45.h\"
#CWM_中文
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"fontcn36_22x56.h\"

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

#touch滑动
#BOARD_RECOVERY_SWIPE := true

BOARD_HAS_NO_SELECT_BUTTON := true
#使用虚拟按键，非必需
RECOVERY_USE_VIRTUAL_KEY := true
# BOARD_CUSTOM_RECOVERY_KEYMAPPING := device/oneplus/bacon/recovery/recovery_keys.c
#屏幕背光亮度
TARGET_BRIGHTNESS_PATH := /sys/devices/mdp.0/qcom,mdss_fb_primary.158/leds/lcd-backlight/brightness
# TARGET_BRIGHTNESS_PATH := /sys/devices/mdp.0/qcom,mdss_fb_primary.158/leds/lcd-backlight/max_brightness
#TARGET_MAX_BRIGHTNESS := 255
BOARD_USE_FB2PNG := true
# BOARD_USE_AROMA_FILE_MANAGER := true
BOARD_HAS_SLOW_STORAGE := true
#修复双清缓慢，非必需
#BOARD_NO_SECURE_DISCARD := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
#KERNEL_EXFAT_MODULE_NAME := "exfat"

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

# Set insecure for root access and device specifics
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
ro.debuggable=1 \
persist.service.acm.enable=0 \
persist.sys.usb.config=mass_storage \
ro.mount.fs=EXT4
