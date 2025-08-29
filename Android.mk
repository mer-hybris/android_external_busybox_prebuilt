LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := busybox
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/utilities

ifeq ($(TARGET_ARCH),arm)
  LOCAL_SRC_FILES := arm/busybox
else ifeq ($(TARGET_ARCH),arm64)
  LOCAL_SRC_FILES := arm64/busybox
else
  $(error Not a supported TARGET_ARCH: $(TARGET_ARCH))
endif

include $(BUILD_PREBUILT)

