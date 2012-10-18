# Release name
PRODUCT_RELEASE_NAME := p4notewifi

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/p4notewifi/device_p4notewifi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p4notewifi
PRODUCT_NAME := cm_p4notewifi
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := p4notewifi
PRODUCT_MANUFACTURER := Samsung
