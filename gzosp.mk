# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/gzosp/config/common_full_phone.mk)

# Inherit from wt88047 device
$(call inherit-product, device/wingtech/wt88047/device.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Device identifier. This must come after all inclusions
BOARD_VENDOR := wingtech
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := wt88047
PRODUCT_NAME := gzosp_wt88047
PRODUCT_MANUFACTURER := Wingtech
PRODUCT_MODEL := Redmi 2

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Xiaomi/wt88047/wt88047:5.1.1/LMY47V/V8.1.3.0.LHJMIDL:user/release-keys" \
    PRIVATE_BUILD_DESC="wt88047-user 5.1.1 LMY47V V8.1.3.0.LHJMIDL release-keys"
