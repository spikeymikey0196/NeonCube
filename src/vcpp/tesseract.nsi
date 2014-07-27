Name "THUMP"

OutFile "thump-windows-1.0.0-setup.exe"

InstallDir $PROGRAMFILES\THUMP

InstallDirRegKey HKLM "Software\THUMP" "Install_Dir"

SetCompressor /SOLID lzma
XPStyle on

Page components
Page directory
Page instfiles

UninstPage uninstConfirm
UninstPage instfiles

Section "THUMP (required)"

  SectionIn RO
  
  SetOutPath $INSTDIR
  
  File /r "..\..\*.*"
  
  WriteRegStr HKLM SOFTWARE\THUMP "Install_Dir" "$INSTDIR"
  
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\THUMP" "DisplayName" "THUMP"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\THUMP" "UninstallString" '"$INSTDIR\uninstall.exe"'
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\THUMP" "NoModify" 1
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\THUMP" "NoRepair" 1
  WriteUninstaller "uninstall.exe"

  IfFileExists "$DOCUMENTS\My Games\THUMP\config\saved.cfg" ConfigFound NoConfig  
  ConfigFound:
     Delete "$DOCUMENTS\My Games\THUMP\config\old-saved.cfg"
     Rename "$DOCUMENTS\My Games\THUMP\config\saved.cfg" "$DOCUMENTS\My Games\THUMP\config\old-saved.cfg"
  NoConfig:

SectionEnd

Section "Start Menu Shortcuts"

  CreateDirectory "$SMPROGRAMS\THUMP"

  CreateDirectory "$DOCUMENTS\My Games\THUMP"
 
  SetOutPath "$INSTDIR"
  
  CreateShortCut "$INSTDIR\THUMP.lnk"                "$INSTDIR\thump.bat" "" "$INSTDIR\bin\tesseract.exe" 0 SW_SHOWMINIMIZED
  CreateShortCut "$SMPROGRAMS\THUMP\THUMP.lnk"   "$INSTDIR\thump.bat" "" "$INSTDIR\bin\tesseract.exe" 0 SW_SHOWMINIMIZED
;  CreateShortCut "$SMPROGRAMS\THUMP\README.lnk"      "$INSTDIR\README.html"   "" "$INSTDIR\README.html" 0

  CreateShortCut "$INSTDIR\User Data.lnk"                "$DOCUMENTS\My Games\THUMP"
  CreateShortCut "$SMPROGRAMS\THUMP\User Data.lnk"   "$DOCUMENTS\My Games\THUMP"  

  CreateShortCut "$SMPROGRAMS\THUMP\Uninstall.lnk"   "$INSTDIR\uninstall.exe" "" "$INSTDIR\uninstall.exe" 0
SectionEnd

Section "Uninstall"
  
  DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\THUMP"
  DeleteRegKey HKLM SOFTWARE\THUMP

  RMDir /r "$SMPROGRAMS\THUMP"
  RMDir /r "$INSTDIR"

SectionEnd
