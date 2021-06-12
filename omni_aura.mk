#
# Copyright 2017 The Android Open Source Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit some common omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/razer/aura/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := razer
PRODUCT_DEVICE := aura
PRODUCT_MANUFACTURER := Razer
PRODUCT_MODEL := Phone 2
PRODUCT_NAME := omni_aura

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="cheryl2" \
    PRIVATE_BUILD_DESC="aura-user 9 P-SMR6-RC001-RZR-201022 3201 release-keys"

BUILD_FINGERPRINT := "razer/cheryl2/aura:9/P-SMR6-RC001-RZR-201022/3201:user/release-keys"

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
