#
# Copyright (C) The PixelOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

## Inherit from a53x device
$(call inherit-product, device/samsung/a53x/device.mk)

## Boot Animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

## UDFPS
TARGET_HAS_UDFPS := true

## Inherit some common PixelOS stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

## Device identifier, this must come after all inclusions
PRODUCT_DEVICE := a53x
PRODUCT_NAME := aosp_a53x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A536
PRODUCT_MANUFACTURER := samsung
PRODUCT_SHIPPING_API_LEVEL := 31

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a53xnaxx-user 15 AP3A.240905.015.A2 A536BXXSFFYEA release-keys" \
    BuildFingerprint=samsung/a53xnaxx/essi:15/AP3A.240905.015.A2/A536BXXSFFYEA:user/release-keys \
    DeviceProduct=a53xnaxx \
    SystemName=a53xnaxx
