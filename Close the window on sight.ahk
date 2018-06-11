#include Get selected window name.ahk

SetTitleMatchMode, 3

; InputBox, WindowName, Close window on sight, Type in the name of the window to close., , 265, 125

WindowName := GetSelectedWindowName()

if (WindowName) {
    Loop {
        WinWait, %WindowName%
        WinClose, %WindowName%
    }
}
