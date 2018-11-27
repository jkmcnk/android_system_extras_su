# Root AOSP source makefile
# su is built here, and 
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := nusu.out
LOCAL_SRC_FILES := su.c daemon.c utils.c pts.c
LOCAL_CFLAGS += -Werror -Wall
LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -llog

include $(BUILD_EXECUTABLE)
