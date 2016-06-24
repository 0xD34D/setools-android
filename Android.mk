LOCAL_PATH:= $(call my-dir)

libsepol_LOCAL_C_INCLUDES := $(LOCAL_PATH)/../selinux/libsepol/include

include $(CLEAR_VARS)
LOCAL_MODULE := sepolicy_inject
LOCAL_CFLAGS :=
LOCAL_C_INCLUDES := \
	$(libsepol_LOCAL_C_INCLUDES)

LOCAL_SRC_FILES := \
	sepolicy-inject/sepolicy-inject.c

LOCAL_STATIC_LIBRARIES := libsepol

include $(BUILD_EXECUTABLE)
