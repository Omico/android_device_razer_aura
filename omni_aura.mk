# Inherit from those products. Most specific first.
$(call inherit-product, build/target/product/embedded.mk)

# Inherit some common omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from aura device
$(call inherit-product, device/razer/aura/device.mk)

PRODUCT_NAME := omni_aura
PRODUCT_BRAND := razer
PRODUCT_DEVICE := aura
PRODUCT_MANUFACTURER := Razer
PRODUCT_MODEL := Phone 2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="cheryl2" \
    PRIVATE_BUILD_DESC="aura-user 9 P-SMR6-RC001-RZR-201022 3201 release-keys"

BUILD_FINGERPRINT := "razer/cheryl2/aura:9/P-SMR6-RC001-RZR-201022/3201:user/release-keys"

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31