# Kernel
BOARD_DTBTOOL_ARGS := -2
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_SEPARATED_DT := true
TARGET_KERNEL_SOURCE := kernel/wingtech/msm8916
TARGET_KERNEL_CONFIG := wt88047_defconfig
BOARD_KERNEL_CMDLINE += sched_enable_hmp=1 phy-msm-usb.floated_charger_enable=1 androidboot.selinux=permissive

KERNEL_TOOLCHAIN        := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
