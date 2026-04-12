LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := termux
LOCAL_SRC_FILES := termux.c

# Gunakan nodefaultlibs untuk mencegah NDK menyuntikkan library aneh-aneh
LOCAL_LDFLAGS += -nodefaultlibs
# Hubungkan manual library dasar yang pasti ada di sistem
LOCAL_LDLIBS := -lc -lm -llog -landroid

include $(BUILD_SHARED_LIBRARY)
