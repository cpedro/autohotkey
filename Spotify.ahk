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

; Send a keystroke to Spotify.
SendSpotifyKeystroke(ks) {
  DetectHiddenWindows, On
  WinGet, spotify, ID, ahk_exe spotify.exe
  ControlFocus,, ahk_id %spotify%
  ControlSend,, %ks%, ahk_id %spotify%
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

