TARGET := iphone:clang:latest:9.3
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = TikTokClearCommentsPrefs

TikTokClearCommentsPrefs_FILES = $(wildcard *.m)
TikTokClearCommentsPrefs_FRAMEWORKS = UIKit
TikTokClearCommentsPrefs_PRIVATE_FRAMEWORKS = Preferences
$(BUNDLE_NAME)_EXTRA_FRAMEWORKS += Cephei CepheiPrefs
TikTokClearCommentsPrefs_INSTALL_PATH = /Library/PreferenceBundles
TikTokClearCommentsPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
