# Copyright (C) 2022 Benzo Rom
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
LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_DEVICE),oriole)

# Add radio files
$(call add-radio-file,radio/bootloader.img,version-bootloader)
$(call add-radio-file,radio/radio.img,version-baseband)
$(call add-radio-file,radio/abl.img)
$(call add-radio-file,radio/bl1.img)
$(call add-radio-file,radio/bl2.img)
$(call add-radio-file,radio/bl31.img)
$(call add-radio-file,radio/gsa.img)
$(call add-radio-file,radio/ldfw.img)
$(call add-radio-file,radio/modem.img)
$(call add-radio-file,radio/pbl.img)
$(call add-radio-file,radio/tzsw.img)

# Generate Symlinks
DMSERVICE_LIBS := libdmengine.so libdmjavaplugin.so
DMSERVICE_SYMLINKS := $(addprefix $(TARGET_OUT_PRODUCT)/priv-app/DMService/lib/arm/,$(notdir $(DMSERVICE_LIBS)))
$(DMSERVICE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /product/lib/$(notdir $@) $@

HBMSVMANAGER_LIBS := libhbmsvmanager_jni.so
HBMSVMANAGER_SYMLINKS := $(addprefix $(TARGET_OUT_SYSTEM_EXT)/priv-app/HbmSVManager/lib/arm64/,$(notdir $(HBMSVMANAGER_LIBS)))
$(HBMSVMANAGER_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /system_ext/lib64/$(notdir $@) $@

TURBO_ADAPTER_LIBS := libpowerstatshaldataprovider.so
TURBO_ADAPTER_SYMLINKS := $(addprefix $(TARGET_OUT_SYSTEM_EXT)/priv-app/TurboAdapter/lib/arm64/,$(notdir $(TURBO_ADAPTER_LIBS)))
$(TURBO_ADAPTER_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /system_ext/lib64/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(DMSERVICE_SYMLINKS) $(HBMSVMANAGER_SYMLINKS) $(TURBO_ADAPTER_SYMLINKS)

endif
