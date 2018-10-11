; Based on click Counter by BikeMike.

#Persistent

GoSub, Reset
GoSub, UpdateTooltip
Menu, Tray, NoStandard
Menu, Tray, Add, Increment, Increment
Menu, Tray, Add, Decrement, Decrement
Menu, Tray, Add, Reset, Reset
Menu, Tray, Add, Exit, Exit
Menu, Tray, Default, Increment
Menu, Tray, Click, 1
OnExit, LogAndExit
Exit

Increment:
    counter++
    GoSub, UpdateTooltip
    Gui, Destroy
    Gui, -Caption
    Gui, Add, Text, , %counter%
    Gui, Show
    Sleep, 1000
    Gui, Destroy
    Return

Decrement:
    counter--
    GoSub, UpdateTooltip
    Return

Reset:
    FormatTime, T, , dd-MM-yyyy HH:mm:ss
    FileAppend, %T% - %counter% - resetted`n, Counter.log
    counter = 0
    GoSub, UpdateTooltip
    Return

UpdateTooltip:
    Menu, Tray, Tip, %counter%
    Return

LogAndExit:
    FormatTime, T, , dd-MM-yyyy HH:mm:ss
    FileAppend, %T% - %counter%`n, Counter.log
    ExitApp

Exit:
    ExitApp
