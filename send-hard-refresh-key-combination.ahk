#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

SetTitleMatchMode, 2
SetKeyDelay, 0, 0

WinGetActiveTitle, activeWindowName
activate := false
for index, parameter in A_Args {
    if (%parameter% == activate) {
        activate := true
    } else {
        if (activate) {
            WinActivate, %parameter%
            ControlSend, , ^+r, A
            WinActivate, %activeWindowName%
            activate := false
        } else {
            ControlSend, , ^+r, %parameter%
        }
    }
}
