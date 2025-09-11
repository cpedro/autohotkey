; File: Qobuz.ahk
; Description: Controls Qobuz via AutoHotKey global shortcuts.
;
; Keystrokes:
;   Win+Alt+C: Play/Pause
;   Win+Alt+Right Arrow: Next Track
;   Win+alt+Left Arrow: Previous Track
;
; Author: Chris Pedro
; Copyright: (c) Chris Pedro 2025
; License: MIT

#SingleInstance Force
#Requires AutoHotkey >=2.0- <2.1

; Send a keystroke to Qobuz.
SendQobuzKeystroke(ks) {
  DetectHiddenWindows(True)
  qobuz := WinGetID("ahk_exe qobuz.exe")
  ControlFocus(qobuz)
  Sleep(100)
  ControlSend(ks,, "ahk_id " qobuz)
  return
}

; Win+Alt+C: Play/Pause
#!c::
{
  SendQobuzKeystroke("{Space}")
  return
}

; Win+Alt+Right Arrow: Next
#!Right::
{
  SendQobuzKeystroke("^{Right}")
  return
}

; Win+alt+Left Arrow: Previous
#!Left::
{
  SendQobuzKeystroke("^{Left}")
  return
}

