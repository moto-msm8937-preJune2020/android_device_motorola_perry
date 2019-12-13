#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from msm8937-common
$(call inherit-product, device/motorola/msm8937-common/msm8937.mk)

# Properties
$(call inherit-product, device/motorola/perry/system_prop.mk)

# Audio
PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_extcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/imx219_chromatix.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/camera/imx219_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/msm8917_mot_perry_camera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/camera/msm8917_mot_perry_camera.xml \
    $(LOCAL_PATH)/configs/camera/mot_ov5695_l5695fa0_chromatix.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/camera/mot_ov5695_l5695fa0_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k4h8_chromatix.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/camera/s5k4h8_chromatix.xml

PRODUCT_PACKAGES += \
    libshim_camera_hal \
    libshims_camera \
    camera.msm8937

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service_32 \
    fingerprint.msm8937

# LineageActions
PRODUCT_PACKAGES += \
    LineageActions

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.mmi_device.rc

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-perry.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf
