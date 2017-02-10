include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ParentalControlsForiOS
ParentalControlsForiOS_FILES = Tweak.xm
ParentalControlsForiOS_FRAMEWORKS = UIKit

SUBPROJECTS += pcfiospreferences

include $(THEOS)/makefiles/tweak.mk
include $(THEOS)/makefiles/aggregate.mk

after-install::
	install.exec "killall -9 backboardd"
