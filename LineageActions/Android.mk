LOCAL_PATH:= $(call my-dir)

# exclude harpia from CMActions
ifneq ($(filter lux merlin osprey surnia, $(TARGET_DEVICE)),)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := LineageActions
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_USE_AAPT2 := true
LOCAL_PRIVATE_PLATFORM_APIS := true

LOCAL_STATIC_ANDROID_LIBRARIES := \
    androidx.appcompat_appcompat \
    androidx.preference_preference \
    androidx.recyclerview_recyclerview

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

LOCAL_RESOURCE_DIR := \
    $(LOCAL_PATH)/res \
    $(TOP)/packages/resources/devicesettings/res

ifneq ($(INCREMENTAL_BUILDS),)
    LOCAL_PROGUARD_ENABLED := disabled
    LOCAL_JACK_ENABLED := incremental
endif

include frameworks/base/packages/SettingsLib/common.mk

include $(BUILD_PACKAGE)
endif

include $(call all-makefiles-under,$(LOCAL_PATH))
