;#Persistent
;AltTab() {
;	global _AltTab
;	if (_AltTab.altTabFlag) {
;		if (A_TickCount - _AltTab.lastTab >= 400) {
;			SendInput, {Tab}
;			_AltTab.lastTab := A_TickCount
;		}
;	} else {
;		SendInput, {Blind}{Alt Down}{Tab}
;		_AltTab.altTabFlag := 1
;		_AltTab.lastTab := A_TickCount
;	}
;}

;AltTabClose() {
;	global _AltTab
;	_AltTab := { altTabFlag: 0 }
;	SendInput, {Blind}!{Alt Up}
;}

#Pause:: DllCall("PowrProf\SetSuspendState", "int", 0, "int", 1, "int", 1)

#C::
	;WinGet, bash_arr_before, list, ahk_exe mintty.exe
	Run, "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Git\bash.lnk", , , bash

	WinWait, ahk_exe mintty.exe
	WinActivate, ahk_exe mintty.exe
return

#+C::
	;WinGet, cmd_arr_before, list, ahk_exe cmd.exe
	Run, "C:\Users\whako\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools\Command Prompt.lnk", , , cmd

	WinWait, ahk_exe cmd.exe
	WinActivate, ahk_exe cmd.exe
return

Launch_App2:: Run, "D:\Programs\EverythingSearch\Everything.exe"

;Volume_Mute:: SendInput, {Media_Play_Pause}

;Volume_Down:: SendInput, {Media_Prev}

;Volume_Up:: SendInput, {Media_Next}
