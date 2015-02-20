# Copyright (c) 2005-2015 Ross Smith II (http://smithii.com). MIT Licensed.

!define PRODUCT_NAME "djgpp_installer"
!define PRODUCT_DIR "DJGPP"
#!define PRODUCT_VERSION "1.0"
!define PRODUCT_DESC "DJGPP Installer ${PRODUCT_VERSION}"
!define PRODUCT_TRADEMARKS "DJGPP is copyright (c) 2003-2015 DJ Delorie"

!addincludedir "../nsislib"
!addincludedir "nsislib"

!define PRODUCT_INSTALL_DIR "C:\\${PRODUCT_DIR}"

!include "config.nsh"

!undef PRODUCT_EXE
!undef PRODUCT_FILE
!define NO_DESKTOP_ICONS
!define NO_STARTMENU_ICONS
#!define ADD_INSTDIR_TO_PATH

!define COPYDIR "$EXEDIR"
#!define NOEXTRACTPATH
!define UNZIP_DIR "$INSTDIR"

InstType "Binaries"
InstType "Sources"
InstType "Extra Documentation Formats"
InstType "All"
InstType "None"

!include "common.nsh"

!include "djgpp_installer.nsh"

!include "WriteEnvStr.nsh"

Section "-hidden2"
	Push DJGPP
	Push "$INSTDIR\\DJGPP.ENV"
	Call WriteEnvStr
	Push "$INSTDIR\\bin"
	Call AddToPath
SectionEnd

Section uninstall
	Push DJGPP
	Call un.DeleteEnvStr
	Push "$INSTDIR\\bin"
	Call un.RemoveFromPath
SectionEnd
