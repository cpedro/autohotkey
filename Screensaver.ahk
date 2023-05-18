; File: Screensaver.ahk
; Description: Activate screensaver if it's active in registry.
;
; Keystrokes:
;   Win+Alt+L: Activate Screensaver
;
; Author: Chris Pedro
; Copyright: (c) Chris Pedro 2021
; License: MIT

#SingleInstance Force
#Requires AutoHotkey >=2.0- <2.1

; Run screensaver on Win+Alt+L, if it's active.
#!l::
{
  screensaverActive := RegRead("HKCU\Control Panel\Desktop", "ScreenSaveActive")
  screensaverExe := RegRead("HKCU\Control Panel\Desktop", "SCRNSAVE.EXE")
  if screensaverActive = 0
  {
    MsgBox("Your screensaver is not active.", "Screensaver")
  }
  else if !screensaverExe
  {
    MsgBox("You do not have a screensaver selected.", "Screensaver")
  }
  else
  {
    Run(screensaverExe " /s")
  }
  return
}
