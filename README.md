# AutoHotkey Scripts

AutoHotkey scripts for controlling various actions in applications.

More information on AutoHotkey can be found
[on their site](https://www.autohotkey.com/).

## Scripts

* **Screensaver.ahk**
  * Activates screensaver if Win+Alt+L is pressed.
* **Music.ahk**
  * Plays / Pauses Music / Video if Win+Alt+C is pressed.
  * Plays next track if Win+Alt+Right Arrow is pressed.
  * Plays previous track if Win+Alt+Left Arrow is pressed.
* **Quobuz.ahk**
  * Plays / Pauses Qobuz if Win+Alt+C is pressed.
  * Plays next track in Qobuz if Win+Alt+Right Arrow is pressed.
  * Plays previous track in Qobuz if Win+Alt+Left Arrow is pressed.
* **Spotify.ahk**
  * Plays / Pauses Spotify if Win+Alt+C is pressed.
  * Plays next track in Spotify if Win+Alt+Right Arrow is pressed.
  * Plays previous track in Spotify if Win+Alt+Left Arrow is pressed.

## Notes

Only load one of **Music.ahk**, **Quobuz.ahk** or **Spotify.ahk** as they all
use the same keyboard shortcuts.  Music is a generic one, that should work with
any media application, including YouTube in a browser.  It effectively uses the
same calls media buttons on a keyboard.

## Launch on Startup

If you want any of these to run on computer startup, you can press Win+R and
type `shell:startup` and click "OK".  Then make a shortcut to the scripts in the
explorer window that opens.
