# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common product files.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Inherit from wt88047 device
$(call inherit-product, device/wingtech/wt88047/device.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Device identifier. This must come after all inclusions
BOARD_VENDOR := wingtech
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := wt88047
PRODUCT_NAME := xenonhd_wt88047
PRODUCT_MANUFACTURER := Wingtech
PRODUCT_MODEL := Redmi 2

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
