$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/p4noterf/p4noterf-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/p4noterf/overlay

LOCAL_PATH := device/samsung/p4noterf
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernAl

#$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := cm_p4noterf
PRODUCT_BRAND := Samsung
