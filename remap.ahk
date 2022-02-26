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
	Run, "C:\Users\whako\AppData\Local\Microsoft\WindowsApps\wt.exe", , , bash

	WinWait, ahk_exe wsl.exe
	WinActivate, ahk_exe wsl.exe
return

#+C::
	;WinGet, cmd_arr_before, list, ahk_exe cmd.exe
	Run, "C:\Users\whako\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools\Command Prompt.lnk", , , cmd

	WinWait, ahk_exe cmd.exe
	WinActivate, ahk_exe cmd.exe
return

; :shrug: ¯\_(ツ)_/¯
:B0:`:shrug::
	if (A_EndChar == ":") {
		SendInput, {BS 7}¯\_(ツ)_/¯
	}
return

; :whyy: щ(ºДºщ)
:B0:`:whyy::
	if (A_EndChar == ":") {
		SendInput, {BS 6}щ(ºДºщ)
	}
return

; :flip:  (╯°□°）╯︵ ┻━┻
:B0:`:flip::
	if (A_EndChar == ":") {
		SendInput, {BS 6}(╯°□°）╯︵ ┻━┻
	}
return

; :disapproval:  ಠ_ಠ
:B0:`:disapproval::
	if (A_EndChar == ":") {
		SendInput, {BS 13} ಠ_ಠ
	}
return

; :gib:  ༼ つ ◕_◕ ༽つ
:B0:`:gib::
	if (A_EndChar == ":") {
		SendInput, {BS 5}  ༼ つ ◕_◕ ༽つ
	}
return

; :tm: ™
:?B0:`:tm::
	if (A_EndChar == ":") {
		SendInput, {BS 4}™
	}
return

Launch_App2:: Run, "C:\Program Files\Everything\Everything.exe"

;Volume_Mute:: SendInput, {Media_Play_Pause}

;Volume_Down:: SendInput, {Media_Prev}

;Volume_Up:: SendInput, {Media_Next}
