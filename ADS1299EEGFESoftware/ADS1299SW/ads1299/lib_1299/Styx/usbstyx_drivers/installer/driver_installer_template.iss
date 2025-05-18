; This installer installs the libusb drivers used on MMB0 motherboard
; Requirements: Inno Setup (http://www.jrsoftware.org/isdl.php)
;
; Date: 27FEB12

[Setup]
AppName = USBStyx Driver Installation
AppVerName = LibUsb drivers v1.2.6
AppPublisher = Texas Instruments
AppVersion = 2.0.0.1
DefaultDirName = {pf}\ADCPro\drivers
DefaultGroupName = USBStyx Drivers
Compression = lzma
SolidCompression = yes
; Win2000 or higher
MinVersion = 5,5

DisableDirPage = yes
DisableProgramGroupPage = yes

; This installation requires admin priveledges.  This is needed to install
; drivers on windows vista and later.
PrivilegesRequired = admin

; "ArchitecturesInstallIn64BitMode=x64 ia64" requests that the install
; be done in "64-bit mode" on x64 & Itanium, meaning it should use the
; native 64-bit Program Files directory and the 64-bit view of the
; registry. On all other architectures it will install in "32-bit mode".
ArchitecturesInstallIn64BitMode=x64 ia64

; Inno pascal functions for determining the processor type.
; you can use these to use (in an inno "check" parameter for example) to
; customize the installation depending on the architecture. 
[Code]
function IsX64: Boolean;
begin
  Result := Is64BitInstallMode and (ProcessorArchitecture = paX64);
end;

function IsI64: Boolean;
begin
  Result := Is64BitInstallMode and (ProcessorArchitecture = paIA64);
end;

function IsX86: Boolean;
begin
  Result := not IsX64 and not IsI64;
end;

function Is64: Boolean;
begin
  Result := IsX64 or IsI64;
end;

[Files]
; copy your libusb-win32 setup package to the App folder
Source: "..\*"; Excludes: "DN_install\*, installer\*"; Flags: recursesubdirs; DestDir: "{app}\driver"

; also copy the native (32bit or 64 bit) libusb0.dll to the 
; system folder so that rundll32.exe will find it
Source: "..\x86\libusb0_x86.dll"; DestName: "libusb0.dll"; DestDir: "{sys}"; Flags: uninsneveruninstall replacesameversion restartreplace promptifolder; Check: IsX86;
Source: "..\amd64\libusb0.dll"; DestDir: "{sys}"; Flags: uninsneveruninstall replacesameversion restartreplace promptifolder; Check: IsX64;
Source: "..\ia64\libusb0.dll"; DestDir: {sys}; Flags: uninsneveruninstall replacesameversion restartreplace promptifolder; Check: IsI64;

[Icons]
;Name: "{group}\Uninstall TestDrivers"; Filename: "{uninstallexe}"

[Run]

; invoke libusb's DLL to install the .inf file
Filename: "rundll32"; Parameters: "libusb0.dll,usb_install_driver_np_rundll {app}\driver\USBStyx.inf"; StatusMsg: "Installing driver (this may take a few seconds) ..."
