
LOCAL_PATH := $(call my-dir)

PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware=mt6768 \
    ro.board.platform=mt6768

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/fstab.mt6768:$(TARGET_COPY_OUT_RECOVERY)/root/fstab.mt6768
