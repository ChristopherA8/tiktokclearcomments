TARGET := iphone:clang:latest:9.3
INSTALL_TARGET_PROCESSES = TikTok
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TikTokClearComments

TikTokClearComments_FILES = Tweak.xm
$(TWEAK_NAME)_EXTRA_FRAMEWORKS += Cephei
TikTokClearComments_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += tiktokclearcommentsprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
