# Inherit from those products. Most specific first.
$(call inherit-product, build/target/product/embedded.mk)

# Inherit some common omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_NAME := omni_aura
PRODUCT_BRAND := razer
PRODUCT_DEVICE := aura
PRODUCT_MANUFACTURER := Razer
PRODUCT_MODEL := Phone 2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="cheryl2" \
    PRIVATE_BUILD_DESC="aura-user 9 P-MR1-RC003-RZR-190305 3110 release-keys"

BUILD_FINGERPRINT := razer/cheryl2/aura:9/P-MR1-RC003-RZR-190305/3110:user/release-keys
