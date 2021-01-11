LOCAL_PATH := device/razer/aura

# tzdata
PRODUCT_PACKAGES += \
    tzdata_twrp \

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    system \
    vendor \
    vbmeta

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh

# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_verifier

# Boot control
PRODUCT_PACKAGES += \
    bootctrl.$(PRODUCT_PLATFORM)

PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.$(PRODUCT_PLATFORM) \
    libcutils \
    libgptutils \
    libz
