#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, Force
#NoTrayIcon
; #Warn  ; Enable warnings to assist with detecting common errors.
Sleep, 2000 ; The time to pause in milliseconds
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability.
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir% ; Ensures a consistent starting directory.

; Windows+F10
#F10::
    ControlGet, HWND, Hwnd,, SysListView321, ahk_class Progman
    If HWND =
        ControlGet, HWND, Hwnd,, SysListView321, ahk_class WorkerW
    If DllCall("IsWindowVisible", UInt, HWND)
        WinHide, ahk_id %HWND%
    Else
        WinShow, ahk_id %HWND%
Return