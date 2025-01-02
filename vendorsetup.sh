#	GNU General Public License for more details.
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	OrangeFox is distributed in the hope that it will be useful,
#	OrangeFox is free software: you can redistribute it and/or modify
#	See <http://www.gnu.org/licenses/>.
#	This file is part of the OrangeFox Recovery Project
#	any later version.
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
# 	Copyright (C) 2021-2024 The OrangeFox Recovery Project
# 	Please maintain this if you use this script or any part of it
# 	This software is released under GPL version 3 or any later version.

export ALLOW_MISSING_DEPENDENCIES=true

FDEVICE="q2q"

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
	if [ -n "$chkdev" ]; then
		FOX_BUILD_DEVICE="$FDEVICE"
	else
		chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
		[ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
	fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
	fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
	export TARGET_ARCH=arm64
	export FOX_ASH_IS_BASH=1
	export FOX_BUGGED_AOSP_ARB_WORKAROUND="1546300800"; # Tuesday, January 1, 2019 12:00:00 AM GMT+00:00
	export FOX_DELETE_AROMAFM="1"
	export FOX_DISABLE_APP_MANAGER=1
	export FOX_RECOVERY_INSTALL_PARTITION=/dev/block/by-name/recovery
	export FOX_RECOVERY_SYSTEM_PARTITION=/dev/block/mapper/system
	export FOX_RECOVERY_VENDOR_PARTITION=/dev/block/mapper/vendor
	export FOX_REPLACE_BOOTIMAGE_DATE=1
	export FOX_TARGET_DEVICES="q2q"
	export FOX_USE_BASH_SHELL=1
	export FOX_USE_NANO_EDITOR=1
	export FOX_USE_SED_BINARY=1
	export FOX_USE_TAR_BINARY=1
	export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
	export FOX_USE_XZ_UTILS=1
	export LC_ALL="C"
	export OF_ADVANCED_SECURITY=1
	export OF_ALLOW_DISABLE_NAVBAR=0
	export OF_CHECK_OVERWRITE_ATTEMPTS=1
	export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
	export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
	export OF_DONT_PATCH_ENCRYPTED_DEVICE="1"
	export OF_DONT_PATCH_ON_FRESH_INSTALLATION=1
	export OF_HIDE_NOTCH=1
	export OF_FBE_METADATA_MOUNT_IGNORE=1
	export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
	export OF_FLASHLIGHT_ENABLE=0
	export OF_MAINTAINER="Azkali"
	export OF_NO_RELOAD_AFTER_DECRYPTION=1
	export OF_NO_TREBLE_COMPATIBILITY_CHECK="1"
	export OF_OTA_BACKUP_STOCK_BOOT_IMAGE=1
	export OF_PATCH_AVB20=1
	export OF_QUICK_BACKUP_LIST="/boot;/dtbo;/super;"
	export OF_RUN_POST_FORMAT_PROCESS=1
	export OF_SCREEN_H="2700"
	export OF_SKIP_MULTIUSER_FOLDERS_BACKUP="1"
	export OF_USE_GREEN_LED=0
	export OF_USE_MAGISKBOOT="1"
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"
	export TW_DEFAULT_LANGUAGE="en"

	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
		export | grep "FOX" >> $FOX_BUILD_LOG_FILE
		export | grep "OF_" >> $FOX_BUILD_LOG_FILE
		export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
		export | grep "TW_" >> $FOX_BUILD_LOG_FILE
	fi
fi
