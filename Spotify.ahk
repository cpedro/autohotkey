; File: Spotify.ahk
; Description: Controls Spotify via AutoHotKey global shortcuts.
;
; Keystrokes:
;   Win+Alt+C: Play/Pause
;   Win+Alt+Right Arrow: Next Track
;   Win+alt+Left Arrow: Previous Track
;
; Author: Chris Pedro
; Copyright: (c) Chris Pedro 2021
; License: MIT

#SingleInstance Force
#Requires AutoHotkey >=2.0- <2.1

; Send a keystroke to Spotify.
SendSpotifyKeystroke(ks) {
  DetectHiddenWindows(True)
  spotify := WinGetID("ahk_exe spotify.exe")
  ControlFocus(spotify)
  ControlSend(ks,, "ahk_id " spotify)
  return
}

; Win+Alt+C: Play/Pause
#!c::
{
  SendSpotifyKeystroke("{Space}")
  return
}

; Win+Alt+Right Arrow: Next
#!Right::
{
  SendSpotifyKeystroke("^{Right}")
  return
}

; Win+alt+Left Arrow: Previous
#!Left::
{
  SendSpotifyKeystroke("^{Left}")
  return
}

