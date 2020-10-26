LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_STATIC_JAVA_LIBRARIES := android-common
LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_CERTIFICATE := shared
LOCAL_PACKAGE_NAME := ReduceROM
# It overrrides packages to avoid their addition to the ROM
LOCAL_OVERRIDES_PACKAGES := \
    Browser \
    Calculator \
    Calendar \
    Camera2 \
    CalendarProvider \
    Email \
    Gallery2 \
    Music \
    Eleven \
    SoundRecorder \
    Recorder \
    VideoEditor \
    Gallery \
    AudioFX \
    ExactCalculator \
    Jelly \
    LockClock \
    DeskClock \
    EasterEgg \
    WallpaperPicker \
    WeatherProvider \
    Exchange2 \
    gdbserver \
    powertop \
    strace \
    unrar \
    rsync \
    scp \
    ssh \
    sftp \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh \
    Profiles \
    WeatherManagerService \
    libemoji \
    LiveWallpapersPicker \
    PhotoTable \
    Terminal \
    procmem \
    procrank

#	Launcher3 LatinIME Settings \
#	Bluetooth \
#	PicoTts \
#	DeskClock Contacts Settings StorageManager TelephonyProvider \
#	Trebuchet LineageSetupWizard \
#	CMSettingsProvider \
#
#	Bluetooth BluetoothMidiService \
#	CertInstaller messaging PicoTts \
#	CtsShimPrebuilt DeskClock HTMLViewer UserDictionaryProvider webview CarrierConfig CellBroadcastReceiver CMAudioService CMSettingsProvider Contacts ContactsProvider LineageSetupWizar Settings MediaProvider Shell StorageManager Telecom TelephonyProvider TeleService Dialer Trebuchet

include $(BUILD_PACKAGE)
