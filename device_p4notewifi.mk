$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/p4notewifi/p4notewifi-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/p4notewifi/overlay

LOCAL_PATH := device/samsung/p4notewifi
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernAl

#$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := cm_p4notewifi
PRODUCT_BRAND := Samsung
