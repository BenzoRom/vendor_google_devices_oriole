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
TARGET_BOARD_INFO_FILE := vendor/google_devices/oriole/vendor-board-info.txt
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
ifneq ($(PRODUCT_USE_DYNAMIC_PARTITIONS), true)
  BOARD_VENDORIMAGE_PARTITION_SIZE := 493707264
endif
ifneq ($(PRODUCT_NO_PRODUCT_PARTITION), true)
  ifneq ($(PRODUCT_USE_DYNAMIC_PARTITIONS), true)
    BOARD_PRODUCTIMAGE_PARTITION_SIZE := 2825408512
  endif
  BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
endif
ifneq ($(PRODUCT_USE_DYNAMIC_PARTITIONS), true)
  BOARD_SYSTEM_EXTIMAGE_PARTITION_SIZE := 250449920
endif
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BUILD_BROKEN_VINTF_PRODUCT_COPY_FILES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
ARMNN_COMPUTE_CL_ENABLE := 1
