#
# Copyright (C) 2022 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from gtaxl-common
$(call inherit-product, device/samsung/gtaxl-common/common.mk)

# Inherit proprietary vendor blobs
$(call inherit-product, vendor/samsung/gtaxlwifi/gtaxlwifi-vendor.mk)

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/gps.xml

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/sec_e-pen.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/sec_e-pen.idc

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Ramdisk
PRODUCT_PACKAGES += \
    init.gps.rc \
    init.target.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
