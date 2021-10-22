; File: Screensaver.ahk
; Description: Activate screensaver if it's active in registry.
;
; Keystrokes:
;   Win+Alt+L: Activate Screensaver
;
; Author: Chris Pedro
; Copyright: (c) Chris Pedro 2021
; License: MIT

; Run screensaver on Win+Alt+L, if it's active.
#!l::
{
  RegRead, screensaverActive, HKCU\Control Panel\Desktop, ScreenSaveActive
  RegRead, screensaverExe, HKCU\Control Panel\Desktop, SCRNSAVE.EXE
  if screensaverActive = 0
  {
    MsgBox, 0, Screensaver, Your screensaver is not active.
  }
  else if !screensaverExe
  {
    MsgBox, 0, Screensaver, You do not have a screensaver selected.
  }
  else
  {
    Run, %screensaverExe /s
  }
  return
}

