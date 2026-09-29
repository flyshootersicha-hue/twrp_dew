LOCAL_PATH := $(call my-dir)

PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware=mt6768 \
    ro.board.platform=mt6768
