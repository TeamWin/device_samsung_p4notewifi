# Release name
PRODUCT_RELEASE_NAME := p4noterf

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/p4noterf/device_p4noterf.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p4noterf
PRODUCT_NAME := cm_p4noterf
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := p4noterf
PRODUCT_MANUFACTURER := Samsung
