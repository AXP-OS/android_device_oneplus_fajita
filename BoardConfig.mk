#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from oneplus sdm845-common
-include device/oneplus/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/fajita

# FOD
TARGET_SURFACEFLINGER_UDFPS_LIB := //hardware/oneplus:libudfps_extension.oneplus

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# pub key (avb_pkmd.bin) must be flashed to avb_custom_key partition
# see https://github.com/AXP-OS/build/wiki/Bootloader-Lock
BOARD_AVB_KEY_PATH := user-keys/avb.pem
BOARD_AVB_ALGORITHM := SHA512_RSA4096
BOARD_AVB_BOOT_ALGORITHM := $(BOARD_AVB_ALGORITHM)

# inherit from the proprietary version
-include vendor/oneplus/fajita/BoardConfigVendor.mk
