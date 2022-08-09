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
$(call inherit-product-if-exists, vendor/google_devices/oriole/oriole-vendor-blobs.mk)

# Missing vintf entries
DEVICE_MANIFEST_FILE += \
    vendor/google_devices/oriole/proprietary/manifest_vendor.xml

# Missing stock props
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.debug.ssrdump.type=sscoredump \
    persist.vendor.ril.use_radio_hal=1.6 \
    ro.vendor.config.build_carrier=europen \
    ro.vendor.config.build_carrier=europen \
    vendor.rild.libpath=libsitril.so \
    persist.vendor.ril.ecc.xml=1 \
    drm.service.enabled=true \
    keyguard.no_require_sim=true \
    media.mediadrmservice.enable=true \
    ro.com.android.prov_mobiledata=false \
    ro.storage_manager.enabled=false \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural;com.google.android.systemui.gxoverlay \
    ro.gfx.angle.supported=true

PRODUCT_PRODUCT_PROPERTIES += \
    ro.opa.eligible_device=true \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.com.android.dataroaming=false \
    ro.com.google.clientidbase=android-google \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.esim_cid_ignore=00000001 \
    ro.setupwizard.rotation_locked=true \
    setupwizard.feature.baseline_setupwizard_enabled=true \
    setupwizard.feature.show_pai_screen_in_main_flow.carrier1839=false \
    setupwizard.feature.skip_button_use_mobile_data.carrier1839=true \
    setupwizard.theme=glif_v3_light \
    ro.com.google.ime.theme_id=5 \
    ro.com.google.ime.system_lm_dir=/product/usr/share/ime/google/d3_lms \
    setupwizard.feature.show_pixel_tos=true \
    ro.llkd.enable=false \
    ro.storage_manager.show_opt_in=false \
    setupwizard.feature.show_support_link_in_deferred_setup=false \
    ro.carriersetup.vzw_consent_page=true \
    setupwizard.feature.day_night_mode_enabled=true \
    setupwizard.feature.portal_notification=true \
    setupwizard.feature.lifecycle_refactoring=true \
    setupwizard.feature.notification_refactoring=true \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# SEPolicy for vendor apps/libs
BOARD_VENDOR_SEPOLICY_DIRS += hardware/google/pixel-sepolicy/turbo_adapter
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += hardware/google/pixel-sepolicy/flipendo

# Runtime Resource overlays
PRODUCT_PACKAGES += \
    BuiltInPrintServiceOriole \
    CaptivePortalLoginOverlay \
    CellBroadcastReceiverOverlay \
    CellBroadcastServiceOverlay \
    EuiccSupportPixelOverlay \
    FrameworkOverlayOriole \
    GoogleConfigPixel2021 \
    HbmSVManagerOrioleOverlay \
    ManagedProvisioningPixelOverlay \
    PixelConfigOverlay2018 \
    PixelConfigOverlay2019 \
    PixelConfigOverlay2019Midyear \
    PixelConfigOverlay2021 \
    PixelConfigOverlayCommon \
    PixelConnectivityOverlay2021 \
    PixelSetupWizardOrioleOverlay \
    PixelSetupWizardOverlay \
    PixelSetupWizardOverlay2019 \
    SafetyRegulatoryInfoOriole \
    SconeCbrsOverlay \
    SettingsGoogleOverlayOriole \
    SettingsGoogleOverlayPixel2021 \
    SettingsProviderOverlayOriole \
    SystemUIGoogleOverlayOriole \
    SystemUIGXOverlay \
    TelecomOverlayOriole \
    TelephonyProviderOverlayOriole \
    TeleServiceOverlayOriole \
    UdfpsOverlay

# Prebuilt APEX from 'vendor/apex'
PRODUCT_PACKAGES += \
    com.google.pixel.camera.hal

# Prebuilt APKs/JARs from 'vendor/framework'
PRODUCT_PACKAGES += \
    com.google.android.camera.experimental2021

# Prebuilt APKs/JARs from 'product/app'
PRODUCT_PACKAGES += \
    PixelCameraServicesOriole \
    SSRestartDetector \
    Tycho \
    VZWAPNLib

# Prebuilt APKs/JARs from 'product/framework'
PRODUCT_PACKAGES += \
    com.google.android.dialer.support \
    libhwinfo

# Prebuilt APKs/JARs from 'product/priv-app'
PRODUCT_PACKAGES += \
    ANGLE \
    AppDirectedSMSService \
    CarrierLocation \
    CarrierServices \
    CarrierSettings \
    CarrierWifi \
    CbrsNetworkMonitor \
    ConnMO \
    DCMO \
    DiagMon \
    DMService \
    DreamlinerPrebuilt \
    DreamlinerUpdater \
    EuiccGoogle \
    GCS \
    HardwareInfo \
    HotwordEnrollmentOKGoogleFUSION \
    HotwordEnrollmentXGoogleFUSION \
    OemDmTrigger \
    SCONE \
    TetheringEntitlement \
    USCCDM \
    WfcActivation

# Prebuilt APKs/JARs from 'system_ext/app'
PRODUCT_PACKAGES += \
    Flipendo \
    OemRilHookService

# Prebuilt APKs/JARs from 'system_ext/framework'
PRODUCT_PACKAGES += \
    com.android.hotwordenrollment.common.util \
    com.google.android.camera.extensions \
    google-ril \
    oemrilhook \
    RadioConfigLib

# Prebuilt APKs/JARs from 'system_ext/priv-app'
PRODUCT_PACKAGES += \
    CarrierSetup \
    ConnectivityThermalPowerManager \
    EuiccSupportPixel \
    EuiccSupportPixelPermissions \
    grilservice \
    HbmSVManager \
    LLKAgent \
    MyVerizonServices \
    OemRilService \
    RilConfigService \
    ShannonIms \
    ShannonQualifiedNetworksService \
    ShannonRcs \
    TurboAdapter \
    UvExposureReporter

# Prebuilt shared libraries
PRODUCT_PACKAGES += \
    com.google.edgetpu_app_service-V1-ndk_platform \
    com.google.edgetpu_vendor_service-V1-ndk_platform \
    libaptX_encoder \
    libaptXHD_encoder \
    libdmengine \
    libdmjavaplugin \
    libGLES_mali \
    libhbmsvmanager_jni \
    libmediaadaptor \
    libOpenCL \
    libpowerstatshaldataprovider \
    vendor.samsung_slsi.telephony.hardware.oemservice@1.0 \
    vendor.samsung_slsi.telephony.hardware.radioExternal@1.0

# Enforced modules from user configuration
PRODUCT_PACKAGES += \
    android.hardware.authsecret@1.0.vendor:64 \
    android.hardware.biometrics.common-V1-ndk_platform.vendor:64 \
    android.hardware.biometrics.fingerprint-V1-ndk_platform.vendor:64 \
    android.hardware.bluetooth@1.1.vendor:64 \
    android.hardware.confirmationui@1.0-lib.trusty:64 \
    android.hardware.identity_credential.xml \
    android.hardware.identity-support-lib.vendor:64 \
    android.hardware.input.classifier@1.0.vendor:64 \
    android.hardware.input.common@1.0.vendor:64 \
    android.hardware.keymaster@4.1.vendor:64 \
    android.hardware.media.c2@1.0.vendor \
    android.hardware.neuralnetworks-V1-ndk_platform.vendor:64 \
    android.hardware.oemlock@1.0.vendor:64 \
    android.hardware.power@1.2.vendor:64 \
    android.hardware.power.stats@1.0.vendor:64 \
    android.hardware.radio@1.6.vendor \
    android.hardware.radio.config@1.2.vendor \
    android.hardware.radio.deprecated@1.0.vendor \
    android.hardware.tetheroffload.config@1.0.vendor:64 \
    android.hardware.tetheroffload.control@1.1.vendor:64 \
    android.hardware.weaver@1.0.vendor:64 \
    android.hardware.wifi@1.5.vendor:64 \
    hardware.google.bluetooth.bt_channel_avoidance@1.0.vendor:64 \
    hardware.google.bluetooth.ccc@1.0.vendor:64 \
    hardware.google.bluetooth.sar@1.1.vendor:64 \
    libaudioroutev2.vendor \
    libavservices_minijail_vendor:64 \
    libcodec2_hidl@1.0.vendor \
    libcppbor.vendor:64 \
    libexynosutils \
    libexynosv4l2 \
    libGralloc4Wrapper \
    libhidltransport.vendor \
    libhwbinder.vendor \
    libkeymaster4support.vendor:64 \
    libmedia_ecoservice.vendor \
    libnetfilter_conntrack:64 \
    libnos_client_citadel:64 \
    libsensorndkbridge \
    libsfplugin_ccodec_utils.vendor \
    libstagefright_bufferpool@2.0.1.vendor \
    libteeui_hal_support.vendor:64 \
    libtinycompress \
    libtrusty_metrics:64 \
    libwifi-hal:64 \
    nos_app_avb:64 \
    nos_app_identity:64 \
    nos_app_keymaster:64 \
    nos_app_weaver:64 \
    pixelpowerstats_provider_aidl_interface-cpp.vendor:64 \
    sensors.dynamic_sensor_hal

# Partitions to add in AB OTA images
AB_OTA_PARTITIONS += \
    bl1 \
    pbl \
    bl2 \
    abl \
    bl31 \
    tzsw \
    gsa \
    ldfw \
    modem
