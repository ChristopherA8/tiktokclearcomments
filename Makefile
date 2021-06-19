TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = TikTok
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TikTokClearComments

TikTokClearComments_FILES = Tweak.xm
TikTokClearComments_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
