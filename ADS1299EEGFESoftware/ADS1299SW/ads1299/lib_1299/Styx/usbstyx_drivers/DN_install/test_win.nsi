!include MUI.nsh
!include Sections.nsh
!include winver.nsh

#################################################################################
# This program utilizes functions to access the web and check a *.ini file to determine
# the latest version available of ADCPro.  The program will then offer the choise
# to download and install the newer version if it exists
# 01MAY07
#################################################################################


!define APP_NAME "ADCPro Version File Creator"
!define COMP_NAME "Texas Instruments Inc."
!define VERSION "0.0.1"
!define COPYRIGHT "(c)2007 Texas Instruments Inc."
!define DESCRIPTION "ADCPro Version File Creator Initialization"
#!define REG_ROOT "HKCU"
#!define REGISTRY_PATH "Software\Microsoft\Windows\CurrentVersion\Uninstall\ADCPro"
!define INS_UTILS "HTTP"
!define WEB_PATH "ftp://ftp.ti.com/pub/data_acquisition/ADCPro"
!define ADCPRO_FILE_NAME "adcpro_ver.ini"
!define PLUGIN_FILE_NAME "plugin_ver.ini"
#!define MAIN_APP_EXE "adcpro.exe"
#!define REG_APP_PATH "Software\Microsoft\Windows\CurrentVersion\App Paths\${MAIN_APP_EXE}"


VIProductVersion  "${VERSION}.0"
VIAddVersionKey "ProductName"  "${APP_NAME}"
VIAddVersionKey "CompanyName"  "${COMP_NAME}"
VIAddVersionKey "LegalCopyright"  "${COPYRIGHT}"
VIAddVersionKey "FileDescription"  "${DESCRIPTION}"
VIAddVersionKey "FileVersion"  "${VERSION}.0"

OutFile "winver.exe"

################################################################################
!define MUI_ABORTWARNING
!define MUI_UNABORTWARNING

Name "${APP_NAME}"
Caption "${APP_NAME}"
BrandingText "${APP_NAME}"
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_PAGE_INSTFILES
################################################################################
# Hide installer screens
SilentInstall Silent

################################################################################
# This section downloads mulitple ini files from the web that contain version information
# and plugin information.  These files are downloaded to a temporary directory
# and a master temporary file is created and appended with information
################################################################################

Section "Download Files" filedown

	Call GetWindowsVersion
	Pop $0
	MessageBox MB_OK "Version = $0"
SectionEnd
