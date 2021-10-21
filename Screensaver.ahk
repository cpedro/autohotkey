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
  RegRead, ScreensaverActive, HKCU\Control Panel\Desktop, ScreenSaveActive
  if ScreensaverActive = 0
  {
    MsgBox, 0, Screensaver, Your screensaver is not active
  }
  else
  {
    RegRead, screensaver, HKCU\Control Panel\Desktop, SCRNSAVE.EXE
    Run, %screensaver% /s
  }
  return
}

