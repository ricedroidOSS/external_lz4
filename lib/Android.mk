# Copyright (C) 2015 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)

liblz4_src_files := lz4.c lz4hc.c lz4frame.c xxhash.c

include $(CLEAR_VARS)
LOCAL_MODULE := liblz4
LOCAL_MULTILIB := both
LOCAL_SRC_FILES := $(liblz4_src_files)
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)
include $(BUILD_HOST_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := liblz4
LOCAL_MULTILIB := both
LOCAL_WHOLE_STATIC_LIBRARIES := liblz4
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)
include $(BUILD_HOST_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := liblz4
LOCAL_SRC_FILES := $(liblz4_src_files)
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := liblz4
LOCAL_WHOLE_STATIC_LIBRARIES := liblz4
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)
include $(BUILD_SHARED_LIBRARY)