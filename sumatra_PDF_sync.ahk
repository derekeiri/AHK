#IfWinActive ahk_class SUMATRA_PDF_FRAME ; a context-sensitive hotkey where the window class is SUMATRA_PDF_FRAME
Right:: ; hotkey label
orig := WinExist("A") ; assigns the active window with the variable, "orig".
WinGet, outvar, List , ahk_class SUMATRA_PDF_FRAME ; retrieves a list of windows, assigns variables where akh_class is SUMATRA_PDF_FRAME
win1 := outvar1 ; variable for the a windows
win2 := outvar2 ; variable for the a windows
WinActivate, ahk_id %win1% ; identifies the target window win1
sendinput {Right} ; sends keystroke
WinActivate, ahk_id %win2% ; identifies the target window win2
sendinput {Right} ; sends keystroke
WinActivate, ahk_id %orig% ; identifies the active window as "orig"
exit

Left::
orig := WinExist("A")
WinGet, outvar, List , ahk_class SUMATRA_PDF_FRAME
win1 := outvar1
win2 := outvar2
WinActivate, ahk_id %win1%
sendinput {Left}
WinActivate, ahk_id %win2%
sendinput {Left}
WinActivate, ahk_id %orig%
exit
