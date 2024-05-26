#
# Copyright (C) 2023 The LineageOS Project
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
#

# Non AB device 
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from x1s device
$(call inherit-product, device/samsung/x1s/device.mk)

# Inherit some common HentaiOS stuff.
$(call inherit-product, device/samsung/universal9830-common/hentai-common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x1s
PRODUCT_NAME := x1s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G981B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Need bigger partition for GMS
WITH_GMS := true

# PixelApps
TARGET_PREBUILT_PIXELAPPS := true