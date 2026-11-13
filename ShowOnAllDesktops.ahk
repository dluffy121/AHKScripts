#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, Force
#NoTrayIcon
; #Warn  ; Enable warnings to assist with detecting common errors.
Sleep, 2000 ; The time to pause in milliseconds
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability.
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir% ; Ensures a consistent starting directory.

; Windows+F11 : active window
#F11::ToggleAllDesktops(WinExist("A")) ; "A" means the active window

; Windows+Shift+F11 : window under the mouse cursor (e.g. PiP windows that never take focus)
#+F11::
	MouseGetPos,,, hwnd
	ToggleAllDesktops(DllCall("GetAncestor", "Ptr", hwnd, "UInt", 2, "Ptr")) ; 2 = GA_ROOT
Return

ToggleAllDesktops(hwnd)
{
	WinGetClass, class, ahk_id %hwnd%
	If (class = "Progman" || class = "WorkerW" || class = "Shell_TrayWnd") ; desktop / taskbar
		Return

	WinGet, ExStyle, ExStyle, ahk_id %hwnd%
	If !(ExStyle & 0x00000080) ; visible on all desktops.
		WinSet, ExStyle, +0x00000080, ahk_id %hwnd%
	Else
		WinSet, ExStyle, -0x00000080, ahk_id %hwnd%
}