LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(call all-java-files-under, src/java)

LOCAL_JNI_SHARED_LIBRARIES := libperf_jni 
LOCAL_REQUIRED_MODULES := libperf_jni

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE:= org.codeaurora.Performance

# This will install the file in /system/framework
LOCAL_MODULE_PATH := $(TARGET_OUT_JAVA_LIBRARIES)

include $(BUILD_STATIC_JAVA_LIBRARY)

# ====  permissions ========================
include $(CLEAR_VARS)

LOCAL_MODULE := org.codeaurora.Performance.xml

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_CLASS := ETC

# This will install the file in /system/etc/permissions
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions

LOCAL_SRC_FILES := $(LOCAL_MODULE)

include $(BUILD_PREBUILT)
