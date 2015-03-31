; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.
;
; Keys:
;# WindowsKey
;! Alt
;^ Ctrl
;+ Shift

; Run Everything Search
#f::    ;WindowsKey+f
    Run "C:\Program Files\Everything\Everything.exe"
return

; Copy selected text to the clipboard and switch to SAS and press F3 to submit it
#q::    ;WindowsKey+q
	Send ^c ; Ctrl+c
	if WinExist("ahk_class SAS aws")
	{
		WinActivate
	}
	else	
	{
		Run "%A_AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\SAS-Theori.lnk"
		SecondsToWait=10
	}
	Send {F3}
	Send {F5}
	Send {F6}
return

; Assign a global hotkey to Sublime Text
^!w::   ;Ctrl+Alt+w
	if WinExist("ahk_class PX_WINDOW_CLASS")
	{
		WinActivate
	}
	else
	{
		 Run "%A_AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Sublime Text 3.lnk"
	}
return

; Assign a global hotkey to SAS
^!s::   ;Ctrl+Alt+s
	if WinExist("ahk_class SAS aws")
	{
		WinActivate
	}
	else	
	{
		Run "%A_AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\SAS-Theori.lnk"
	}
return
