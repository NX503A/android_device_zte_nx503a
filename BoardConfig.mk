TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

TARGET_BOARD_PLATFORM := msm8974
TARGET_BOOTLOADER_BOARD_NAME := nx503a
TARGET_BOARD_INFO_FILE := device/zte/nx503a/board-info.txt

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

BOARD_USES_SECURE_SERVICES := true

BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Qualcomm
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_POWERHAL_VARIANT := qcom
TARGET_POWERHAL_SET_INTERACTIVE_EXT := device/zte/nx503a/configs/power_ext.c
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x2000000 --tags_offset 0x01E00000 
BOARD_KERNEL_IMAGE_NAME := zImage-dtb

TARGET_KERNEL_CONFIG := cyanogenmod_nx503a_defconfig
TARGET_KERNEL_SOURCE := kernel/zte/nx503a
BOARD_KERNEL_SEPARATED_DT := true
DTS_NAME := msm8974-v2.2-mtp-NX503A
BOARD_CUSTOM_BOOTIMG_MK := device/zte/nx503a/mkbootimg.mk

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1288488960
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2684354560
#BOARD_CACHEIMAGE_PARTITION_SIZE := 734003200
#BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Graphics
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330
HAVE_ADRENO_SOURCE := false
USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY:= true
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_USES_ION := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

# Audio
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
AUDIO_FEATURE_ENABLED_LOW_LATENCY_CAPTURE := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
AUDIO_FEATURE_ENABLED_USBAUDIO := true

# FM Radio
#AUDIO_FEATURE_ENABLED_FM := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/zte/nx503a/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/zte/nx503a/bluetooth/libbt_vndcfg.txt

# WiFi
BOARD_NO_WIFI_HAL := true
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/firmware/bcm4339/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/firmware/bcm4339/fw_bcmdhd.bin"
WIFI_DRIVER_MODULE_ARG      := "nvram_path=/system/etc/firmware/bcm4339/nvram.txt"

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
TARGET_NO_RPC := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DOPPO_CAMERA_HARDWARE

# healthd HAL
BOARD_HAL_STATIC_LIBRARIES := libhealthd.qcom

# liblight HAL
TARGET_PROVIDES_LIBLIGHT := true

# SELinux policies
# QCOM
include device/qcom/sepolicy/sepolicy.mk

# Board
BOARD_SEPOLICY_DIRS += \
    device/zte/nx503a/sepolicy

BOARD_SEPOLICY_UNION += \
    app.te \
    bluetooth.te \
    bluetooth_loader.te \
    bridge.te \
    file.te \
    healthd.te \
    hostapd.te \
    mediaserver.te \
    mm-qcamerad.te \
    mpdecision.te \
    netmgrd.te \
    platform_app.te \
    qmuxd.te \
    qseecomd.te \
    radio.te \
    rild.te \
    rmt_storage.te \
    sensors.te \
    subsystem_ramdump.te \
    system_app.te \
    system_server.te \
    thermal-engine.te \
    ueventd.te \
    untrusted_app.te \
    vold.te \
    vss.te \
    wpa.te \
    file_contexts \
    genfs_contexts

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# Color Calibration
BOARD_HARDWARE_CLASS := device/zte/nx503a/cmhw

# Recovery
TARGET_RECOVERY_FSTAB := device/zte/nx503a/configs/fstab.qcom
BOARD_RECOVERY_SWIPE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true

# ota
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=NX503A BUILD_FINGERPRINT=zte/NX503A/NX503A:4.4.2/KVT49L/eng.nubia.20140612.211953:user/release-keys PRIVATE_BUILD_DESC="NX503A-user 4.4.2 KVT49L eng.nubia.20140612.211953 release-keys"

# OTA
TARGET_OTA_ASSERT_DEVICE := NX503A,nx503a,Z5S,z5s,NX503AJ,nx503aj,Z5SN,z5sn

-include vendor/zte/nx503a/BoardConfigVendor.mk
