DEVICE_PATH := device/lge/judyln
# inherit from common v30
-include device/lge/sdm845-common/BoardConfigCommon.mk
-include vendor/qco1
-include hardware/qcom/sdm845/Android.mk
BOARD_USES_QCOM_HARDWARE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
# Camera
TARGET_USES_YCRCB_VENUS_CAMERA_PREVIEW := true

#SELINUX_IGNORE_NEVER_ALLOWS := true
#BOARD_SEPOLICY_DIRS := device/qcom/sepolicy
#BOARD_SEPOLICY_DIRS += device/qcom/sepolicy_vendor
 # Kernel
BOARD_KERNEL_CMDLINE += androidboot.hardware=judyln
TARGET_KERNEL_CONFIG := lineageos_judyln_defconfig

 #TARGET_PREBUILT_RECOVERY_RAMDISK_CPIO := $(DEVICE_PATH)/ramdisk-recovery.cpio


# Partitions
BOARD_USERDATAIMAGE_PARTITION_SIZE := 48708296704
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_VENDORIMAGE_PARTITION_SIZE := 1048576000
# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.judyln
TARGET_RECOVERY_WIPE := $(DEVICE_PATH)/recovery/recovery.wipe
#TARGET_PREBUILT_RECOVERY_RAMDISK_CPIO := $(DEVICE_PATH)/ramdisk-recovery.cpio


# Clang
TARGET_KERNEL_CLANG_VERSION := proton
TARGET_KERNEL_CLANG_PATH := $(shell pwd)/prebuilts/clang/host/linux-x86/clang-proton
KERNEL_LD := LD=ld.lld
TARGET_KERNEL_ADDITIONAL_FLAGS := DTC_EXT=$(shell pwd)/prebuilts/misc/linux-x86/dtc/dtc LLVM=1

 # inherit from the proprietary version
-include vendor/lge/judyln/BoardConfigVendor.mk
