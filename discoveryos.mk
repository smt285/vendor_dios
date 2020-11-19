#########################################################
#
# discoveryOS
# Copyright: 2020 steadfasterX <steadfasterX@gmail.com>
#
#########################################################

# add specific diOS overlay
DEVICE_PACKAGE_OVERLAYS += vendor/dios/overlay

# discoverOS special handlings and settings
# grab the overwrite vars from: build/tools/buildinfo.sh
PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_DISPLAY_ID="discoveryOS-2.0" \
	TARGET_BUILD_TYPE="user" \
	TARGET_BUILD_FLAVOR="discoveryOS"

# reduce ROM, increase speed
PRODUCT_PACKAGES += ReduceROM

# F-droid
WITH_FDROID := true
FDROID_EXTRA_REPOS := true
PRODUCT_PACKAGES += \
    F-Droid \
    FDroidPrivilegedExtension \
    additional_repos.xml \
    AuroraStore

# Set device ownership for the navigation app
#PRODUCT_COPY_FILES += \
#    device/samsung/gtexslte/device_owner.xml:data/system/device_owner.xml \
#    device/samsung/gtexslte/device_policies.xml:data/system/device_policies.xml

# enhance speech for navigation
PRODUCT_COPY_FILES += \
	vendor/dios/prebuilt/system/etc/codec_pga.xml:system/etc/codec_pga.xml

# boot animation
PRODUCT_COPY_FILES += \
	vendor/dios/prebuilt/system/media/bootanimation.zip:system/media/bootanimation.zip

# automate
PRODUCT_COPY_FILES += \
	vendor/dios/packages/automate.apk:system/priv-app/Automate/automate.apk

# waze
#PRODUCT_COPY_FILES += \
#	vendor/dios/packages/waze.apk:system/app/Waze/waze.apk

