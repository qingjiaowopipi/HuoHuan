; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "���"
!define PRODUCT_VERSION "#replace_version#"
!define PRODUCT_PUBLISHER "һ��"
!define PRODUCT_WEB_SITE "https://github.com/laosanyuan/HuoHuan"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\HuoHuan.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "HuoHuan\Resources\HuoHuan.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Language Selection Dialog Settings
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "..\docs\HuohuanAuthorizationDocument.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\HuoHuan.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "SimpChinese"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "Setup.exe"
InstallDir "$PROGRAMFILES\���"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show
BrandingText "${PRODUCT_NAME} ${PRODUCT_VERSION}"

Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite try
  File "HuoHuan\bin\publish\AngleSharp.dll"
  File "HuoHuan\bin\publish\CalcBinding.dll"
  File "HuoHuan\bin\publish\CommunityToolkit.Mvvm.dll"
  File "HuoHuan\bin\publish\Dapper.Contrib.dll"
  File "HuoHuan\bin\publish\Dapper.dll"
  File "HuoHuan\bin\publish\DynamicExpresso.Core.dll"
  File "HuoHuan\bin\publish\EntityFramework.dll"
  File "HuoHuan\bin\publish\EntityFramework.SqlServer.dll"
  File "HuoHuan\bin\publish\HuoHuan.DataBase.dll"
  File "HuoHuan\bin\publish\HuoHuan.deps.json"
  File "HuoHuan\bin\publish\System.Threading.Channels.dll"
  File "HuoHuan\bin\publish\HuoHuan.dll"
  File "HuoHuan\bin\publish\HuoHuan.exe"
  File "HuoHuan\bin\publish\GongSolutions.WPF.DragDrop.dll"
  File "HuoHuan\bin\publish\JetBrains.Annotations.dll"
  CreateDirectory "$SMPROGRAMS\���"
  CreateShortCut "$SMPROGRAMS\���\���.lnk" "$INSTDIR\HuoHuan.exe"
  CreateShortCut "$DESKTOP\���.lnk" "$INSTDIR\HuoHuan.exe"
  File "HuoHuan\bin\publish\HuoHuan.Plugin.Contracs.dll"
  File "HuoHuan\bin\publish\HuoHuan.Plugin.Plugins.dll"
  File "HuoHuan\bin\publish\HuoHuan.runtimeconfig.json"
  File "HuoHuan\bin\publish\HuoHuan.Utils.dll"
  SetOutPath "$INSTDIR\inference\ch_PP-OCRv3_det_infer"
  File "HuoHuan\bin\publish\inference\ch_PP-OCRv3_det_infer\._inference.pdiparams"
  File "HuoHuan\bin\publish\inference\ch_PP-OCRv3_det_infer\._inference.pdiparams.info"
  File "HuoHuan\bin\publish\inference\ch_PP-OCRv3_det_infer\._inference.pdmodel"
  File "HuoHuan\bin\publish\inference\ch_PP-OCRv3_det_infer\inference.pdiparams"
  File "HuoHuan\bin\publish\inference\ch_PP-OCRv3_det_infer\inference.pdiparams.info"
  File "HuoHuan\bin\publish\inference\ch_PP-OCRv3_det_infer\inference.pdmodel"
  SetOutPath "$INSTDIR\inference\ch_PP-OCRv3_rec_infer"
  File "HuoHuan\bin\publish\inference\ch_PP-OCRv3_rec_infer\inference.pdiparams"
  File "HuoHuan\bin\publish\inference\ch_PP-OCRv3_rec_infer\inference.pdiparams.info"
  File "HuoHuan\bin\publish\inference\ch_PP-OCRv3_rec_infer\inference.pdmodel"
  SetOutPath "$INSTDIR\inference\ch_ppocr_mobile_v2.0_cls_infer"
  File "HuoHuan\bin\publish\inference\ch_ppocr_mobile_v2.0_cls_infer\inference.pdiparams"
  File "HuoHuan\bin\publish\inference\ch_ppocr_mobile_v2.0_cls_infer\inference.pdiparams.info"
  File "HuoHuan\bin\publish\inference\ch_ppocr_mobile_v2.0_cls_infer\inference.pdmodel"
  SetOutPath "$INSTDIR\inference"
  File "HuoHuan\bin\publish\inference\ppocr_keys.txt"
  SetOutPath "$INSTDIR"
  File "HuoHuan\bin\publish\libiomp5md.dll"
  File "HuoHuan\bin\publish\Microsoft.Extensions.FileProviders.Abstractions.dll"
  File "HuoHuan\bin\publish\Microsoft.Extensions.FileProviders.Embedded.dll"
  File "HuoHuan\bin\publish\Microsoft.Extensions.Primitives.dll"
  File "HuoHuan\bin\publish\mkldnn.dll"
  File "HuoHuan\bin\publish\mklml.dll"
  File "HuoHuan\bin\publish\Ninject.dll"
  File "HuoHuan\bin\publish\opencv_world411.dll"
  File "HuoHuan\bin\publish\PaddleOCR.dll"
  File "HuoHuan\bin\publish\PaddleOCRSharp.dll"
  File "HuoHuan\bin\publish\paddle_inference.dll"
  SetOutPath "$INSTDIR\Resources"
  File "HuoHuan\bin\publish\Resources\complate.wav"
  SetOutPath "$INSTDIR\Resources\Fonts"
  File "HuoHuan\bin\publish\Resources\Fonts\iconfont.ttf"
  File "HuoHuan\bin\publish\Resources\Fonts\jiangxizhuokai.ttf"
  File "HuoHuan\bin\publish\Resources\Fonts\siyuansong.ttf"
  File "HuoHuan\bin\publish\Resources\Fonts\xiaoweilogo.ttf"
  SetOutPath "$INSTDIR\runtimes\win-x64\native"
  File "HuoHuan\bin\publish\runtimes\win-x64\native\sni.dll"
  File "HuoHuan\bin\publish\runtimes\win-x64\native\SQLite.Interop.dll"
  SetOutPath "$INSTDIR\runtimes\win-x86\native"
  File "HuoHuan\bin\publish\runtimes\win-x86\native\sni.dll"
  File "HuoHuan\bin\publish\runtimes\win-x86\native\SQLite.Interop.dll"
  SetOutPath "$INSTDIR"
  File "HuoHuan\bin\publish\System.Data.SqlClient.dll"
  File "HuoHuan\bin\publish\System.Data.SQLite.dll"
  File "HuoHuan\bin\publish\System.Data.SQLite.EF6.dll"
  File "HuoHuan\bin\publish\YamlDotNet.dll"
  File "HuoHuan\bin\publish\zxing.dll"
SectionEnd

Section -AdditionalIcons
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\���\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\���\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\HuoHuan.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\HuoHuan.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) �ѳɹ��ش���ļ�����Ƴ���"
FunctionEnd

Function un.onInit
!insertmacro MUI_UNGETLANGUAGE
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "��ȷʵҪ��ȫ�Ƴ� $(^Name) ���估���е������" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$SMPROGRAMS\���\Uninstall.lnk"
  Delete "$SMPROGRAMS\���\Website.lnk"
  Delete "$DESKTOP\���.lnk"
  Delete "$SMPROGRAMS\���\���.lnk"

  RMDir "$SMPROGRAMS\���"
  RMDir /r "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd