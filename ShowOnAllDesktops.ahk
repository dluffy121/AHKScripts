#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, Force
#NoTrayIcon
; #Warn  ; Enable warnings to assist with detecting common errors.
Sleep, 2000 ; The time to pause in milliseconds
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability.
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir% ; Ensures a consistent starting directory.

; Windows+F11
#F11::
	WinGet, ExStyle, ExStyle, A ; "A" means the active window
	If !(ExStyle & 0x00000080) ; visible on all desktops.
		WinSet, ExStyle, 0x00000080, A
	Else
		WinSet, ExStyle, -0x00000080, A
Return