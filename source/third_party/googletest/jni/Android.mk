LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := gtest

LOCAL_CPPFLAGS += \
    -fexceptions

LOCAL_LDLIBS := -llog

#gtest begin
GTEST_INC_DIR := \
    $(LOCAL_PATH)/../include \
    $(LOCAL_PATH)/..
#gtest end

LOCAL_C_INCLUDES := \
    $(GTEST_INC_DIR)

LOCAL_SRC_FILES := \
    ./../src/gtest-all.cc

include $(BUILD_SHARED_LIBRARY)
