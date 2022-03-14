#IfWinActive ahk_class SUMATRA_PDF_FRAME ; a context-sensitive hotkey where the window class is SUMATRA_PDF_FRAME
Right:: ; hotkey label
orig := WinExist("A") ; assigns the active window with the variable, "orig".
WinGet, outvar, List , ahk_class SUMATRA_PDF_FRAME ; retrieves a list of windows, assigns variables where akh_class is SUMATRA_PDF_FRAME
win1 := outvar1
win2 := outvar2
WinActivate, ahk_id %win1%
sendinput {Right}
WinActivate, ahk_id %win2%
sendinput {Right}
WinActivate, ahk_id %orig%
return

Left:: ; hotkey label
orig := WinExist("A")
WinGet, outvar, List , ahk_class SUMATRA_PDF_FRAME
win1 := outvar1
win2 := outvar2
WinActivate, ahk_id %win1%
sendinput {Left}
WinActivate, ahk_id %win2%
sendinput {Left}
WinActivate, ahk_id %orig%
return