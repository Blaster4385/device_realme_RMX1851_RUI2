cmd_usr/include/miniISP/.install := /bin/bash ../scripts/headers_install.sh ./usr/include/miniISP ../include/uapi/miniISP miniISP_ioctl.h; /bin/bash ../scripts/headers_install.sh ./usr/include/miniISP ../include/miniISP ; /bin/bash ../scripts/headers_install.sh ./usr/include/miniISP ./include/generated/uapi/miniISP ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > ./usr/include/miniISP/$$F; done; touch usr/include/miniISP/.install
