#include Get selected window name.ahk

; InputBox, FirstWindowName, Bind two windows, Type in the name of the first window., , 265, 125
; InputBox, SecondWindowName, Bind two windows, Type in the name of the second window., , 265, 125

SetTitleMatchMode, 3

FirstWindowName := GetSelectedWindowName("Select the first window.")
SecondWindowName := GetSelectedWindowName("Select the second window.")

if (FirstWindowName != SecondWindowName) {
    Loop {
        WinWaitNotActive, %FirstWindowName%
        WinWaitActive, %FirstWindowName%
        WinGet Minimalized, MinMax, %SecondWindowName%
        if (Minimalized) {
            WinRestore, %SecondWindowName%
            WinActivate, %FirstWindowName%
        } else {
            WinSet, AlwaysOnTop, On, %SecondWindowName%
            WinSet, AlwaysOnTop, On, %FirstWindowName%
            WinSet, AlwaysOnTop, Off, %SecondWindowName%
            WinSet, AlwaysOnTop, Off, %FirstWindowName%
        }
    }
}
