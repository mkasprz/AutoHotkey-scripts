GetSelectedWindowName(ModalWindowText := "Select the window.") {
    Gui, -Caption
    Gui, Add, Text, , %ModalWindowText%
    Gui, Show
    WinGetActiveTitle, ModalWindowName
    WinWaitNotActive, %ModalWindowName%
    Gui, Destroy
    WinGetActiveTitle, WindowName
    return WindowName
}
