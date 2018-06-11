# AutoHotkey scripts

## Close the window on sight
Firstly the user will be asked to select the window. When it's done the selected window will be automatically closed every time it will appear. The script will run until it is manually stopped from the System Tray or the process is killed.

## Bind two windows
The user will be asked to select two windows, one after another. After that every time the first window will be brought to front, the second one will also do. It will happen even if the second window got minimized before.

## Get selected window name
It is an utility script used in "Close the window on sight" and "Bind two windows" scripts.

## send-hard-refresh-key-combination
This script is meant to be used from a console. It takes any number of string parameters and sends the <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>r</kbd> key combination to windows which title contains any of the passed strings, except "activate". "activate" is used to determine which windows should be activated before sending the combination. Any window which name contains string passed after "activate" will be activated. It seems required for some applications - for example the ones based on Chromium.
### Example usage
```
c:/Program\ Files/AutoHotkey/AutoHotkey.exe ./send-hard-refresh-key-combination.ahk Firefox activate Iron
```
