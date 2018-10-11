#include Get selected window name.ahk

SetTitleMatchMode, 3

WindowName := GetSelectedWindowName("Select the window.")
WinActivate, %WindowName%
Winset, AlwaysOnTop, Toggle, A
