; File: Music.ahk
; Description: Controls music via AutoHotKey global shortcuts.
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

; Win+Alt+C: Play/Pause
#!c::
{
  Send("{Media_Play_Pause}")
  return
}

; Win+Alt+Right Arrow: Next
#!Right::
{
  Send("{Media_Next}")
  return
}

; Win+alt+Left Arrow: Previous
#!Left::
{
  Send("{Media_Prev}")
  return
}

