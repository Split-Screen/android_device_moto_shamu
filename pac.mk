# Boot animation
PAC_BOOTANIMATION_NAME := 1440

# Inherit some common PAC stuff.
$(call inherit-product, vendor/pac/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/pac/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay-cm

## Device identifier. This must come after all inclusions
PRODUCT_NAME := pac_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6

TARGET_VENDOR := moto

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:6.0.1/MMB29X/2704508:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 6.0.1 MMB29X 2704508 release-keys"
