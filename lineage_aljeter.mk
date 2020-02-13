# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from aljeter device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := aljeter
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_aljeter
PRODUCT_MODEL := moto g(6) play

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := aljeter
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC=" 9 PPP29.55-35-18 f7946 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := 9/PPP29.55-35-18/f7946:user/release-keys
